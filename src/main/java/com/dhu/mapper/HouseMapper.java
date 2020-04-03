package com.dhu.mapper;

import com.dhu.pojo.House;

import java.util.List;

public interface HouseMapper {
    public void addHouse(House house);
    List<House> listHouse(House house);
    List<House> detailHouse(House house);
    public void editHouse(House house);
    public int findSH();
}
