package com.dhu.service.impl;

import com.dhu.mapper.HouseMapper;
import com.dhu.pojo.House;
import com.dhu.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HouseServiceImpl implements HouseService {
    @Autowired
    HouseMapper houseMapper;

    @Override
    public void addHouse(House house){
        houseMapper.addHouse(house);
    }

    public List<House> listHouse(House house){
        return houseMapper.listHouse(house);
    }

    public List<House> detailHouse(House house){
        return houseMapper.detailHouse(house);
    }

    @Override
    public void editHouse(House house) {
        houseMapper.editHouse(house);
    }

    @Override
    public int findSH() {
        return houseMapper.findSH();
    }

//    @Override
//    public List<House> listHouseByAreaBelow50() {
//        return houseMapper.listHouseByAreaBelow50();
//    }
}
