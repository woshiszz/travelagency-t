package com.ljy.travel.services.impl;

import com.ljy.travel.dao.TravellerDao;
import com.ljy.travel.model.Traveller;
import com.ljy.travel.services.TravellerService;
import com.ljy.travel.utils.InfoJudge;
import com.ljy.travel.utils.UuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/5 18:46
 */
@Service
@Transactional
public class TravellerServiceImpl implements TravellerService {
    @Autowired
    private TravellerDao travellerDao;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    @Override
    public List<Traveller> findAllTraveller() {
        return travellerDao.findAllTraveller();
    }

    @Override
    public Traveller findTravellerById(String uid) {
        return travellerDao.findTravellerById(uid);
    }

    @Override
    public Traveller findTravellerByUsername(String username) {
        return null;
    }

    @Override
    public void saveTraveller(Traveller traveller) {
        traveller.setSex(InfoJudge.getSex(traveller.getSex()));
        traveller.setCode(UuidUtil.getUuid());
        traveller.setPassword(bCryptPasswordEncoder.encode(traveller.getPassword()));
        travellerDao.saveTraveller(traveller);
    }

    @Override
    public void deleteTraveller(String uid) {
        travellerDao.deleteTraveller(uid);
    }

    @Override
    public void updatTraveller(Traveller traveller) {
        traveller.setSex(InfoJudge.getSex(traveller.getSex()));
        travellerDao.updataTraveller(traveller);
    }
}
