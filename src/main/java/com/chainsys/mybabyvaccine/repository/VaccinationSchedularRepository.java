/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;
import java.sql.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.models.VaccinationSchedular;


/**
 * @author shan3102
 *
 */
public interface VaccinationSchedularRepository extends CrudRepository<VaccinationSchedular, Integer> {
	List<VaccinationSchedular> findByChildId(int childId);
	List<VaccinationSchedular> findByVaccineId(int vaccineId);
	<S extends VaccinationSchedular>S save(S vaccineSchedule);
	List<VaccinationSchedular> findAll();
	List<VaccinationSchedular> findByDateToVaccinate(Date date);
}
