package com.dhu.service;

import com.dhu.pojo.Order;
import com.dhu.pojo.User;

import java.util.List;

public interface OrderService {
//    List<Order> listOrderByBuyer(User user);
    List<Order> listOrder();
    List<Order> listOrderU(Order order);
    void addOrder(Order order);
}
