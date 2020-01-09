package com.ljy.travel.services.impl;

import com.ljy.travel.dao.AdminRoleDao;
import com.ljy.travel.dao.AdminUserDao;
import com.ljy.travel.model.AdminRole;
import com.ljy.travel.model.AdminUser;
import com.ljy.travel.services.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/28 20:51
 */
@Service
@Transactional
public class AdminUserServiceImpl implements AdminUserService {
    @Autowired
    private AdminUserDao userDao;
    @Autowired
    private AdminRoleDao roleDao;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public List<AdminUser> findAll() {
        List<AdminUser> all = userDao.findAll();
        for (AdminUser adminUser : all) {
            AdminRole role = roleDao.findRoleByUserId(adminUser.getId());
            adminUser.setRole(role);
        }
        return all;
    }

    @Override
    public void updateUser(AdminUser user) {
        userDao.updateUser(user);
        roleDao.updateRole(user.getId(),user.getRole());

    }

    @Override
    public AdminUser findById(String id) {
        AdminUser user = userDao.findById(id);
        user.setPassword("");
        return user;
    }

    @Override
    public void deleteUserById(String id) {
        roleDao.deleteUserRoleByUid(id);
        userDao.deleteUserById(id);
    }

    @Override
    public void saveUser(AdminUser user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userDao.saveUser(user);
        roleDao.saveUserRoleByUsername(user.getRole().getRoleName(), user.getUsername());

    }
}
