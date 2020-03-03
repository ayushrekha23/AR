package com.userConnect.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.userConnect.model.RegisterModel;
import com.userConnect.service.RegisterService;


@Controller
public class LoginController{
	static Logger log = Logger.getLogger(LoginController.class.getName());
	@Autowired
	private RegisterService registerService;
	
	
	
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
    public String loginScreen(Model model) {
		BasicConfigurator.configure();
    	log.info("********Login Home Page **************");
        return "login";
    }
	
	@RequestMapping(path = "home", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
	public String save(Model model) {
		log.info("******************Welcome after Login*******************");
		return "home";
	}
	
	
	/* ****************************  REGISTER GET AND POST ********************************/
	
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String register(HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute("register") RegisterModel registerModel, BindingResult result) {
		return onSubmit(request,response,model,registerModel, result);
	}
	
	@RequestMapping(value="/register", method =RequestMethod.POST)
	public String onSubmit(HttpServletRequest request,HttpServletResponse response, Model model, RegisterModel registerModel, BindingResult result) {
		RegisterModel command = (RegisterModel) registerModel;
		String successView = "";
		String subAction = command.getSubAction();
		log.info("SubAction: "+subAction);
		
		if("".equals(subAction) || subAction == null) {
			log.info("******************Welcome to Register*******************");
			successView = "register";
		}
		
		else if(("REGISTER").equals(subAction)) {
			try {
				registerModel.setVerifyCode(generateCode());
				registerModel.setCreatedOn(currentDateTime());
				registerModel.setCreatedBy(registerModel.getFirstName());
				successView = registerService.userRegister(command);
				request.setAttribute("successMsg", "successMsg");
			} catch (Exception e) {
				log.error("****************Error in register*********"+e.toString());
			}
		}
	    return successView;
	}
	
	//Generating random code
	private String generateCode() {
		String generatedCode = "";
		try {
			int leftLimit = 48; 
		    int rightLimit = 122; 
		    int targetStringLength = 6;
		    Random random = new Random();
		 
		     generatedCode = random.ints(leftLimit, rightLimit + 1)
		      .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
		      .limit(targetStringLength)
		      .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
		      .toString();
		}catch(Exception e){
			log.error("Error generating Random code: "+e.toString());
			e.printStackTrace();
		}
		return generatedCode;
	}
	
	//Fetching current Date Time
	private String currentDateTime() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}

	/* ****************************////END REGISTER GET AND POST ********************************/
	
	/************************* ALL AJAX CALL ************************************/
	
	@RequestMapping(value="/uniqueUserCheck", method = RequestMethod.GET)
	@ResponseBody
	public int check(@RequestParam String userName, HttpServletRequest request, HttpServletResponse response, Model model) {
		log.info("**********************AJAX ***************************");
		int success = 0;
		try {
			 success = registerService.userCheck(userName);
		} catch (Exception e) {
			log.error("Error in uniqueUserCheck: "+e.toString());
			e.printStackTrace();
		}
		return success;
	   // boolean a = getSomeResult();
	    
	}

	/************************* ALL AJAX CALL END************************************/
	
	
	
	
	
	
	
	

	@RequestMapping(path = "login", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
	public String login(Model model) {
		log.info("******************Welcome to Login Success*******************");
	    return "login";
	}
	
	@RequestMapping(path = "forgetPass", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
	public String forgetPass(Model model) {
		log.info("******************Welcome to Forget Pass*******************");
	    return "forgetPass";
	}
	
	@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT}, produces = "application/json")
	public ResponseEntity<?> doGetAjax() {
	    return new ResponseEntity<Object>(HttpStatus.FORBIDDEN);
	}
	   
}