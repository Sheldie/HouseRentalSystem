package com.dhu.controller;

import com.dhu.pojo.House;
import com.dhu.pojo.Order;
import com.dhu.pojo.User;
import com.dhu.service.HouseService;
import com.dhu.service.OrderService;
import com.dhu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("")
public class OrderController {
    @Autowired
    OrderService orderService;
    @Autowired
    HouseService houseService;

//    @RequestMapping("listOrderByBuyer")
//    public ModelAndView listOrder(User user) {
//        ModelAndView mav = new ModelAndView();
//        List<Order> os = orderService.listOrderByBuyer(user);
//        mav.addObject("os", os);
//        mav.setViewName("listOrder");
//        return mav;
//    }

    @RequestMapping("listOrder")
    public ModelAndView listOrder() {
        ModelAndView mav = new ModelAndView();
        List<Order> cso = orderService.listOrder();
        // 放入转发参数
        mav.addObject("cso", cso);
        // 放入jsp路径
        mav.setViewName("listOrder");
        return mav;
    }

    @RequestMapping("listOrderU")
    public ModelAndView listOrderU(Order order) {
        ModelAndView mav = new ModelAndView();
        List<Order> cso = orderService.listOrderU(order);
        // 放入转发参数
        mav.addObject("cso", cso);
        // 放入jsp路径
        mav.setViewName("listOrder");
        return mav;
    }

    @RequestMapping("addOrder")
    public String addOrder(Order order,House house){
        houseService.editHouse(house);
        orderService.addOrder(order);
        return "index";
    }
}
