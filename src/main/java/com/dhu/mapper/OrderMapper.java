package com.dhu.mapper;

import com.dhu.pojo.Order;
import com.dhu.pojo.User;

import java.util.List;

public interface OrderMapper {
//    List<Order> listOrderByBuyer(User user);

    List<Order> listOrder();

    List<Order> listOrderU(Order user);

    void addOrder(Order order);
}
