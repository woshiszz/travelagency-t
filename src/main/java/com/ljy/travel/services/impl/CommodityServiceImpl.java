package com.ljy.travel.services.impl;

import com.ljy.travel.dao.CommodityDao;
import com.ljy.travel.model.Commodity;
import com.ljy.travel.services.CommodityService;
import com.ljy.travel.utils.UuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/7 16:44
 */
@Service
@Transactional
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    private CommodityDao commodityDao;
    @Override
    public List<Commodity> findAll() {
        return commodityDao.findAll();
    }

    @Override
    public void saveCommodity(Commodity commodity) {
        commodity.setId(UuidUtil.getUuid());
        commodityDao.saveCommodity(commodity);
    }

    @Override
    public void deleteCommodityById(String id) {
        commodityDao.deleteCommodityById(id);
    }

    @Override
    public void updateCommodity(Commodity commodity) {
        commodityDao.updateCommodity(commodity);
    }

    @Override
    public Commodity findCommodityById(String id) {

        return commodityDao.findCommodityById(id);
    }

    @Override
    public int findCount() {
        return commodityDao.findCount();
    }
}
