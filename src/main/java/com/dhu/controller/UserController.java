package com.dhu.controller;

import com.dhu.pojo.User;
import com.dhu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;


@Controller
@RequestMapping("")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("login")
    public String Login(){
        return "login";
    }

    //To Register Page
    @RequestMapping("register")
    public String Register() {
        return "register";
    }

    @RequestMapping("addUser")
    public ModelAndView addUser(User user, ModelAndView mv) {
        boolean flag = false;
        System.out.println(user.getUsername());
//        flag = userService.register(user.getUsername(), user.getPassword());
        flag = userService.register(user);
        if(flag){
            mv.addObject("message", "注册成功！请登录");
            mv.setViewName("login");
//            mv.setView(new RedirectView("login"));
        }
        else{
            mv.addObject("message", "用户名已经存在！");
            mv.setViewName("register");
        }
        return mv;
    }

    @RequestMapping("isLogin")
    public String isLogin() {
        return "isLogin";
    }

    @RequestMapping("userInfo")
    public ModelAndView userInfo(User user,ModelAndView mv){
        user = userService.userInfo(user.getUsername());
        mv.addObject("user", user);
        mv.setViewName("userInfo");
        return mv;
    }

    @RequestMapping("userLogin")
    public ModelAndView login(User user, ModelAndView mv, HttpSession session){
        user = userService.checkLogin(user.getUsername(), user.getPassword());
        if(user!=null){
            session.setAttribute("user",user);
            mv.setView(new RedirectView("index"));
        }
        else{
            mv.addObject("message", "登录名或密码错误，请重新输入!");
            mv.setViewName("login");
        }
        return mv;
    }

    @RequestMapping("updateUser")
    public ModelAndView updateUser(User user, ModelAndView mv){
        userService.updateUser(user);
        mv.addObject("message", "用户信息修改成功！");
        mv.setViewName("userInfo");
        return mv;
    }

    @RequestMapping("logout")
    public ModelAndView logout(HttpSession session){
        ModelAndView mv = new ModelAndView();
        session.removeAttribute("user");
        mv.setView(new RedirectView("index"));
        return mv;
    }

    @RequestMapping("userManage")
    public ModelAndView userManage(){
        ModelAndView mv = new ModelAndView();
        int male = userService.findMaleUser();
        int female = userService.findFemaleUser();
        List<HashMap> map = userService.findUserByArea();
//        String str = userService.UserArea(map);
        mv.addObject("male",male);
        mv.addObject("female",female);
//        mv.addObject("str",str);
        mv.setViewName("userManage");
        return mv;
    }


//    @RequestMapping("userLogin")
//    public String login(User user,HttpServletRequest request){
//        user = userService.checkLogin(user.getUsername(), user.getPassword());
//        if(user!=null){
//            request.setAttribute("user",user);
//            return "isLogin";
//        }
//        return "login";
//    }
//
//    @RequestMapping(value = "checkUser.action" , method = {RequestMethod.POST})
//    public void checkUser(HttpServletRequest request, HttpServletResponse response, HttpSession session)throws ServletException, IOException {
//        PrintWriter out = response.getWriter();
//        String name = request.getParameter("name");
//        if (name.trim().equals("")) {
//            out.print(2);// 2是不能为空
//        } else {
//            User user = userService.checkUser(name);
//            if (user != null) {
//                out.print(1);// 1用户名已存在F
//            } else {
//                out.print(3);// 用户名可以用
//            }
//        }
//    }

//    @RequestMapping("userLogin")
//    public ModelAndView userLogin(String username,String password,){
//        return "login";
//    }
//
//    public ModelAndView login(String loginname, String password, ModelAndView mv, HttpSession session){
//        User user=userService.login(loginname, password);
//        if(user!=null){
//            //登录成功，将user对象设置到HttpSession作用范围域中
//            session.setAttribute("user", user);
//            //转发到main请求
//            mv.setView(new RedirectView("/smmbookapp/main"));
//        }else {
//            //登录失败，设置失败信息，并调转到登录页面
//
//            mv.addObject("message","登录名和密码错误，请重新输入");
//            mv.setViewName("loginForm");
//        }
//        return mv;
//    }

}