package com.spr.dto;



public class Patient {

	
	private String FirstName;
	private String LastName;
	private String Gender;
	private String Email;
	private String BloodGroup;
	private int Age;
	private String Address;
	private String PhoneNo;
	private String Password;
	private String Cpassword;
	
	
	
	
	@Override
	public String toString() {
		return "Patient [FirstName=" + FirstName + ", LastName=" + LastName + ", Gender=" + Gender + ", Email=" + Email
				+ ", BloodGroup=" + BloodGroup + ", Age=" + Age + ", Address=" + Address + ", PhoneNo=" + PhoneNo
				+ ", Password=" + Password + ", Cpassword=" + Cpassword + "]";
	}
	public Patient(String firstName, String lastName, String gender, String email, String bloodGroup, int age,
			String address, String phoneNo, String password, String cpassword) {
		super();
		FirstName = firstName;
		LastName = lastName;
		Gender = gender;
		Email = email;
		BloodGroup = bloodGroup;
		Age = age;
		Address = address;
		PhoneNo = phoneNo;
		Password = password;
		Cpassword = cpassword;
	}
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getBloodGroup() {
		return BloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		BloodGroup = bloodGroup;
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
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	
	
	
	
	
		
}
