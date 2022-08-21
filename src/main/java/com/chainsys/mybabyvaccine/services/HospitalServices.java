/**
 * 
 */
package com.chainsys.mybabyvaccine.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.models.Hospital;
import com.chainsys.mybabyvaccine.repository.HospitalRepository;


/**
 * @author shan3102
 *
 */
@Service
public class HospitalServices {
	@Autowired
	private HospitalRepository hospitalRepo;

	public List<Hospital> getHospitals() {
		return hospitalRepo.findAll();
	}

	public Hospital getHospitalById(Integer hospitalId) {
		return hospitalRepo.findByHospitalId(hospitalId);
	}

	public Hospital addHospital(Hospital theHospital) {
		return hospitalRepo.save(theHospital);
	}

	public void removeHospital(Integer hospitalId) {
		hospitalRepo.deleteById(hospitalId);
	}
	public Hospital getHosContactPersonById(Integer contactPersonId) {
		return hospitalRepo.findByContactPersonId(contactPersonId);
	}
	
	public List<Hospital> getHospitalsByContactperson(Integer conperson) {
		return hospitalRepo.findAllByContactPersonId(conperson);
	}
	
	

}
