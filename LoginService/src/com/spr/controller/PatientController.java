package com.spr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spr.dto.Patient;
import com.spr.service.PatientServiceImple;

@Controller
public class PatientController {

	@Autowired
	private PatientServiceImple patientService;
	

	public void setPatientService(PatientServiceImple patientService) {
		this.patientService = patientService;
	}

	/*@RequestMapping(value="/regisp",method=RequestMethod.POST)
	public String insert(@ModelAttribute("patient")Patient patient,ModelMap model) {
		
		
		System.out.println("hey"+patient);
		patientService.insert(patient);
		try {
			
			
			System.out.println("success");
			return "Index";
			
		}catch(Exception e){
			System.out.println("Fail");
			return "Register";
		}
	}*/
}