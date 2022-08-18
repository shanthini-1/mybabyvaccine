/**
 * 
 */
package com.chainsys.mybabyvaccine.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.models.Vaccine;
import com.chainsys.mybabyvaccine.repository.VaccineRepository;


/**
 * @author shan3102
 *
 */
@Service
public class VaccineServices {
	@Autowired
	private VaccineRepository vacRepo ;
	
	
	public Vaccine addVaccine(Vaccine vac) {
		return vacRepo.save(vac);
	}

	public void removeVaccine(int vacId) {
		vacRepo.deleteById(vacId);
	}
	
	public List<Vaccine> getVaccines() {
		return vacRepo.findAll();
	}

	public Vaccine getVaccinesById(int id) {
		return 	vacRepo.findByVaccineId(id);
	}
	

}
