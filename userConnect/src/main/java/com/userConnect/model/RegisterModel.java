package com.userConnect.model;

public class RegisterModel {

	private String firstName;
	private String lastName;
	private String subAction;
	private String userName;
	private String password;
	private String cpassword;
	private String verifyCode;
	private String createdOn;
	private String createdBy;
	private long registerNo;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getSubAction() {
		return subAction;
	}
	public void setSubAction(String subAction) {
		this.subAction = subAction;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getVerifyCode() {
		return verifyCode;
	}
	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}
	public String getCreatedOn() {
		return createdOn;
	}
	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public long getRegisterNo() {
		return registerNo;
	}
	public void setRegisterNo(long registerNo) {
		this.registerNo = registerNo;
	}
}
