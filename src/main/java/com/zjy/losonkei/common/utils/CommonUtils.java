package com.zjy.losonkei.common.utils;

import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

/**
 * Created by zjy on 2017/1/6.
 */
public class CommonUtils {

    public static void sessionToRequset(HttpSession session, Model model, String var){
        Object attribute = session.getAttribute(var);
        if (attribute != null){
            model.addAttribute(var,attribute);
            session.removeAttribute(var);
        }
    }
}
