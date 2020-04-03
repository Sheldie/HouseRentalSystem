package com.dhu.service;

import com.dhu.pojo.User;

import java.util.HashMap;
import java.util.List;

public interface UserService {
//    void register(User user);
//    boolean register(String username, String password);
    boolean register(User user);
    User checkLogin(String username, String password);
    void updateUser(User user);
    User userInfo(String username);
    int findMaleUser();
    int findFemaleUser();
    List<HashMap> findUserByArea();
//    String UserArea(List<HashMap> map);
//    User checkUser(String name);
}
