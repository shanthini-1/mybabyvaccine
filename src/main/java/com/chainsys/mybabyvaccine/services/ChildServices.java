/**
 * 
 */
package com.chainsys.mybabyvaccine.services;

import java.sql.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.models.Child;
import com.chainsys.mybabyvaccine.models.VaccinationSchedular;
import com.chainsys.mybabyvaccine.models.Vaccine;
import com.chainsys.mybabyvaccine.repository.ChildRepository;
import com.chainsys.mybabyvaccine.repository.VaccinationSchedularRepository;
import com.chainsys.mybabyvaccine.repository.VaccineRepository;


/**
 * @author shan3102
 *
 */
@Service
public class ChildServices {
	@Autowired
	private ChildRepository childRepo;
	@Autowired
	private VaccineRepository vaccineRepository;
	@Autowired
	private VaccinationSchedularRepository vaccinationSchedularRepository;

	public List<Child> getChilds() {
		return childRepo.findAll();
	}

	public Child findById(int childId) {
		return childRepo.findById(childId);
	}

	@Transactional
	public Child addChild(Child theChild) {
		theChild = childRepo.save(theChild);
		List<Vaccine> vaccineList =vaccineRepository.findAll();
		for (Vaccine vaccine : vaccineList) {
			VaccinationSchedular vsObj = new VaccinationSchedular();
			vsObj.setChildId(theChild.getChildId());
			vsObj.setVaccineId(vaccine.getVaccineId());
			Date date =Date.valueOf(theChild.getChildDob().toLocalDate().plusMonths(vaccine.getWeek()));
			vsObj.setDateToVaccinate(date);
			vaccinationSchedularRepository.save(vsObj);
		}
		return theChild;
	}

	public void removeChild(int childId) {
		childRepo.deleteById(childId);
	}


	public List<Child> getChildByHospitalId(int hospitalId) {
		return childRepo.findAllByHospitalId(hospitalId);
	}

	public List<Child> getChildDoctorId(Integer doctorId) {
		return childRepo.findAllByDoctorId(doctorId);
	}

	public List<Child> getChildFatherMotherId(Integer fatherId, Integer motherId) {
		return childRepo.findAllByFatherIdAndMotherId(fatherId, motherId);
	}

	public List<Child> getChildGuardianId(Integer parentId) {
		return childRepo.findAllByGuardianId(parentId);
	}

	public List<Integer> getAllChildId(){
		return childRepo.listOfChildId();
	}

}
