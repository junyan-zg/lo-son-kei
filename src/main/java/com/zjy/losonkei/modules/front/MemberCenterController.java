package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.member.entity.Member;
import com.zjy.losonkei.modules.member.entity.MemberAddress;
import com.zjy.losonkei.modules.member.service.MemberAddressService;
import com.zjy.losonkei.modules.member.service.MemberDetailsService;
import com.zjy.losonkei.modules.member.service.MemberService;
import com.zjy.losonkei.modules.member.utils.MemberUtils;
import com.zjy.losonkei.modules.sys.security.Principal;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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


}
