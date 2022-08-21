/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.models.LocationCode;

/**
 * @author shan3102
 * @date 1/8/2022
 */
public interface LocationCodeRepository extends CrudRepository<LocationCode, Integer> {
	LocationCode findByPinCode(Integer locCode);

	@Override
	<S extends LocationCode> S save(S locationCode);

	void deleteById(Integer locCode);

	List<LocationCode> findAll();

	@Query(value = "Select distinct district from location_code", nativeQuery = true)
	List<String> listOfDistricts();

	@Query(value = "Select distinct State_name from location_code", nativeQuery = true)
	List<String> listOfState();
	
	@Query(value = "Select pin_code from location_code", nativeQuery = true)
	List<Integer> listOfPincode();
}
