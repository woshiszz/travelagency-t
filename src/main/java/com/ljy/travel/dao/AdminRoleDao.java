package com.ljy.travel.dao;

import com.ljy.travel.model.AdminRole;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/30 16:12
 */
@Mapper
public interface AdminRoleDao {
    /**
     * 查找所有角色
     * @return
     */
    @Select("select * from t_role")
    public List<AdminRole> findAll();

    /**
     * 根据id查找角色与权限
     * @param userId
     * @return
     */
    @Select("select * from t_role where id in (select rid from users_role where uid=#{userId})")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "roleName", column = "roleName"),
            @Result(property = "roleDesc", column = "roleDesc"),
            @Result(property = "permissions", column = "id",
            javaType = java.util.List.class,
            many = @Many(select = "com.ljy.travel.dao.AdminPermissionDao.findPermissionByRoleId")),
})
    public AdminRole findRoleByUserId(String userId);

    /**
     * 根据uid,rolename更新user与role关联表users_role
     * @param userId
     * @param role
     */
    @Update("update users_role set rid=(select id from t_role where roleName=#{role.roleName}) where uid=#{userId} ")
    public void updateRole(String userId,AdminRole role);

    /**
     * 根据uid删除user与role关联表users_role信息
     * @param id
     */
    @Delete("delete from users_role where uid=#{id}")
    public void deleteUserRoleByUid(String id);

    @Insert("insert into users_role(uid,rid)values((select id from t_admin_users where username=#{username}),(select id from t_role where roleName=#{roleName}))")
    public void saveUserRoleByUsername(String roleName,String username);
}
