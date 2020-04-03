package com.dhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("")
public class PageController {
    @Autowired
//    CategoryService categoryService;

    @RequestMapping("")
    public String pageIndex(){
        return "index";
    }

    @RequestMapping("index")
    public String Page() {
        return "index";
    }
}