/**
 * 
 */
package com.chainsys.mybabyvaccine.services;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.compositemodel.ChildVaccineCompositeTable;
import com.chainsys.mybabyvaccine.models.VaccinationStatus;
import com.chainsys.mybabyvaccine.repository.VaccinationStatusRepository;


/**
 * @author shan3102
 *
 */
@Service
public class VaccinationStatusServices {
	@Autowired
	private VaccinationStatusRepository vaccinationStatusRepo;
	

	public List<VaccinationStatus> getVaccinationStatus() {
		return vaccinationStatusRepo.findAll();
	}

	public Optional<VaccinationStatus> getVaccinationStatussById(ChildVaccineCompositeTable compId) {
		return vaccinationStatusRepo.findById(compId);
	}

	public VaccinationStatus addVaccinationStatus(VaccinationStatus theVac) {
		return vaccinationStatusRepo.save(theVac);
	}

	public void removeVaccinationStatus(ChildVaccineCompositeTable compId) {
		vaccinationStatusRepo.deleteById(compId);		
	}

	public List<VaccinationStatus> getChildrenListByVacId(Integer vaccineid) {
		return vaccinationStatusRepo.findByVaccineId(vaccineid);
	}

	public List<VaccinationStatus> getVaccineListByChildId(Integer childId) {
		return vaccinationStatusRepo.findByChildId(childId);
	}

	public VaccinationStatus getVaccinationStatusByIds(Integer babyId, Integer vaccineId) {
		
		return  vaccinationStatusRepo.findByChildIdAndVaccineId(babyId,vaccineId);
	}
	
	
}
