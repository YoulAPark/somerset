package com.ouneno.somerset.service.api.impl;

// 각 소셜 로그인 클래스가 상속받아 사용할 수 있도록 interface로 APIService 생성함
public interface APIService {
	
	/*
	 * 각 소셜 로그인 클래스가 상속받아 사용할 수 있도록 String 타입의 RedirectURL이라는 변수를 생성했다
	 * 각 소셜 로그인 페이지로 Redirect 할 때 URL build함
	 * 사용자로부터 로그인 요청을 받아 소셜 로그인 서버 인증용 코드를 요청한다
	 */
	
	String getOauthRedirectURL();

}
