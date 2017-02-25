package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.member.entity.Member;
import com.zjy.losonkei.modules.member.entity.MemberAccount;
import com.zjy.losonkei.modules.member.entity.MemberAddress;
import com.zjy.losonkei.modules.member.entity.MemberNote;
import com.zjy.losonkei.modules.member.service.*;
import com.zjy.losonkei.modules.member.utils.MemberUtils;
import com.zjy.losonkei.modules.sys.security.Principal;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Administrator on 2017/2/5.
 * 会员中心
 */
@Controller
@RequestMapping(value="${frontPath}/")
public class MemberCenterController extends BaseController {

    @Autowired
    private MemberService memberService;
    @Autowired
    private MemberDetailsService memberDetailsService;
    @Autowired
    private MemberAccountService memberAccountService;
    @Autowired
    private MemberNoteService memberNoteService;

    @ModelAttribute
    public Member get() {
        Principal principal = (Principal) SecurityUtils.getSubject().getPrincipal();
        String id = principal.getId();
        Member entity = null;
        if (StringUtils.isNotBlank(id)){
            entity = memberService.get(id);
            entity.setMemberDetails(memberDetailsService.get(id));
        }
        if (entity == null){
            entity = new Member();
        }
        return entity;
    }

    @RequestMapping("home")
    public String home(Member member){
        return "modules/front/member/home";
    }

    @RequestMapping("home/saveBasic")
    public String saveBasic(Member member){
        memberService.save(member);
        memberDetailsService.save(member.getMemberDetails());
        return "redirect:"+ Global.getFrontPath()+"/home";
    }

    @RequestMapping("home/go/{type}pwd")
    public String goUpdatePwd(@PathVariable("type") String type, Model model){
        model.addAttribute("type",type);
        return "modules/front/member/updatePwd";
    }

    @ResponseBody
    @RequestMapping("home/save/{type}Pwd")
    public String updatePwd(@PathVariable("type") String type,Member member,String oldPwd,String newPwd){
        String oldPwdDB = StringUtils.isBlank(type) ? member.getMemberPwd() : member.getMemberPaypwd();
        if (MemberUtils.validatePassword(oldPwd,oldPwdDB)){
            if(StringUtils.isBlank(type)){
                member.setMemberPwd(MemberUtils.entryptPassword(newPwd));
                memberService.updatePwd(member);
            }else {
                member.setMemberPaypwd(MemberUtils.entryptPassword(newPwd));
                memberService.updatePayPwd(member);
            }
            return "ok";
        }else{
            return "error";
        }
    }

    @RequestMapping("account")
    public String account(HttpServletRequest request,String pageNum){
        MemberAccount memberAccount = new MemberAccount();
        memberAccount.setMemberId(UserUtils.getPrincipal().getId());

        int pageNo = 1;
        try {
            if(StringUtils.isNotBlank(pageNum)){
                pageNo = Integer.valueOf(pageNum);
                if (pageNo < 1){
                    pageNo = 1;
                }
            }
        }catch (Exception e){}
        Page<MemberAccount> page = new Page<MemberAccount>();
        page.setPageSize(20);
        page.setPageNo(pageNo);
        memberAccountService.findPage(page, memberAccount);
        request.setAttribute("page",page);
        return "modules/front/member/account";
    }

    @RequestMapping("notes")
    public String notes(String pageNum,HttpServletRequest request){
        MemberNote memberNote = new MemberNote();
        memberNote.setMember(new Member(UserUtils.getPrincipal().getId()));

        int pageNo = 1;
        try {
            if(StringUtils.isNotBlank(pageNum)){
                pageNo = Integer.valueOf(pageNum);
                if (pageNo < 1){
                    pageNo = 1;
                }
            }
        }catch (Exception e){}
        Page<MemberNote> page = new Page<MemberNote>();
        page.setPageSize(20);
        page.setPageNo(pageNo);

        memberNoteService.findPage(page, memberNote);
        request.setAttribute("page",page);
        return "modules/front/member/notes";
    }

}
