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
			if (output.size() != 0) {
				throw new RuntimeException("이미 사용 중인 아이디입니다. 다른 아이디를 입력해주세요.");
			}
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void register(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.register(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void selectMemberByEmail(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.selectMemberByEmail(map);
			List<MemberDTO> output = (List) map.get("MemberList");
			if (output.size() != 0) {
				throw new RuntimeException("이미 사용 중인 이메일입니다. 다른 이메일을 입력해주세요.");
			}
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}		
	}

	@Override
	public void selectMemberByPhone(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.selectMemberByPhone(map);
			List<MemberDTO> output = (List) map.get("MemberList");
			if (output.size() != 0) {
				throw new RuntimeException("이미 사용 중인 번호입니다. 다른 번호를 입력해주세요.");
			}
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}		
	}

	@Override
	public void login(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.login(map);
			List<MemberDTO> output = (List) map.get("MemberList");
			if (output.size() == 0) {
				throw new RuntimeException("아이디 혹은 비밀번호가 일치하지 않습니다.");
			}
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

}
