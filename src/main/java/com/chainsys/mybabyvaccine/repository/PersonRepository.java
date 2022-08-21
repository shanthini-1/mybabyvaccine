/**
 * 
 */
package com.chainsys.mybabyvaccine.repository;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.models.Person;


/**
 * @author shan3102
 *
 */
public interface PersonRepository extends CrudRepository<Person, Integer> {
	Person findByUserId(Integer id);

	void deleteById(Integer psrn);

	List<Person> findAll();

	List<Person> findAllByPinCode(int pincode);

	<S extends Person> S save(S person);
	
	@Query(value="select user_id,user_name from person where person_category='Staff'",nativeQuery = true)
	List<Person> staffList();
	
	@Query(value="select user_id,user_name from person where person_category='User'",nativeQuery = true)
	List<Person> userList();
	
	@Query(value="select user_id,user_name from person where person_category='User' And gender='Male'",nativeQuery = true)
	List<Person> fatherList();
	
	@Query(value="select user_id,user_name from person where person_category='User' And gender='Female'",nativeQuery = true)
	List<Person> motherList();
	
	
}
