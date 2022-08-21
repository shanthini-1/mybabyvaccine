/**
 * 
 */
package com.chainsys.mybabyvaccine.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.models.HospitalStaff;
import com.chainsys.mybabyvaccine.repository.HospitalStaffRepository;

/**
 * @author shan3102
 *
 */
@Service
public class HospitalStaffServices {
	@Autowired
	private HospitalStaffRepository hospitalStaffRepo;

	public List<HospitalStaff> getHospitalStaffs() {
		return hospitalStaffRepo.findAll();
	}

	public Optional<HospitalStaff> getHospitalStaffById(Integer staffId) {
		return hospitalStaffRepo.findById(staffId);
	}

	public HospitalStaff addHospitalStaff(HospitalStaff theHospitalStaff) {
		return hospitalStaffRepo.save(theHospitalStaff);
	}

	public void removeHospitalStaff(Integer staffId) {
		hospitalStaffRepo.deleteById(staffId);
	}

	public List<HospitalStaff> getHospitalStaffAttender() {
		return hospitalStaffRepo.listAllAttender();
	}
}
