package net.developia.greenfood.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dao.MainDAO;

@Service
@Slf4j
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDAO mainDAO;

	@Override
	public void selectMember(HashMap<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
	}

}
