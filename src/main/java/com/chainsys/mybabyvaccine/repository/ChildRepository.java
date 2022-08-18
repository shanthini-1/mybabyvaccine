/**
* 
*/
package com.chainsys.mybabyvaccine.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.mybabyvaccine.models.Child;


/**
 * @author shan3102
 *
 */
@Repository
public interface ChildRepository extends JpaRepository<Child, Integer> {
	Child findById(int id);

	@Override
	<S extends Child> S save(S childld);

	void deleteById(int childId);

	List<Child> findAll();

	List<Child> findAllByHospitalId(int hospitalId);

	List<Child> findAllByDoctorId(Integer doctorId);

	List<Child> findAllByFatherIdAndMotherId(Integer fatherId, Integer motherId);

	List<Child> findAllByGuardianId(Integer guardianId);

}
