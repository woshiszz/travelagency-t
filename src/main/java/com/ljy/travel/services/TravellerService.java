package com.ljy.travel.services;

import com.ljy.travel.model.Traveller;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/5 18:43
 */
public interface TravellerService {
    /**
     * 查找所有旅客信息
     * @return
     */
    public List<Traveller> findAllTraveller();
    /**
     * 根据旅客id查找旅客
     * @param uid
     * @return
     */
    public Traveller findTravellerById(String uid);
    /**
     * 根据username查找旅客
     * @param username
     * @return
     */
    public Traveller findTravellerByUsername(String username);
    /**
     * 保存旅客信息
     * @param traveller
     */
    public void saveTraveller(Traveller traveller);
    /**
     * 删除旅客
     * @param uid
     */
    public void deleteTraveller(String uid);

    /**
     * 修改旅客信息
     * @param traveller
     */
    public void updatTraveller(Traveller traveller);





}
