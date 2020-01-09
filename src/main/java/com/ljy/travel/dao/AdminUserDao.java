package com.ljy.travel.dao;

import com.ljy.travel.model.AdminRole;
import com.ljy.travel.model.AdminUser;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/28 20:29
 */
@Mapper
public interface AdminUserDao {
    /**
     * 查找所有管理员
     * @return
     */
    @Select("select * from t_admin_users")
    public List<AdminUser> findAll();

    /**
     * 根据id查找管理员
     * @return
     */
    @Select("select * from t_admin_users where id=#{id} ")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "username", column = "username"),
            @Result(property = "password", column = "password"),
            @Result(property = "phoneNum", column = "phoneNum"),
            @Result(property = "status", column = "status"),
            @Result(property = "name", column = "name"),
            @Result(property = "sex", column = "sex"),
            @Result(property = "role", column = "id" ,javaType = AdminRole.class,
            one = @One( select = "com.ljy.travel.dao.AdminRoleDao.findRoleByUserId")),
    })
    public AdminUser findById(String id);

    /**
     * 更新user信息
     * @param user
     */
    @Update("update t_admin_users set username=#{username}," +
            "phoneNum=#{phoneNum},status=#{status},sex=#{sex},name=#{name} where id=#{id}"  )
    public void updateUser(AdminUser user);

    /**
     * 根据id删除user信息
     * @param id
     */
    @Delete("delete from t_admin_users where id=#{id} ")
    public void deleteUserById(String id);

    /**
     * 根据username查询userid
     * @param username
     * @return
     */
    @Select("select id from t_admin_users where username=#{username} ")
    public String findUserIdByUsername(String username);

    /**
     * 保存用户
     * @param user
     */
    @Insert("insert into t_admin_users(username,password,phoneNum,status,sex,name)values(#{username},#{password}," +
            "#{phoneNum},#{status},#{sex},#{name}) ")
    public void saveUser(AdminUser user);

    /**
     * 根据用户名查找用户信息
     * @param username
     * @return
     */
    @Select("select * from t_admin_users where username=#{username}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "username", column = "username"),
            @Result(property = "password", column = "password"),
            @Result(property = "phoneNum", column = "phoneNum"),
            @Result(property = "status", column = "status"),
            @Result(property = "name", column = "name"),
            @Result(property = "sex", column = "sex"),
            @Result(property = "role", column = "id" ,javaType = AdminRole.class,
                    one = @One( select = "com.ljy.travel.dao.AdminRoleDao.findRoleByUserId")),
    })
    public AdminUser findByUsername(String username);

    /**
     * 查管理员数量
     * @return
     */
    @Select("select count(1) from t_admin_users")
    public int findCount();
}
