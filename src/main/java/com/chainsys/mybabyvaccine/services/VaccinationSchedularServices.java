/**
 * 
 */
package com.chainsys.mybabyvaccine.services;
import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.models.VaccinationSchedular;
import com.chainsys.mybabyvaccine.repository.VaccinationSchedularRepository;



/**
 * @author shan3102
 *
 */
@Service
public class VaccinationSchedularServices {
	@Autowired
	private VaccinationSchedularRepository vaccinationSchedularRepo;
	
	public List<VaccinationSchedular> getVaccinationSchedulars() {
		return vaccinationSchedularRepo.findAll();
	}

	public List<VaccinationSchedular> getAllVaccineSchedularsByChildId(int childId){
		return vaccinationSchedularRepo.findByChildId(childId);
	}

	public List<VaccinationSchedular> getAllVaccineSchedulesByDate(Date date) {
		return vaccinationSchedularRepo.findByDateToVaccinate(date);
	}
	



}
