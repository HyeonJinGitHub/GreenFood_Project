package net.developia.food.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.developia.food.dto.MemberDTO;

@Mapper
public interface MemberDAO {
	public List<MemberDTO> selectMember() throws Exception;
}
