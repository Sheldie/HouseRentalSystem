package com.dhu.service.impl;

import com.dhu.mapper.OrderMapper;
import com.dhu.pojo.Order;
import com.dhu.pojo.User;
import com.dhu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderMapper orderMapper;

//    @Override
//    public List<Order> listOrderByBuyer(User user) {
//        return orderMapper.listOrderByBuyer(user);
//    }

    @Override
    public List<Order> listOrder() {
        return orderMapper.listOrder();
    }

    @Override
    public List<Order> listOrderU(Order order) {
        return orderMapper.listOrderU(order);
    }

    @Override
    public void addOrder(Order order) {

        orderMapper.addOrder(order);

    }
}
