package com.jyl.toeat.controller.common;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jyl.toeat.service.user.UserService;

@Controller
@RequestMapping("/learnning1")
public class LearnningController {

	@Resource
	private UserService userService;

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String get(HttpServletRequest request, HttpServletResponse response) throws IOException {

		return "learnning/test";
	}

}
