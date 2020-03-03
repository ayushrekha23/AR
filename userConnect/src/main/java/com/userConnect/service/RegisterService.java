package com.userConnect.service;

import org.springframework.stereotype.Service;

import com.userConnect.model.RegisterModel;

@Service
public interface RegisterService {

	public String userRegister(RegisterModel command) throws Exception;

	public int userCheck(String userName) throws Exception;
}
