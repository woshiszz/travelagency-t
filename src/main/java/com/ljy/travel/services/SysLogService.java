package com.ljy.travel.services;

import com.ljy.travel.model.SysLog;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/3 21:59
 */
public interface SysLogService {
    /**
     * 保存日志信息
     * @param sysLog
     */
    public void save(SysLog sysLog);

    /**
     * 查询日志信息
     * @return
     */
    public List<SysLog> findAll();
}
