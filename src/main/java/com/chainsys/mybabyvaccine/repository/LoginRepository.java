package com.chainsys.mybabyvaccine.repository;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.mybabyvaccine.models.Login;


public interface LoginRepository extends CrudRepository<Login, Integer> {

	<S extends Login> S save(S login);

	Login findByEmailAndPassWordAndPersonCategory(String email,String password,String role);
	
	
	
}
