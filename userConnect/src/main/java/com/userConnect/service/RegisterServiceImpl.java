package com.userConnect.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import com.userConnect.model.RegisterModel;
import com.userConnect.repository.RegisterDao;
import org.apache.log4j.Logger;

@Component
public class RegisterServiceImpl implements RegisterService  {
	static Logger log = Logger.getLogger(RegisterServiceImpl.class.getName());
	
	@Autowired
	private RegisterDao registerDao;
	

	public String userRegister(RegisterModel registerModel) throws Exception {
		log.info("Comming to RegisterService");
		String successView = "";
		int result = registerDao.userInsert(registerModel);
		if(result > 0) {
			successView = "register";
		}
		return successView;
	}
	
	public int userCheck(String userName) throws Exception{
		int success = registerDao.userCheck(userName);
		return success;
	}

	
	
}
