package com.ljy.travel.services;

import com.ljy.travel.model.AdminUser;


import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/28 20:49
 */

public interface AdminUserService {
    /**
     * 分页查找所有管理员
     * @return
     */
    public List<AdminUser> findAll();

    /**
     * 更新user数据
     */
    public void updateUser(AdminUser user);

    /**
     * 根据id查找user
     * @param id
     * @return
     */
    public AdminUser findById(String id);

    /**
     * 根据uid删除user信息
     * @param id
     */
    public void deleteUserById(String id);

    /**
     * 保存user信息
     * @param user
     */
    public void saveUser(AdminUser user);
}
