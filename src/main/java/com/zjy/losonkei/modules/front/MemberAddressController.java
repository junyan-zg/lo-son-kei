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
import com.zjy.losonkei.modules.sys.entity.CountryArea;
import com.zjy.losonkei.modules.sys.security.Principal;
import com.zjy.losonkei.modules.sys.service.CountryAreaService;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/2/5.
 * 会员中心
 */
@Controller
@RequestMapping(value="${frontPath}/")
public class MemberAddressController extends BaseController {

    @Autowired
    private MemberService memberService;
    @Autowired
    private MemberAddressService memberAddressService;
    @Autowired
    private CountryAreaService countryAreaService;

    @RequestMapping("address")
    public String viewAddress(Model model){
        String memberId = UserUtils.getPrincipal().getId();
        MemberAddress memberAddress = new MemberAddress();
        memberAddress.setMemberId(memberId);
        List<MemberAddress> memberAddressList = memberAddressService.findList(memberAddress);
        model.addAttribute("memberAddressList",memberAddressList);
        return "modules/front/member/address";
    }

    @RequestMapping("address/edit")
    public String editAddress(Model model,MemberAddress memberAddress){
        //String memberId = UserUtils.getPrincipal().getId();
        if (StringUtils.isNotBlank(memberAddress.getId())){
            memberAddress = memberAddressService.get(memberAddress);
        }
        List<CountryArea> provinceList = countryAreaService.findProvinceList();
        model.addAttribute("provinceList",provinceList);

        String provinceId = memberAddress != null && memberAddress.getProvince() != null && StringUtils.isNotBlank(memberAddress.getProvince().getId()) ? memberAddress.getProvince().getId() : provinceList.get(0).getId();
        List<CountryArea> cityList = countryAreaService.findCityList(provinceId);
        model.addAttribute("cityList",cityList);

        String cityId = memberAddress != null && memberAddress.getCity() != null && StringUtils.isNotBlank(memberAddress.getCity().getId()) ? memberAddress.getCity().getId() : cityList.get(0).getId();
        List<CountryArea> areaList = countryAreaService.findAreaList(cityId);
        model.addAttribute("areaList",areaList);

        model.addAttribute("memberAddress",memberAddress);

        return "modules/front/member/addressEdit";
    }

    @RequestMapping("address/default")
    public String setDefaultAddress(@RequestParam("id")String addressId){
        MemberAddress memberAddress = memberAddressService.get(addressId);
        if (memberAddress != null) {
            String memberId = UserUtils.getPrincipal().getId();
            memberAddress = new MemberAddress();
            memberAddress.setMemberId(memberId);
            List<MemberAddress> memberAddressList = memberAddressService.findList(memberAddress);

            for (MemberAddress address : memberAddressList){
                if (address.getId().equals(addressId)){
                    address.setDefaultFlag("1");
                }else{
                    address.setDefaultFlag("0");
                }
                memberAddressService.save(address);
            }
        }
        return "redirect:"+Global.getFrontPath()+"/address";
    }

    @RequestMapping("address/del")
    public String delAddress(@RequestParam("id")String addressId){
        MemberAddress address = memberAddressService.get(addressId);
        if (address != null){

            memberAddressService.delete(address);

            if ("1".equals(address.getDefaultFlag())){  //删除一个默认地址
                String memberId = UserUtils.getPrincipal().getId();
                MemberAddress memberAddress = new MemberAddress();
                memberAddress.setMemberId(memberId);
                List<MemberAddress> memberAddressList = memberAddressService.findList(memberAddress);
                if (memberAddressList != null && !memberAddressList.isEmpty()){
                    address = memberAddressList.get(0);
                    address.setDefaultFlag("1");
                    memberAddressService.save(address);
                }
            }
        }
        return "redirect:"+Global.getFrontPath()+"/address";
    }

    @RequestMapping("address/save")
    public String saveAddress(MemberAddress memberAddress){
        String memberId = UserUtils.getPrincipal().getId();
        if (StringUtils.isNotBlank(memberAddress.getId())){
            MemberAddress addressDB = memberAddressService.get(memberAddress.getId());
            if (addressDB != null){
                memberAddress.setDefaultFlag(addressDB.getDefaultFlag());
            }else{
                memberAddress.setId(null);
            }
        }
        if (StringUtils.isBlank(memberAddress.getId())){    //新纪录，查询db有无，无则设默认
            MemberAddress condition = new MemberAddress();
            condition.setMemberId(memberId);
            List<MemberAddress> memberAddressList = memberAddressService.findList(condition);
            if (memberAddressList != null && !memberAddressList.isEmpty()){
                memberAddress.setDefaultFlag("0");
            }else{
                memberAddress.setDefaultFlag("1");
            }
        }
        memberAddress.setMemberId(memberId);
        memberAddressService.save(memberAddress);
        return "redirect:"+Global.getFrontPath()+"/address";
    }

    @RequestMapping("/areaList")
    public @ResponseBody List<Map<String,String>> getAreaList(String id){
        List<Map<String,String>> list = new ArrayList<Map<String,String>>();
        List<CountryArea> areaList = countryAreaService.findAreaList(id);
        for(CountryArea a : areaList){
            Map<String,String> map = new LinkedHashMap<String,String>();
            map.put("id",a.getId());
            map.put("name",a.getName());
            list.add(map);
        }
        return list;
    }

    @RequestMapping("/cityList")
    public @ResponseBody List<Map<String,String>> getCityList(String id){
        List<Map<String,String>> list = new ArrayList<Map<String,String>>();
        List<CountryArea> cityList = countryAreaService.findCityList(id);
        for(CountryArea a : cityList){
            Map<String,String> map = new LinkedHashMap<String,String>();
            map.put("id",a.getId());
            map.put("name",a.getName());
            list.add(map);
        }
        return list;
    }
}
