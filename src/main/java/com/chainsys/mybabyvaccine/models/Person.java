
/**
 * 
 */
package com.chainsys.mybabyvaccine.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author shan3102
 *
 */
@Entity
@Table(name = "PERSON")
public class Person {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO,generator = "user_id_seq")
	@SequenceGenerator(name="user_id_seq",sequenceName = "user_id_seq",allocationSize = 1)
	@Column(name = "USER_ID")
	private Integer userId;

	@NotNull(message = "*Email should not be null")
	@Size(min = 6, max = 30, message = "*Email should match required size of 6-30 characters")
	@Pattern(regexp = "[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\\.[a-zA-Z]{2,4}", message = "*Email pattern should not match required pattern")
	@Column(name = "EMAIL")
	private String email;

	@NotNull(message = "*Name cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z ]+[A-Za-z]*$", message = "*please enter valid name ")
	@Column(name = "USER_NAME")
	private String userName;

	@NotNull(message = "*Birth date can not be null")
	@Past(message = "*Date of birth must be less than today")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "USER_DOB")
	private Date userDob;

	@NotNull(message = "*Gender should not be null")
	@Pattern(regexp = "^[A-Za-z ]+[A-Za-z ]{3,15}$", message = "*Gender should match given pattern")
	@Column(name = "GENDER")
	private String gender;

	@NotNull(message = "*Person Category should not be null")
	@Size(min = 3, max = 25, message = "*Person Category should have size of 3-25 characters")
	@Pattern(regexp = "^[A-Za-z ]+[A-Za-z ]{3,20}$", message = "*Person Category should match given pattern")
	@Column(name = "PERSON_CATEGORY")
	private String personCategory;
	
	@Min(value=6000000000L,message = "Phone Number range does not match")
	@Max(value=9999999999L,message = "Phone Number range does not match")
	@Digits(integer = 11, fraction = 0, message = "*Phone number should not less than 10 digits")
	@Column(name = "PHONE_NO")
	private long phoneNumber;
 
	@NotNull(message = "*Password should not be null")
	@Size(min = 8, max = 25, message = "*password should match required length")
	@Pattern(regexp = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=()])(?=\\S+$).{8,25}$", message = "*Password should match given pattern")
	@Column(name = "PASS_WORD")
	private String passWord;

	@NotNull(message = "*Door Number should not be null")
	@Size(min = 1, max = 25, message = "*Door Number should match required length")
	@Pattern(regexp = "^[0-9A-Za-z+-\\/]*$", message = "*Door Number should match given pattern")
	@Column(name = "DOOR_NO")
	private String doorNumber;

	@NotNull(message = "*Street cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid Street name ")
	@Column(name = "STREET")
	private String street;

	@NotNull(message = "*City cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter city name correctly")
	@Column(name = "CITY")
	private String city;

	@Max(value = 699999, message = "*pincode should not be greater than 6999999 ")
	@Min(value = 600000, message = "*pincode should not be less than 600000")
	@Column(name = "PIN_CODE")
	private int pinCode;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PIN_CODE", nullable = false, insertable = false, updatable = false)
	private LocationCode loc;

	public LocationCode getLoc() {
		return loc;
	}

	public void setLoc(LocationCode loc) {
		this.loc = loc;
	}

	@OneToMany(mappedBy = "father")
	private List<Child> fatherChilds;
	@OneToMany(mappedBy = "mother")
	private List<Child> motherChilds;
	@OneToMany(mappedBy = "guardian")
	private List<Child> guardianChilds;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "EMAIL", nullable = false, insertable = false, updatable = false)
	private Login login;

	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public List<Child> getFatherChilds() {
		return fatherChilds;
	}

	public void setFatherChilds(List<Child> fatherChilds) {
		this.fatherChilds = fatherChilds;
	}

	public List<Child> getMotherChilds() {
		return motherChilds;
	}

	public void setMotherChilds(List<Child> motherChilds) {
		this.motherChilds = motherChilds;
	}

	public List<Child> getGuardianChilds() {
		return guardianChilds;
	}

	public void setGuardianChilds(List<Child> guardianChilds) {
		this.guardianChilds = guardianChilds;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getUserDob() {
		return userDob;
	}

	public void setUserDob(Date userDob) {
		this.userDob = userDob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPersonCategory() {
		return personCategory;
	}

	public void setPersonCategory(String personCategory) {
		this.personCategory = personCategory;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getDoorNumber() {
		return doorNumber;
	}

	public void setDoorNumber(String doorNumber) {
		this.doorNumber = doorNumber;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public String toString() {
		return String.format("%L,%s,%s,%s,%s,%s,%s,%s,%s,%s", userId, userName, userDob, gender, email, passWord,
				phoneNumber, doorNumber, street, city);
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
			Person other = (Person) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.userId;
	}

}
