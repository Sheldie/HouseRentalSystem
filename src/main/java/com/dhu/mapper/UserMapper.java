package com.dhu.mapper;
import com.dhu.pojo.User;

import java.util.HashMap;
import java.util.List;

public interface UserMapper {
    public void addUser(User user);
    public User findUserByName(String username);
    public void updateUser(User user);
    public int findMaleUser();
    public int findFemaleUser();
    public List<HashMap> findUserByArea();
    public User findWithLoginAndPassword(String username,String password);
}
