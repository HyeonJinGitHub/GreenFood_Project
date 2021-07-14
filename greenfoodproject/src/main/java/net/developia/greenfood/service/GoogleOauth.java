package net.developia.greenfood.service;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
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
import net.developia.greenfood.dto.SocialOauth;
import net.developia.greenfood.util.GreenFoodUtil;

@Component
@RequiredArgsConstructor
public class GoogleOauth implements SocialOauth{
	private final String GOOGLE_SNS_BASE_URL = "https://accounts.google.com/o/oauth2/v2/auth";
    private final String GOOGLE_SNS_TOKEN_BASE_URL = "https://oauth2.googleapis.com/token";
    private final String GOOGLE_SNS_GET_USERINFO_BASE_URL = "https://www.googleapis.com/oauth2/v2/userinfo";
    
    @Value("${google.client_id}")
    private String GoogleClient_id;
    @Value("${google.client_secret}")
    private String GoogleClient_secret;
	@Override
	public String getOauthRedirectURL() {
        Map<String, Object> params = new HashMap<>();
        params.put("scope", "email profile");
        params.put("response_type", "code");
        params.put("client_id", GoogleClient_id);
        params.put("redirect_uri", "http://localhost:8080/greenfood/auth/google/callback");
 
        String parameterString = params.entrySet().stream()
                .map(x -> x.getKey() + "=" + x.getValue())
                .collect(Collectors.joining("&"));
 
        return GOOGLE_SNS_BASE_URL + "?" + parameterString;
	}

    
    @Override
    public String requestAccessTokenUsingURL(String code) {
        try {
            URL url = new URL(GOOGLE_SNS_TOKEN_BASE_URL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            conn.setDoOutput(true);

            Map<String, Object> params = new HashMap<>();
            params.put("code", code);
            params.put("client_id", GoogleClient_id);
            params.put("client_secret", GoogleClient_secret);
            params.put("redirect_uri", "http://localhost:8080/greenfood/auth/google/callback");
            params.put("grant_type", "authorization_code");

            String parameterString = params.entrySet().stream()
                    .map(x -> x.getKey() + "=" + x.getValue())
                    .collect(Collectors.joining("&"));

            BufferedOutputStream bous = new BufferedOutputStream(conn.getOutputStream());
            bous.write(parameterString.getBytes());
            bous.flush();
            bous.close();

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

            StringBuilder sb = new StringBuilder();
            String line;

            while ((line = br.readLine()) != null) {
                sb.append(line);
            }

            if (conn.getResponseCode() == 200) {
                return sb.toString();
            }
            return "구글 로그인 요청 처리 실패";
        } catch (IOException e) {
            throw new IllegalArgumentException("알 수 없는 구글 로그인 Access Token 요청 URL 입니다 :: " + GOOGLE_SNS_TOKEN_BASE_URL);
        }
    }
	
    @Override
    public String requestAccessToken(String code) {
    	RestTemplate restTemplate = new RestTemplate();
    	
    	Map<String, Object> params = new HashMap<>();
    	params.put("code", code);
    	params.put("client_id", GoogleClient_id);
    	params.put("client_secret", GoogleClient_secret);
    	params.put("redirect_uri", "http://localhost:8080/greenfood/auth/google/callback");
    	params.put("grant_type", "authorization_code");
    	
    	ResponseEntity<String> responseEntity =
    			restTemplate.postForEntity("https://oauth2.googleapis.com/token", params, String.class);
    	
    	if (responseEntity.getStatusCode() == HttpStatus.OK) {
    		System.out.println(responseEntity.getBody());
    		
    		return responseEntity.getBody();
    	
    	}
    	
    	return "구글 로그인 요청 처리 실패";
    }


	@Override
	public JSONObject getAuthInfo(String tokens) throws ParseException {
		JSONObject jobj = GreenFoodUtil.StringToJSONObject(tokens);
		
		System.out.println(jobj.get("access_token"));
		
		UriComponents uriComponents = UriComponentsBuilder.fromHttpUrl(GOOGLE_SNS_GET_USERINFO_BASE_URL)
				.queryParam("access_token", jobj.get("access_token"))
				.build(false);
		
		HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.setContentType(new MediaType("application", "json", Charset.forName("UTF-8")));
		
		HttpComponentsClientHttpRequestFactory factory = new HttpComponentsClientHttpRequestFactory();
		factory.setConnectTimeout(5000);
		factory.setReadTimeout(5000);
		
		RestTemplate restTemplate = new RestTemplate(factory);
		
		ResponseEntity<JSONObject> response = restTemplate.exchange(uriComponents.toUriString(), HttpMethod.GET, new HttpEntity<String>(httpHeaders), JSONObject.class);
		
		
		if(response.getStatusCode()==HttpStatus.OK) {
			System.out.println("●"+response.getBody());
			return response.getBody();
		}
//		Map<String, Object>map = new HashMap<String, Object>();
//		map.put
		return null;
	}
}
