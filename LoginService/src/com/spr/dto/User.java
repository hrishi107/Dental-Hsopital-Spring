package com.spr.dto;

public class User {

	private int UserId;
	private String FirstName;
	private String LastName;
	private String Gender;
	private String Email;
	private String Designation;
	private String BloodGroup;
	private int Age;
	private String Address;
	private String PhoneNo;
	private String Password;
	private String Cpassword;
	private String RegistrationDate;
	private int isdeleted;
	public int getIsdeleted() {
		return isdeleted;
	}
	public void setIsdeleted(int isdeleted) {
		this.isdeleted = isdeleted;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	public String getBloodGroup() {
		return BloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		BloodGroup = bloodGroup;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPhoneNo() {
		return PhoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getCpassword() {
		return Cpassword;
	}
	public void setCpassword(String cpassword) {
		Cpassword = cpassword;
	}
	public String getRegistrationDate() {
		return RegistrationDate;
	}
	public void setRegistrationDate(String registrationDate) {
		RegistrationDate = registrationDate;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int userId, String firstName, String lastName, String gender, String email, String designation,
			String bloodGroup, int age, String address, String phoneNo, String password, String cpassword,
			String registrationDate, int isdeleted) {
		super();
		UserId = userId;
		FirstName = firstName;
		LastName = lastName;
		Gender = gender;
		Email = email;
		Designation = designation;
		BloodGroup = bloodGroup;
		Age = age;
		Address = address;
		PhoneNo = phoneNo;
		Password = password;
		Cpassword = cpassword;
		RegistrationDate = registrationDate;
		this.isdeleted = isdeleted;
	}

	
}
