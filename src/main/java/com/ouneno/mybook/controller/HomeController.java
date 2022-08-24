package com.ouneno.mybook.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ouneno.mybook.service.user.Impl.UserService;

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
		
	// 연습용(GET방식)
	/*
	 *  localhost:8080/get 실행시 STS콘솔창에 "enter"가 출력되며,
	 *  웹페이지 상으로 "Hello Spring Boot"가 출력된다.
	 */
	@RequestMapping(value = "/get", method=RequestMethod.GET)
	@ResponseBody
	public String get(HttpServletRequest request) {
		System.out.println("request : "+request);
		System.out.println("STS 콘솔출력 : HomeController의 get()메서드 실행");
		return "웹페이지 출력 : HomeController의 get()메서드 실행";
	}
	
}