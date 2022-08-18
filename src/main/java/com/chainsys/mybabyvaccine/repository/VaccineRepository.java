/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.models.Vaccine;


/**
 * @author shan3102
 *
 */
public interface VaccineRepository extends CrudRepository<Vaccine, Integer> {
	Vaccine findByVaccineId(int vaccineId);

	<S extends Vaccine> S save(S vac);

	void deleteById(int vacId);

	List<Vaccine> findAll();

}
