package com.dhu.controller;

import com.dhu.pojo.Comment;
import com.dhu.pojo.House;
import com.dhu.service.CommentService;
import com.dhu.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("")
public class HouseController {
    @Autowired
    HouseService houseService;
    @Autowired
    CommentService commentService;

    @RequestMapping("listHouse")
    public ModelAndView listHouse(House house) {
        ModelAndView mav = new ModelAndView();
        List<House> cs = houseService.listHouse(house);
        mav.addObject("cs", cs);
        mav.setViewName("listHouse");
        return mav;
    }

    @RequestMapping("detailHouse")
    public ModelAndView detailHouse(House house) {
        ModelAndView mav = new ModelAndView();
        List<House> cs = houseService.detailHouse(house);
        List<Comment> cc = commentService.listComment(house);
        mav.addObject("cs", cs);
        mav.addObject("cc", cc);
        mav.setViewName("detailHouse");
        return mav;
    }


    @RequestMapping("addHouse")
    public String addHouse() {
        return "addHouse";
    }

    @RequestMapping("addInfo")
    public String add(House house){
        houseService.addHouse(house);
        return "redirect:/listHouse";
    }

    @RequestMapping("houseManage")
    public ModelAndView houseManage() {
        ModelAndView mv = new ModelAndView();
        int num = houseService.findSH();
        mv.addObject("num", num);
        mv.setViewName("houseManage");
        return mv;
    }
}


//package com.dhu.controller;
//
//import com.dhu.pojo.Comment;
//import com.dhu.pojo.House;
//import com.dhu.service.CommentService;
//import com.dhu.service.HouseService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import java.util.List;
//
//@Controller
//@RequestMapping("")
//public class HouseController {
//    @Autowired
//    HouseService houseService;
//    @Autowired
//    CommentService commentService;
//
//    @RequestMapping("listHouse")
//    public ModelAndView listHouse() {
//        ModelAndView mav = new ModelAndView();
//        List<House> cs = houseService.listHouse();
//        mav.addObject("cs", cs);
//        mav.setViewName("listHouse");
//        return mav;
//    }
//
//    @RequestMapping("addHouse")
//    public String addHouse(){
//        return "addHouse";
//    }
//
//    @RequestMapping("addInfo")
//    public String add(House house,Model model){
//        houseService.addHouse(house);
//        return "redirect:/listHouse";
//    }
//
//    @RequestMapping("detailHouse")
//    public ModelAndView detailHouse(House house) {
//        ModelAndView mav = new ModelAndView();
//        List<House> cs = houseService.detailHouse(house);
//        List<Comment> cc = commentService.listComment(house);
//        mav.addObject("cs", cs);
//        mav.addObject("cc", cc);
//        mav.setViewName("detailHouse");
//        return mav;
//    }
//}
