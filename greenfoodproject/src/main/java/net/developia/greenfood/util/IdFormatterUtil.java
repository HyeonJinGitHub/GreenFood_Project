package net.developia.greenfood.util;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.developia.greenfood.controller.MemberController;

public class IdFormatterUtil {
	private static Logger logger = LoggerFactory.getLogger(IdFormatterUtil.class);
	public String maskingPhone(String phoneStr) {
		phoneStr = phoneStr.replaceAll("-", "");
		String result = "";
		int strLength = phoneStr.length();
		result += phoneStr.substring(0, 3);
		result += strLength == 10 ? "-***-" : "-****-";
		result += phoneStr.substring((strLength - 4), (strLength));
		return result;
	}

	public String maskingName(String nameStr) {
		String result = "";
		int strLength = nameStr.length();
		System.out.println("id : " + nameStr);
		result += nameStr.substring(0, 1);
		if (strLength == 2) {
			result += '*';
		} else {
			String mask = "";
			for (int i = 0; i < (strLength - 2); i++) {
				mask += '*';
			}
			result += mask;
			result += nameStr.subSequence((strLength - 1), strLength);
		}
		System.out.println(result);
		return result;
	}

	public String maskingEmail(String email) {
		try {
			if (StringUtils.isEmpty(email) || !email.contains("@")) {
				return email;
			}
			String[] emailSplited = email.split("@");
			if (emailSplited.length != 2) {
				return email;
			}
			if (emailSplited[0].length() <= 2) { // 2자리 보다 작은 경우
				return email.charAt(0) + "*****@" + emailSplited[1];
			} else {
				return email.substring(0, 2) + "*****@" + emailSplited[1];
			}
		} catch (Exception e) {
			logger.error(e.toString());
		}
		return email;
	}

}
