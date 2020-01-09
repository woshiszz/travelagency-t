package com.ljy.travel.services.impl;

import com.ljy.travel.dao.AdminUserDao;
import com.ljy.travel.model.AdminRole;
import com.ljy.travel.model.AdminUser;
import com.ljy.travel.services.LoginServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/3 0:31
 */
@Service
@Transactional
public class LoginServicesImpl implements LoginServices {
    @Autowired
    private AdminUserDao userDao;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<AdminRole> roleList = new ArrayList<AdminRole>();
        String status = "开启";
        AdminUser userInfo = userDao.findByUsername(username);
        if ("超级管理员".equals(userInfo.getRole().getRoleName())) {
            userInfo.getRole().setRoleName("ROLE_ADMIN");
        }
        if (userInfo != null) {
            roleList.add(userInfo.getRole());
            User user = new User(userInfo.getUsername(), userInfo.getPassword(),
                    status.equals(userInfo.getStatus()) ? true : false, true, true, true, getAuthority(roleList));
            return user;
        } else {
            throw  new UsernameNotFoundException("找不到该用户！");
        }

    }
    public List<SimpleGrantedAuthority> getAuthority(List<AdminRole> roles) {
        List<SimpleGrantedAuthority> list = new ArrayList<>();
        for (AdminRole role : roles) {
            list.add(new SimpleGrantedAuthority(role.getRoleName()));
        }
        return list;
    }
}
