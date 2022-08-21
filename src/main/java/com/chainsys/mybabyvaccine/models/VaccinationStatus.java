/**
 * 
 */
package com.chainsys.mybabyvaccine.models;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.chainsys.mybabyvaccine.compositemodel.ChildVaccineCompositeTable;


/**
 * @author shan3102
 *
 */

@Entity
@Table(name = "VACCINATION_STATUS")
@IdClass(ChildVaccineCompositeTable.class)
public class VaccinationStatus {
	@Id
	@Column(name = "CHILD_ID")
	private int childId;
	
	@Id
	@Column(name = "VACCINE_ID")
	private int vaccineId;
	
	@NotNull(message = "*Date of vaccination date can not be null")
	@PastOrPresent(message = "*Date of vaccination must be on or before today")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "DTAE_OF_VACCINATION")
	private Date dateOfVaccination;
	
	@NotNull(message = "Vaccination Status should not be null")
	@Size(min = 3,max = 20,message = "*Vaccination Status should have size of 3-20 characters")
	@Pattern(regexp = "^[A-Za-z ]+[A-Za-z ]{3,20}$" , message = "*Vaccination status should match given pattern")
	@Column(name = "VACCINATED_STATUS")
	private String vaccinatedStatus;
	
	@Column(name = "HOSPITAL_ID")
	private Integer hospitalId;
	
	@Column(name = "ATTENDER_ID")
	private long attenderId;
	
	@Digits(integer = 6,fraction = 3,message = "*Weigth can be null")
	@Positive(message = "weight can not be negative")
	@Column(name = "BABY_WEIGHT")
	private double babyWeight;
	
	@Digits(integer = 6,fraction = 3,message = "Birth Weigth can be null")
	@Positive(message = "weight can not be negative")
	@Column(name = "BABY_HEIGHT")
	private double babyHeight;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "VACCINE_ID", nullable = false, insertable = false, updatable = false)
	private Vaccine vaccine;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CHILD_ID", nullable = false, insertable = false, updatable = false)
	private Child child;

	public Child getChild() {
		return child;
	}

	public void setChild(Child child) {
		this.child = child;
	}

	public Vaccine getVaccine() {
		return vaccine;
	}

	public void setVaccine(Vaccine vaccine) {
		this.vaccine = vaccine;
	}

	public int getChildId() {
		return childId;
	}

	public void setChildId(int childId) {
		this.childId = childId;
	}

	public int getVaccineId() {
		return vaccineId;
	}

	public void setVaccineId(int vaccineId) {
		this.vaccineId = vaccineId;
	}

	public Date getDateOfVaccination() {
		return dateOfVaccination;
	}

	public void setDateOfVaccination(Date dateOfVaccination) {
		this.dateOfVaccination = dateOfVaccination;
	}

	public String getVaccinatedStatus() {
		return vaccinatedStatus;
	}

	public void setVaccinatedStatus(String vaccinatedStatus) {
		this.vaccinatedStatus = vaccinatedStatus;
	}

	public Integer getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(Integer hospitalId) {
		this.hospitalId = hospitalId;
	}

	public long getAttenderId() {
		return attenderId;
	}

	public void setAttenderId(long attenderId) {
		this.attenderId = attenderId;
	}

	public double getBabyWeight() {
		return babyWeight;
	}

	public void setBabyWeight(double babyWeight) {
		this.babyWeight = babyWeight;
	}

	public double getBabyHeight() {
		return babyHeight;
	}

	public void setBabyHeight(double babyHeight) {
		this.babyHeight = babyHeight;
	}

	public String toString() {
		return String.format("%L,%d,%s,%s,%L,%d,%2f,%2f", childId, vaccineId, dateOfVaccination, vaccinatedStatus,
				hospitalId, attenderId, babyWeight, babyHeight);
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
			VaccinationStatus other = (VaccinationStatus) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.childId+this.vaccineId;
	}
}
