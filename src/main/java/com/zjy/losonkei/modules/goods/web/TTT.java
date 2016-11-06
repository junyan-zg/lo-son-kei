package com.zjy.losonkei.modules.goods.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Administrator on 2016/10/25.
 */
@Controller
public class TTT {

    @RequestMapping("/t1")
    public void t1(ArrayList<String> aa){
        System.out.println(aa);
    }

    @RequestMapping("/t2")
    public void t2(ArrayList<B> c){
        System.out.println(c);
    }
    @RequestMapping("/t3")
    public void t3(B[] c){
        System.out.println(Arrays.asList(c));
    }


    @RequestMapping("/t4")
    public void t4(String[] c){
        System.out.println(Arrays.asList(c));
    }

    @RequestMapping("/t44")
    public void t4(String c){
        System.out.println(c);
    }

    @RequestMapping("/t5")
    public void t5(String[] c,String[] d){
        System.out.println(Arrays.asList(c));
        System.out.println(Arrays.asList(d));

    }
    @RequestMapping("/t6")
    public void t6(HttpServletRequest request){
        System.out.println(request.getParameterValues("parm").getClass());
        System.out.println(request.getParameter("parm"));
        System.out.println(request.getParameterValues("parm")[0]);
        System.out.println(request.getParameterValues("parm")[1]);
    }
}
class B{
    private String aa;
    private String bb;

    @Override
    public String toString() {
        return "aa:"+aa+"--bb:"+bb;
    }

    public void setAa(String aa) {
        this.aa = aa;
    }

    public void setBb(String bb) {
        this.bb = bb;
    }
}