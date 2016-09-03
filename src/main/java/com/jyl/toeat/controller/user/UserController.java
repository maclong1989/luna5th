package com.jyl.toeat.controller.user;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jyl.toeat.dao.pojo.User;
import com.jyl.toeat.service.user.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserService userService;

	@RequestMapping(value = "/userName/{userId}", method = RequestMethod.GET)
	public String get(@PathVariable String userId, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		if (StringUtils.isEmpty(userId)) {
			return "error";
		}

		User user = userService.getUserById(Integer.valueOf(userId));

		request.setAttribute("userId", userId);
		request.setAttribute("user", user);

		return "user/userName";
	}

}
