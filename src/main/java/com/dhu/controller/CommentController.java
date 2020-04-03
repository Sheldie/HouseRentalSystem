package com.dhu.controller;

import com.dhu.pojo.Comment;
import com.dhu.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class CommentController {
    @Autowired
    CommentService commentService;

//    @RequestMapping("listComment")
//    public ModelAndView listComment(House house) {
//        ModelAndView mav = new ModelAndView();
//        List<Comment> cl = commentService.listComment(house);
//        mav.addObject("cl", cl);
//        mav.setViewName("detailHouse");
//        return mav;
//    }

    @RequestMapping("addComment")
    public ModelAndView addComment(Comment comment){
        ModelAndView mav = new ModelAndView();
        commentService.addComment(comment);
        mav.setViewName("index");
//        return "redirect:/detailHouse";
        return mav;
    }
}
