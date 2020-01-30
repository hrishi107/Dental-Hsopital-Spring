package com.spr.dao;

import java.util.List;

import com.spr.dto.Patient;

public interface PatientDao {
	public Boolean insert(Patient patient);
	public Boolean update(Patient patient );
	public Patient get(Integer id);
	public Boolean delete(Integer id);
	public List<Patient> list();
	
	
}
