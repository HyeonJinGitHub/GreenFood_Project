package net.developia.food.service;

import java.util.List;

import net.developia.food.dto.MemberDTO;

public interface MemberService {
	public List<MemberDTO> getMemberList() throws Exception;
}
