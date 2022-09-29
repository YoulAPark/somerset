package com.ouneno.somerset.service.api.impl;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ouneno.somerset.service.domain.API;

@Service
public class OAuthService {
	
	@Autowired
	private APIServiceImpl apiServiceImpl;
	private HttpServletResponse response;

	public void request(API.SocialLoginType socialLoginType) throws IOException {	
		
		String redirectURL;
		
		switch (socialLoginType) {
			
			case GOOGLE: {
				
				redirectURL = apiServiceImpl.getOauthRedirectURL();
				System.out.println("****** : "+redirectURL);
				
			} break;
			
			default : {
				throw new IllegalArgumentException("알 수 없는 소셜 로그인 형식입니다.");
			}
			
		}
	
		response.sendRedirect(redirectURL);	
	}

}
