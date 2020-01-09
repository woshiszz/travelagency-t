package com.ljy.travel.services;

import com.ljy.travel.model.Commodity;


import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/7 16:42
 */
public interface CommodityService {
    /**
     * 查找全部商品
     * @return
     */

    public List<Commodity> findAll();

    /**
     * 保存商品
     * @param commodity
     */

    public void saveCommodity(Commodity commodity);

    /**
     * 根据id删除商品
     * @param id
     */

    public void deleteCommodityById(String id);

    /**
     * 修改商品信息
     * @param commodity
     */

    public void updateCommodity(Commodity commodity);

    /**
     * 根据id查找商品
     * @param id
     * @return
     */

    public Commodity findCommodityById(String id);

    /**
     * 查找商品数量
     * @return
     */

    public int findCount();
}
