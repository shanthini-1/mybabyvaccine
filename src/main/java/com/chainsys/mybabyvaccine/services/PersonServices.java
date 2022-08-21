/**
 * 
 */
package com.chainsys.mybabyvaccine.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.models.Login;
import com.chainsys.mybabyvaccine.models.Person;
import com.chainsys.mybabyvaccine.repository.LoginRepository;
import com.chainsys.mybabyvaccine.repository.PersonRepository;

/**
 * @author shan3102
 * @date 02-aug-2022
 */
@Service
public class PersonServices {
	@Autowired
	private PersonRepository personRepo;
	@Autowired
	private LoginRepository loginRepository;

	public List<Person> getPersons() {
		return personRepo.findAll();
	}

	public void removePerson(Integer personId) {
		personRepo.deleteById(personId);
	}

	public Person getPersonById(Integer personId) {
		return personRepo.findByUserId(personId);
	}

	@Transactional
	public Person addPerson(Person thePerson) {
		thePerson = personRepo.save(thePerson);
		Login login = new Login();
		login.setPersonCategory(thePerson.getPersonCategory());
		login.setEmail(thePerson.getEmail());
		login.setRegisterationDate();
		login.setPassWord(thePerson.getPassWord());
		loginRepository.save(login);
		return thePerson;

	}
	
//	public List<Person> getAllFather(){
//		return personRepo.fatherList();
//	}
//	
//	public List<Person> getAllMother(){
//		return personRepo.motherList();
//	}
//	
//	public List<Person> getAllUser(){
//		return personRepo.userList();
//	}
	
	public List<Person> getAllStaff(){
		return personRepo.findAllByPersonCategory();
	}


}
