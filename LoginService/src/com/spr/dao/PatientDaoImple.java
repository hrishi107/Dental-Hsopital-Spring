package com.spr.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spr.dto.Patient;

@Repository
public class PatientDaoImple implements PatientDao{
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	
	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}

	public PatientDaoImple() {
		super();
		// TODO Auto-generated constructor stub
	}

	  //InsertMethod
	@Override
	public Boolean insert(Patient patient) {
		System.out.println("Inserting.............");
		String flag="1";
		String type="P";
		
		//Login Table
		String sql= "insert into login values (?,?,?,?)";
		int a=jdbctemplate.update(sql, new Object[] { 
				
				patient.getEmail(),
				patient.getPassword(),
				type,
				flag
		});
		System.out.println(a+"inserted into login");
		
		sql= "insert into patient(first_name ,last_name ,gender,email,blood_group, age , address ,phone_no,password,cpassword,flag,type) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		
		
		
		a=jdbctemplate.update(sql, new Object [] {
				
				
				patient.getFirstName(),
				patient.getLastName(),
				patient.getGender(),
				patient.getEmail(),
				patient.getBloodGroup(),
				patient.getAge(),
				patient.getAddress(),
				patient.getPhoneNo(),
				patient.getPassword(),
				patient.getCpassword(),
				flag,
				type,
				
		});
		System.out.println(a+"inserted into patient");
		
		return true;
	}

	@Override
	public Boolean update(Patient patient) {
		
		return null;
	}

	@Override
	public Patient get(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean delete(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Patient> list() {
		// TODO Auto-generated method stub
		return null;
	}

	

}
