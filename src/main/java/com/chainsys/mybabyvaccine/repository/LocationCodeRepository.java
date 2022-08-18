/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.models.LocationCode;

/**
 * @author shan3102
 * @date 1/8/2022
 */
public interface LocationCodeRepository extends CrudRepository<LocationCode, Integer> {
	LocationCode findByPinCode(int locCode);

	@Override
	<S extends LocationCode> S save(S locationCode);

	void deleteById(int locCode);

	List<LocationCode> findAll();

//	List<LocationCode> findAllByPincode();
//
//	List<LocationCode> findAllByDistrict();
//
//	List<LocationCode> findAllByStateName();
//
//	List<LocationCode> findAllByCountry();

}
