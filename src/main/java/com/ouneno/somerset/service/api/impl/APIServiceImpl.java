package com.ouneno.somerset.service.api.impl;
 
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ouneno.somerset.service.api.APIDao;

@Service
@Component
public class APIServiceImpl implements APIService{

	@Autowired
	private APIDao apiDao;
	
	///applications.properties 에서 value annotation을 통해서 값을 받아온다.
//	@Value("${OAuth2.google.url}")
//	private String GOOGLE_SNS_LOGIN_URL;
//	
//	@Value("${OAuth2.google.client-id}")
//	private String GOOGLE_SNS_CLIENT_ID;
//
//	@Value("${OAuth2.google.callback-url}")
//	private String GOOGLE_SNS_CALLBACK_URL;
//
//	@Value("${OAuth2.google.scope}")
//	private String GOOGLE_DATA_ACCESS_SCOPE;
//	
//	@Value("${api-key}")
//	private String apiKey;
	
	private String GOOGLE_SNS_LOGIN_URL = "https://accounts.google.com/o/oauth2/v2/auth";
	private String GOOGLE_SNS_CLIENT_ID = "137777584383-hm25lph1vr3erm1jqv9rgb8cmmjl16j9.apps.googleusercontent.com";
	private String GOOGLE_SNS_CALLBACK_URL = "http://localhost:8080/account/auth/GOOGLE";
	private String GOOGLE_DATA_ACCESS_SCOPE = "https://www.googleapis.com/auth/userinfo.email";


	@Override
	public String getOauthRedirectURL() {
		
		Map<String, Object> params = new HashMap<>();
		
        params.put("scope",GOOGLE_DATA_ACCESS_SCOPE);
        params.put("response_type","code");
        params.put("client_id",GOOGLE_SNS_CLIENT_ID);
        params.put("redirect_uri",GOOGLE_SNS_CALLBACK_URL);
        
        //parameter를 형식에 맞춰 구성해주는 함수
		String parameterString = params.entrySet().stream().map(x -> x.getKey() + "=" + x.getValue())
								.collect(Collectors.joining("&"));
	
		System.out.println("parameterString : "+parameterString);
        
		String redirectURL = GOOGLE_SNS_LOGIN_URL+"?"+parameterString;
        
		System.out.println("redirectURL = " + redirectURL);

        return redirectURL;
        /*
         * https://accounts.google.com/o/oauth2/v2/auth?scope=profile&response_type=code
         * &client_id="할당받은 id"&redirect_uri="access token 처리")
         * 로 Redirect URL을 생성하는 로직을 구성
         */
	}	

}
