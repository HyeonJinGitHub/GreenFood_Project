package net.developia.greenfood.util;

import java.text.DecimalFormat;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class GreenFoodUtil {
	/**
	 * 
	 * @param str (JSONOBject로 변환할 문자열)
	 * @return String이 JSONOBject형식으로 변함
	 * @throws ParseException
	 */
	public static JSONObject StringToJSONObject(String str) throws ParseException {
		JSONParser parser = new JSONParser();
		
		Object obj = parser.parse(str);
		JSONObject jobj = (JSONObject) obj;
		return jobj;
	}
	
	/**
	 * 
	 * @param JSONObject (String으로 변할 제이슨 객체)
	 * @return JSONObject가 String형식으로 변환
	 */
	public static String JSONObjectToString(JSONObject jobj) {
		return jobj.toString();
		
	}
	
	/**
	 * 
	 * @param price(점 찍을 int값)
	 */
	public static String setComma(int price) {
		DecimalFormat format = new DecimalFormat("###,###");
		
		return format.format(price);
	}

}