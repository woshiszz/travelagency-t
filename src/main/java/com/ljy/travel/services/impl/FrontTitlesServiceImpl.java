package com.ljy.travel.services.impl;

import com.ljy.travel.dao.FrontTitlesDao;
import com.ljy.travel.model.FrontTitles;
import com.ljy.travel.services.FrontTitlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/26 15:13
 */
@Service
@Transactional
public class FrontTitlesServiceImpl implements FrontTitlesService {
    @Autowired
    private FrontTitlesDao frontTitlesDao;
    @Override
    public List<FrontTitles> findAll() {

        return frontTitlesDao.findAll();
    }
}
