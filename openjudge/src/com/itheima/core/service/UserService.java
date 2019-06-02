package com.itheima.core.service;
import com.itheima.core.po.User;
import org.apache.ibatis.annotations.Param;

/**
 * 用户Service层接口
 */
public interface UserService {
	// 通过账号和密码查询用户
	public User findUser(String username, String password);
	public int registerUser(String register_username, String register_password, String register_email);
}
