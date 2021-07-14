package net.developia.greenfood.service;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.RequiredArgsConstructor;
import net.developia.greenfood.controller.OauthController;
import net.developia.greenfood.dto.SocialOauth;
import net.developia.greenfood.util.GreenFoodUtil;

@Component
@RequiredArgsConstructor
public class NaverOauth implements SocialOauth{
   private final String NAVER_SNS_BASE_URL = "https://nid.naver.com/oauth2.0/authorize";
    private final String NAVER_SNS_TOKEN_BASE_URL = "https://nid.naver.com/oauth2.0/token";
    private final String NAVER_SNS_GET_USERINFO_BASE_URL = "https://openapi.naver.com/v1/nid/me";
    private static Logger logger = LoggerFactory.getLogger(NaverOauth.class);
    @Value("${naver.client_id}")
    private String NaverClient_id;
    @Value("${naver.client_secret}")
    private String NaverClient_secret;
    
   @Override
   public String getOauthRedirectURL() {
        Map<String, Object> params = new HashMap<>();
           params.put("state", "ohgu");
           params.put("response_type", "code");
           params.put("client_id", NaverClient_id);
           params.put("redirect_uri", "http://localhost:8080/greenfood/auth/naver/callback");
    
           String parameterString = params.entrySet().stream()
                   .map(x -> x.getKey() + "=" + x.getValue())
                   .collect(Collectors.joining("&"));
    
           return NAVER_SNS_BASE_URL + "?" + parameterString;
   }

   @Override
   public String requestAccessTokenUsingURL(String code) {
      // TODO Auto-generated method stub
      return null;
   }

   @Override
   public String requestAccessToken(String code) {
      UriComponents uriComponents = UriComponentsBuilder.fromHttpUrl(NAVER_SNS_TOKEN_BASE_URL)
            .queryParam("grant_type", "authorization_code")
            .queryParam("code", code)
            .queryParam("client_id", NaverClient_id)
            .queryParam("client_secret", NaverClient_secret)
            .queryParam("state", "ohgu")
            .build(false);
      HttpHeaders httpHeaders = new HttpHeaders();
      httpHeaders.setContentType(new MediaType("application", "json", Charset.forName("UTF-8")));
      
      HttpComponentsClientHttpRequestFactory factory = new HttpComponentsClientHttpRequestFactory();
      factory.setConnectTimeout(5000);
      factory.setReadTimeout(5000);
      
      RestTemplate restTemplate = new RestTemplate(factory);
      
      ResponseEntity<String> response = restTemplate.exchange(uriComponents.toUriString(), HttpMethod.GET, new HttpEntity<String>(httpHeaders), String.class);
      
      
      if(response.getStatusCode()==HttpStatus.OK) {
         logger.debug(response.getBody());
         return response.getBody();
      }
       return "네이버 로그인 요청 처리 실패";
   }

   @Override
   public JSONObject getAuthInfo(String tokens) throws ParseException {
      JSONObject jobj = GreenFoodUtil.StringToJSONObject(tokens);
      
      UriComponents uriComponents = UriComponentsBuilder.fromHttpUrl(NAVER_SNS_GET_USERINFO_BASE_URL)
            .build(false);
      HttpHeaders httpHeaders = new HttpHeaders();
      httpHeaders.setContentType(new MediaType("application", "json", Charset.forName("UTF-8")));
      httpHeaders.set("Authorization", "Bearer "+(String) jobj.get("access_token"));
      
      HttpComponentsClientHttpRequestFactory factory = new HttpComponentsClientHttpRequestFactory();
      factory.setConnectTimeout(5000);
      factory.setReadTimeout(5000);
      
      RestTemplate restTemplate = new RestTemplate(factory);
      
      ResponseEntity<JSONObject> response = restTemplate.exchange(uriComponents.toUriString(), HttpMethod.GET, new HttpEntity<String>(httpHeaders), JSONObject.class);
      
      
      if(response.getStatusCode()==HttpStatus.OK) {
         logger.debug("●"+response.getBody());
         return response.getBody();
      }
       return null;
   }

}