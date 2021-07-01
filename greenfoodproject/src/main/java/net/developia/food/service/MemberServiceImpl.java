package net.developia.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.developia.food.dao.MemberDAO;
import net.developia.food.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public List<MemberDTO> getMemberList() throws Exception {
		return memberDAO.selectMember();
	}

}
