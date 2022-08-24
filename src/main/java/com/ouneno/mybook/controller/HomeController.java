package com.ouneno.mybook.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
// HomeController : 가장 기본 메인페이지 실행
public class HomeController {
	
	// 메인페이지 실행
	@RequestMapping("/")
	public String main() {
		System.out.println("/main"); // localhost:8080 실행시 STS 콘솔창에 확인 됨
		return "/index";
	}
	
	// Test
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index() {
		System.out.println("Index page 호출");
		return "index";
	}
	// 연습용(GET방식)
	/*
	 *  localhost:8080/get 실행시 STS콘솔창에 "enter"가 출력되며,
	 *  웹페이지 상으로 "Hello Spring Boot"가 출력된다.
	 */
//	@RequestMapping(value = "/get", method=RequestMethod.GET)
//	@ResponseBody
//	public String get(HttpServletRequest request) {
//		System.out.println("STS 콘솔출력 : HomeController의 get()메서드 실행");
//		return "웹페이지 출력 : HomeController의 get()메서드 실행";
//	}
	
}