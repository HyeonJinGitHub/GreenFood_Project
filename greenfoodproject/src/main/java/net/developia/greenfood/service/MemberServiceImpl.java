package net.developia.greenfood.service;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
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
				throw new RuntimeException("�씠誘� �궗�슜 以묒씤 �븘�씠�뵒�엯�땲�떎. �떎瑜� �븘�씠�뵒瑜� �엯�젰�빐二쇱꽭�슂.");
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
				throw new RuntimeException("�씠誘� �궗�슜 以묒씤 �씠硫붿씪�엯�땲�떎. �떎瑜� �씠硫붿씪�쓣 �엯�젰�빐二쇱꽭�슂.");
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
				throw new RuntimeException("�씠誘� �궗�슜 以묒씤 踰덊샇�엯�땲�떎. �떎瑜� 踰덊샇瑜� �엯�젰�빐二쇱꽭�슂.");
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
				throw new RuntimeException("�븘�씠�뵒 �샊�� 鍮꾨�踰덊샇媛� �씪移섑븯吏� �븡�뒿�땲�떎.");
			}
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void selectProfile(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.selectProfile(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void updateProfile(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.updateProfile(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}
	@Override
	public void shellCmd(String command) throws Exception {
		Runtime runtime = Runtime.getRuntime();
		Process process = runtime.exec(command);
		InputStream is = process.getInputStream();
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
		String line;
//		while ((line = br.readLine()) != null) {
//			System.out.println(line + "臾댄븳猷⑦봽 以�?");
//		}
	}

	@Override
	public void loginByGoogle(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.loginByGoogle(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void selectMemberById(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.selectMemberById(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void loginByNaver(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.loginByNaver(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void selectOrderList(HashMap<String, Object> map) throws Exception {
		try {
			memberDAO.selectOrderList(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}		
	}

	@Override
	public String findMyNick(MemberDTO mdto) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.findMyNick(mdto);
	}

}
