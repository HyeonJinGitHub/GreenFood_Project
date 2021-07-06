package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import net.developia.greenfood.dto.MemberDTO;

public interface MainDAO {
	public List<MemberDTO> getMember() throws SQLException;
}
