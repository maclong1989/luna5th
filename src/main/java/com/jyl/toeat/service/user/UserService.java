package com.jyl.toeat.service.user;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jyl.toeat.dao.mapper.UserMapper;
import com.jyl.toeat.dao.pojo.User;

@Service
public class UserService {

	@Resource
	private UserMapper userMapper;

	public User getUserById(Integer userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

}
