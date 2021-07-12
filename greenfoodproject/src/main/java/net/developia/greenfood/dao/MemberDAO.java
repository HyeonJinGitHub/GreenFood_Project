package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.HashMap;


public interface MemberDAO {
	public void selectMember(HashMap<String, Object> map) throws SQLException;

	public void register(HashMap<String, Object> map) throws SQLException;

	public void selectMemberByEmail(HashMap<String, Object> map) throws SQLException;

	public void selectMemberByPhone(HashMap<String, Object> map) throws SQLException;

	public void login(HashMap<String, Object> map) throws SQLException;

	public void selectProfile(HashMap<String, Object> map) throws SQLException;

	public void updateProfile(HashMap<String, Object> map) throws SQLException;

	public void loginByGoogle(HashMap<String, Object> map) throws SQLException;

	public void selectMemberById(HashMap<String, Object> map) throws SQLException;
}
