package com.dhu.controller;

import com.dhu.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    private static final String[] IGNORE_URI = {"/index", "/login" , "userLogin" , "/register" , "addUser"};

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        boolean flag = false;
        String servletPath = httpServletRequest.getServletPath();
        for (String s : IGNORE_URI) {
            if (servletPath.contains(s)) {
                flag = true;
                break;
            }
        }
        if (!flag) {
            User user = (User) httpServletRequest.getSession().getAttribute("user");
            if (user == null) {
                httpServletRequest.setAttribute("message", "请先登录再访问网站！");
                httpServletRequest.getRequestDispatcher("login").forward(httpServletRequest, httpServletResponse);
                return flag;
            } else {
                flag = true;
            }
        }
        return flag;
//        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
