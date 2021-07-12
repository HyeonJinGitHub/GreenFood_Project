package net.developia.greenfood.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.developia.greenfood.dto.SocialLoginType;
import net.developia.greenfood.dto.SocialOauth;
import net.sf.json.JSON;

@Service
@RequiredArgsConstructor
public class OauthService {
    private final List<SocialOauth> socialOauthList;
    private final HttpServletResponse response;

    public void request(SocialLoginType socialLoginType) {
	    SocialOauth socialOauth = this.findSocialOauthByType(socialLoginType);
	    String redirectURL = socialOauth.getOauthRedirectURL();
	    try {
	        response.sendRedirect(redirectURL);
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
    }

	public String requestAccessToken(SocialLoginType socialLoginType, String code) {
	    SocialOauth socialOauth = this.findSocialOauthByType(socialLoginType);
	    return socialOauth.requestAccessToken(code);
	}

	private SocialOauth findSocialOauthByType(SocialLoginType socialLoginType) {
	    return socialOauthList.stream()
	            .filter(x -> x.type() == socialLoginType)
	            .findFirst()
	            .orElseThrow(() -> new IllegalArgumentException("알 수 없는 SocialLoginType 입니다."));
	}
	
	public JSONObject getAuthInfo(SocialLoginType socialLoginType, String tokens) throws ParseException {
		SocialOauth socialOauth = this.findSocialOauthByType(socialLoginType);
		return socialOauth.getAuthInfo(tokens);
	}
}
