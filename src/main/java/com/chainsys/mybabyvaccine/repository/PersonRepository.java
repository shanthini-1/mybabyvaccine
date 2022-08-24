/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.chainsys.mybabyvaccine.models.Person;


/**
 * @author shan3102
 *
 */
public interface PersonRepository extends JpaRepository<Person, Integer> {
	Person findByUserId(Integer id);

	void deleteById(Integer psrn);

	List<Person> findAll();

	List<Person> findAllByPinCode(Integer pincode);

	<S extends Person> S save(S person);

	@Query(value="select * from person where person_category='User'",nativeQuery = true)
	List<Person> userList();
	
	@Query(value = "SELECT * FROM PERSON  WHERE PERSON_CATEGORY='Staff'", nativeQuery = true)
	List<Person> staffList();

	Person findByEmail(String email);
}
