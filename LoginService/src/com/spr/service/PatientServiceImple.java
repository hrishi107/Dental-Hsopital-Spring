package com.spr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spr.dao.PatientDaoImple;
import com.spr.dto.Patient;

@Service
public class PatientServiceImple implements PatientService {

	@Autowired
	private PatientDaoImple patientDaoimple;
	
	public void insert(Patient patient) {
		System.out.println("Patient services..........");
		patientDaoimple.insert(patient);
	}
}
