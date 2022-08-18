/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;
import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.compositemodel.ChildVaccineCompositeTable;
import com.chainsys.mybabyvaccine.models.VaccinationStatus;


/**
 * @author shan3102
 *
 */
public interface VaccinationStatusRepository extends CrudRepository<VaccinationStatus, ChildVaccineCompositeTable> {
	Optional<VaccinationStatus> findById(ChildVaccineCompositeTable compId);

	<S extends VaccinationStatus> S save(S vaccineStatus);

	void deleteById(ChildVaccineCompositeTable compId);

	List<VaccinationStatus> findAll();
	List<VaccinationStatus> findByChildId(int childId);
	List<VaccinationStatus> findByVaccineId(int vacId);

}
