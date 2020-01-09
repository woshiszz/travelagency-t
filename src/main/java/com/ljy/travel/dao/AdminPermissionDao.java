package com.ljy.travel.dao;

import com.ljy.travel.model.AdminPermission;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/30 16:29
 */
@Mapper
public interface AdminPermissionDao {
    /**
     * 查找全部权限信息
     * @return
     */
    @Select("select * from t_permission")
    public List<AdminPermission> findAll();

    /**
     * 根据角色id查找权限信息
     * @param id
     * @return
     */
    @Select("select * from t_permission where id in(select perid from role_permission where rid=#{id})")
    public List<AdminPermission> findPermissionByRoleId(String id);
}
