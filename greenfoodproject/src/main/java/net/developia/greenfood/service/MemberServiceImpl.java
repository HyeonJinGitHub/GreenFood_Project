package net.developia.greenfood.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dao.MemberDAO;
import net.developia.greenfood.dto.MemberDTO;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public void selectMember(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.selectMember(map);
			List<MemberDTO> output = (List) map.get("MemberList");
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

}
