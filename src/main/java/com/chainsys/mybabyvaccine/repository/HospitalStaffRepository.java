/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.models.HospitalStaff;

/**
 * @author shan3102
 *
 */
public interface HospitalStaffRepository extends CrudRepository<HospitalStaff, Integer> {
	HospitalStaff findByStaffId(Integer hosStaffId);

	@Override
	<S extends HospitalStaff> S save(S hosStaffId);

	void deleteById(Integer hosStaffId);

	List<HospitalStaff> findAll();

	@Query(value = "SELECT * FROM HOSPITAL_STAFF WHERE STAFF_ROLE='Attender'", nativeQuery = true)
	List<HospitalStaff> listAllAttender();
	@Query(value = "SELECT * FROM HOSPITAL_STAFF WHERE STAFF_ROLE='Doctor'", nativeQuery = true)
	List<HospitalStaff> listAllDoctor();

}
