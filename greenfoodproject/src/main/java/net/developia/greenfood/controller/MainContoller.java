package net.developia.greenfood.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.service.MainService;

@Controller
@Slf4j
public class MainContoller {
	@Autowired
	private MainService mainService;
	
	

}
