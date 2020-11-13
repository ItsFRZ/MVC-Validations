package com.ItsFRZ;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.sun.istack.internal.NotNull;

public class StudentModel {
	
	public StudentModel() {}
	
	@NotBlank(message = "Field should be not empty")
	@Size(min=3, message = "Minimum 3 character required")
	@Size(max=16, message = "Maximum 16 character required")
	private String name;
	
	@NotBlank(message = "Field should be not empty")
	@Pattern(regexp="^(?:(?:\\+|0{0,2})91(\\s*[\\-]\\s*)?|[0]?)?[789]\\d{9}$", message="Should be Indian Number")
	private String mobileNo;
	
	@NotBlank(message = "Field should be not empty")
	@Pattern(regexp = "\\b[\\w.%-]+@[-.\\w]+\\.[A-Za-z]{2,4}\\b", message="Field should be filled with proper Email-Id")
	private String eMail;
	
	@NotBlank(message = "Field should be not empty")
	private String password;
	
	/* @NotBlank(message = "Field should be not empty") */
	private String gender;
	
	/* @NotBlank(message = "Field should be not empty") */
	private String[] subjects;
	
	
	
	public String[] getSubjects() {
		return subjects;
	}
	public void setSubjects(String[] subjects) {
		this.subjects = subjects;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
