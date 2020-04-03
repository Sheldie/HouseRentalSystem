package com.dhu.service.impl;

import com.dhu.mapper.UserMapper;
import com.dhu.pojo.User;
import com.dhu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

//    @Override
//    public void register(User user) {
//        userMapper.addUser(user);
//    }

//    @Override
//    public boolean register(String username, String password) {
//        User user = userMapper.findUserByName(username);
//        if (user != null) {
//            return false;
//        }
//        userMapper.addUser(user);
//        return true;
//    }

    @Override
    public boolean register(User user) {
        User temp = userMapper.findUserByName(user.getUsername());
        if (temp != null) {
            return false;
        }
        userMapper.addUser(user);
        return true;
    }

    @Override
    public User checkLogin(String username, String password) {
        User user = userMapper.findUserByName(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    @Override
    public User userInfo(String username) {
        return userMapper.findUserByName(username);
    }

    @Override
    public int findMaleUser() {
        return userMapper.findMaleUser();
    }

    @Override
    public int findFemaleUser() {
        return userMapper.findFemaleUser();
    }

    @Override
    public List<HashMap> findUserByArea() {
        return userMapper.findUserByArea();
    }

//    @Override
//    public String UserArea(List<HashMap> map) {
//        StringBuilder sb = new StringBuilder();
//        for(HashMap mp : map){
//            for(Object str : mp.keySet()){
//                for(Object : str)
//            }
//        }
//        return sb.toString();
//    }
}
