package net.developia.greenfood.service;

import java.util.HashMap;

public interface MemberService {
	public void selectMember(HashMap<String, Object> map) throws Exception;

	public void register(HashMap<String, Object> map) throws Exception;

	public void selectMemberByEmail(HashMap<String, Object> map) throws Exception;

	public void selectMemberByPhone(HashMap<String, Object> map) throws Exception;

	public void login(HashMap<String, Object> map) throws Exception;

	public void selectProfile(HashMap<String, Object> map) throws Exception;

	public void updateProfile(HashMap<String, Object> map) throws Exception;

	public void shellCmd(String command) throws Exception;

	public void loginByGoogle(HashMap<String, Object> map) throws Exception;

	public void selectMemberById(HashMap<String, Object> map) throws Exception;

	public void loginByNaver(HashMap<String, Object> map) throws Exception;

}
