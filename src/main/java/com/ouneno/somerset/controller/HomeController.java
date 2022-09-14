package com.ouneno.somerset.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ouneno.somerset.service.user.Impl.UserService;

@Controller
@RequestMapping
// HomeController : 가장 기본 메인페이지 실행
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	//메인페이지 실행
	@RequestMapping("/") // RequestMapping이 중복되면 안된다고 들었으나, 확인한번 해볼 것
	public String main() throws Exception {
		return "main";
	}	
	
}