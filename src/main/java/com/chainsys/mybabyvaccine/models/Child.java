/**
 * 
 */
package com.chainsys.mybabyvaccine.models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

/** 
 * @author shan3102
 *
 */
@Entity
@Table(name = "CHILD_TABLE")
public class Child {
	@Id
	@Column(name = "CHILD_ID")
	private int childId;
	
	@NotNull(message = "*Name cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid  Name")
	@Column(name = "CHILD_NAME")
	private String childName;
	
	@NotNull(message = "*Birth date can not be null")
	@PastOrPresent(message = "*Date of birth must be less than today")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "CHILD_DOB")
	private Date childDob;
	
	@NotNull(message = "Gender can not be null")
	@Column(name = "GENDER")
	private String gender;
	
	@Digits(integer = 5,fraction = 3,message = "Birth Weigth can be null")
	@Positive(message = "weight can not be negative")
	@Pattern(regexp = "^([0-9]*+\\.?[0-9]*|\\.[0-9]+)$",message = "*Birth weight should match required pattern")
	@Column(name = "BIRTH_WEIGHT")
	private double birthWeight;
	
	@NotNull(message = "*Birth Place cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid birth place name ")
	@Column(name = "BIRTH_PLACE")
	private String birthPlace;
	
	@NotNull(message = "Blood group can not be null")
	@Column(name = "BLOOD_GROUP")
	private String bloodGroup;
	
	@Column(name = "HOSPITAL_ID")
	private int hospitalId;
	
	@Column(name = "DOCTOR_ID")
	private Integer doctorId;
	
	@Column(name = "FATHER_ID")
	private Integer fatherId;
	
	@Column(name = "MOTHER_ID")
	private Integer motherId;
	
	@Column(name = "GUARDIAN_ID")
	private Integer guardianId;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "HOSPITAL_ID", nullable = false, insertable = false, updatable = false)
	private Hospital hospital;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DOCTOR_ID", nullable = false, insertable = false, updatable = false)
	private HospitalStaff doctor;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "FATHER_ID", nullable = false, insertable = false, updatable = false)
	private Person father;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MOTHER_ID", nullable = false, insertable = false, updatable = false)
	private Person mother;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "GUARDIAN_ID", nullable = false, insertable = false, updatable = false)
	private Person guardian;

	public Hospital getHospital() {
		return hospital;
	}

	public void setHospital(Hospital hospital) {
		this.hospital = hospital;
	}

	public Person getFather() {
		return father;
	}

	public void setFather(Person father) {
		this.father = father;
	}

	public Person getMother() {
		return mother;
	}

	public void setMother(Person mother) {
		this.mother = mother;
	}

	public Person getGuardian() {
		return guardian;
	}

	public void setGuardian(Person guardian) {
		this.guardian = guardian;
	}

	public int getChildId() {
		return childId;
	}

	public void setChildId(int childId) {
		this.childId = childId;
	}

	public String getChildName() {
		return childName;
	}

	public void setChildName(String childName) {
		this.childName = childName;
	}

	public Date getChildDob() {
		return childDob;
	}

	public void setChildDob(Date childDob) {
		this.childDob = childDob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public double getBirthWeight() {
		return birthWeight;
	}

	public void setBirthWeight(double birthWeight) {
		this.birthWeight = birthWeight;
	}

	public String getBirthPlace() {
		return birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public int getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(int hospitalId) {
		this.hospitalId = hospitalId;
	}

	public Integer getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(Integer doctorId) {
		this.doctorId = doctorId;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public Integer getFatherId() {
		return fatherId;
	}

	public void setFatherId(Integer fatherId) {
		this.fatherId = fatherId;
	}

	public Integer getMotherId() {
		return motherId;
	}

	public void setMotherId(Integer motherId) {
		this.motherId = motherId;
	}

	public Integer getGuardianId() {
		return guardianId;
	}

	public void setGuardianId(Integer guardianId) {

		this.guardianId = guardianId;
	}

	public HospitalStaff getDoctor() {
		return doctor;
	}

	public void setDoctor(HospitalStaff doctor) {
		this.doctor = doctor;
	}

	public String toString() {
		return String.format("%d,%s,%s,%s,%d,%s,%s,%d,%L,%L,%L,%L", childId, childName, childDob, gender, birthWeight,
				birthPlace, bloodGroup, hospitalId, doctorId, fatherId, motherId, guardianId);
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
			Child other = (Child) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.childId;
	}
}
