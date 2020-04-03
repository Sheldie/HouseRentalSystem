package com.dhu.service;

import com.dhu.pojo.House;

import java.util.List;

public interface HouseService {
    void addHouse(House house);
    List<House> listHouse(House house);
    List<House> detailHouse(House house);
    void editHouse(House house);
    int findSH();
//    List<House> listHouseByAreaBelow50();
}
