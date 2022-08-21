/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.models.Hospital;


/**
 * @author shan3102
 *
 */
public interface HospitalRepository extends CrudRepository<Hospital, Integer> {
	Hospital findByHospitalId(Integer hosId);
	@Override
	<S extends Hospital>S save(S hospital);

	void deleteById(Integer hosId);

	List<Hospital> findAll();
	
	Hospital findByContactPersonId(Integer id);
	List<Hospital> findAllByContactPersonId(Integer cPerson);
}
