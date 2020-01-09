package com.ljy.travel.services.impl;

import com.ljy.travel.dao.SysLogDao;
import com.ljy.travel.model.SysLog;
import com.ljy.travel.services.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/3 22:00
 */
@Service
@Transactional
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SysLogDao sysLogDao;
    @Override
    public void save(SysLog sysLog) {
        sysLogDao.save(sysLog);
    }

    @Override
    public List<SysLog> findAll() {
        return sysLogDao.findAll();
    }
}
