package com.chainsys.mybabyvaccine.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.mybabyvaccine.models.Login;
import com.chainsys.mybabyvaccine.repository.LoginRepository;

@Service
public class LoginService {

	@Autowired
	private LoginRepository loginRepo;

	public Login addUser(Login login) {
		return loginRepo.save(login);

	}

	public Login fetchExistingUser(Login user) {
		String email = user.getEmail();
		String password = user.getPassWord();
		String role = user.getPersonCategory();
		return loginRepo.findByEmailAndPassWordAndPersonCategory(email, password, role);
	}

}
