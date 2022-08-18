package com.chainsys.mybabyvaccine.models;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "LOGIN")
public class Login {
	@Id
	@NotNull(message = "*Email should not be null")
	@Size(min = 6,max = 30,message = "*Email should match required size of 6-30 characters")
	@Pattern(regexp = "[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\\.[a-zA-Z]{2,4}",message = "*Email pattern should not match required pattern")
	@Column(name = "EMAIL")
	private String email;
	
	@NotNull(message = "*Password should not be null")
	@Size(min =8,max=25,message = "*password should match required length")
	@Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+-=()])(?=\\S+$).{8,25}$",message = "*Password should match given pattern")
	@Column(name = "PASS_WORD")
	private String passWord;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Column(name = "REGISTERATION_DATE")
	private Date registerationDate;
	
	@NotNull(message = "*Person Category should not be null")
	@Size(min = 3,max = 25,message = "*Person Category should have size of 3-25 characters")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]{3,20}$" , message = "*Person Category should match given pattern")
	@Column(name = "PERSON_CATEGORY")
	private String personCategory;

	public String getPersonCategory() {
		return personCategory;
	}

	public void setPersonCategory(String personCategory) {
		this.personCategory = personCategory;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public Date getRegisterationDate() {
		return registerationDate;
	}

	public void setRegisterationDate() {
		Date date = Date.valueOf(LocalDate.now());
		this.registerationDate = date;
	}
	
	public String toString() {
		return String.format("%s,%s,%s,%s", email, passWord, registerationDate, personCategory);
	}

	public boolean equals(Object obj) {
		boolean result = false;
		if (obj == null) {
			return false;
		}
		if (this.getClass() != obj.getClass())
			return false;
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			LocationCode other = (LocationCode) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.email.hashCode();
	}

}
