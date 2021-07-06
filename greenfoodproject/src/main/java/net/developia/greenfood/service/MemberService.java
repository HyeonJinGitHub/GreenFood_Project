package net.developia.greenfood.service;

import java.util.HashMap;

public interface MemberService {
	public void selectMember(HashMap<String, Object> map) throws Exception;

	public void register(HashMap<String, Object> map) throws Exception;

	public void selectMemberByEmail(HashMap<String, Object> map) throws Exception;

	public void selectMemberByPhone(HashMap<String, Object> map) throws Exception;

	public void login(HashMap<String, Object> map) throws Exception;

}
