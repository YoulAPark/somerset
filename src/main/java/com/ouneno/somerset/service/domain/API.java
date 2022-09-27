package com.ouneno.somerset.service.domain;

public class API {
	
	// 소셜 로그인 타입 구별을 위해 enum 형식을 constant로 만들었다
	// Enum이 사용되는 곳 : 사용하는 인스턴스 수가 정해져 있고, 관련되어 처리 할 수 있는 상수값이 여러개일때
	public enum SocialLoginType {
			GOOGLE
		,	KAKAO
		,	NAVER
	}

}
