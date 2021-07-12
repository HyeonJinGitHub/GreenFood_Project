package net.developia.greenfood.dto;

import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;

import net.developia.greenfood.service.GoogleOauth;
import net.developia.greenfood.service.NaverOauth;

public interface SocialOauth {
	   String getOauthRedirectURL();
	   String requestAccessTokenUsingURL(String code);
	   String requestAccessToken(String code);
	   JSONObject getAuthInfo(String tokens) throws ParseException;
	   
	    default SocialLoginType type() {
	        if (this instanceof GoogleOauth) {
	            return SocialLoginType.google;
	        } else if (this instanceof NaverOauth) {
	            return SocialLoginType.naver;
	        }/* else if (this instanceof KakaoOauth) {
	            return SocialLoginType.KAKAO;
	        } else {
	            return null;
	        }*/
	        else return null;
	    }

}
