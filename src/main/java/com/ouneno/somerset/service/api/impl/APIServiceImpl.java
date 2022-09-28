package com.ouneno.somerset.service.api.impl;
 
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.google.api.client.util.Value;
import com.ouneno.somerset.service.api.APIDao;

@Component
@Service
public class APIServiceImpl implements APIService{

	@Autowired
	private APIDao apiDao;
	
	///applications.properties 에서 value annotation을 통해서 값을 받아온다.
	@Value("${spring.OAuth2.google.url}")
	private String GOOGLE_SNS_LOGIN_URL;
	
	@Value("${spring.OAuth2.google.client-id}")
	private String GOOGLE_SNS_CLIENT_ID;

	@Value("${spring.OAuth2.google.callback-url}")
	private String GOOGLE_SNS_CALLBACK_URL;

	@Value("${spring.OAuth2.google.scope}")
	private String GOOGLE_DATA_ACCESS_SCOPE;

	@Override
	public String getOauthRedirectURL() {
		
		System.out.println("GOOGLE_SNS_LOGIN_URL : "+GOOGLE_SNS_LOGIN_URL);
		System.out.println("GOOGLE_SNS_CLIENT_ID : "+GOOGLE_SNS_CLIENT_ID);
		System.out.println("GOOGLE_SNS_CALLBACK_URL : "+GOOGLE_SNS_CALLBACK_URL);
		System.out.println("GOOGLE_DATA_ACCESS_SCOPE : "+GOOGLE_DATA_ACCESS_SCOPE);
		
		Map<String, Object> params = new HashMap<>();
		
        params.put("scope",GOOGLE_DATA_ACCESS_SCOPE);
        params.put("response_type","code");
        params.put("client_id",GOOGLE_SNS_CLIENT_ID);
        params.put("redirect_uri",GOOGLE_SNS_CALLBACK_URL);
        
        //parameter를 형식에 맞춰 구성해주는 함수
        String parameterString=params.entrySet().stream()
                .map(x->x.getKey()+"="+x.getValue())
                .collect(Collectors.joining("&"));
        String redirectURL=GOOGLE_SNS_LOGIN_URL+"?"+parameterString;
        System.out.println("redirectURL = " + redirectURL);

        return redirectURL;
        /*
         * https://accounts.google.com/o/oauth2/v2/auth?scope=profile&response_type=code
         * &client_id="할당받은 id"&redirect_uri="access token 처리")
         * 로 Redirect URL을 생성하는 로직을 구성
         */
	}	

}
