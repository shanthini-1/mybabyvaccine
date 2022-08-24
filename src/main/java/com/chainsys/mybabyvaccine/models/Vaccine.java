/**
 * 
 */
package com.chainsys.mybabyvaccine.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

/**
 * @author shan3102
 *
 */
@Entity
@Table(name = "VACCINE")
public class Vaccine {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO,generator = "VACCINE_ID_SEQ")
	@SequenceGenerator(name="VACCINE_ID_SEQ",sequenceName = "VACCINE_ID_SEQ",allocationSize = 1)
	@Column(name = "VACCINE_ID")
	private int vaccineId;
	
	@Max(50)
	@Min(0)
	@Positive(message = "*Month to vaccinate count can not negative")
	@Digits(integer = 2 ,fraction = 0, message = "*Month to vaccinate should match given pattern")
	@Column(name = "MONTH_TO_VACCINATE")
	private int week;

	@NotNull(message = "*Name should not be null")
	@Size(min = 3,max = 25,message = "*Name should have size of 3-25 characters")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]{3,25}$" , message = "*Name should match given pattern")
	@Column(name = "VACCINE_NAME")
	private String vaccineName;
	
	@NotNull(message = "*Vaccination Description should not be null")
	@Size(min =3,max=150,message = "*Vaccine Description should match required length")
	@Column(name = "VAC_DESCRIPTION")
	private String vacDescription;

	@Max(99)
	@Min(0)
	@Positive(message = "*Dosage count can not negative")
	@Digits(integer = 2 ,fraction = 0, message = "*Dosage should match given pattern")
	@Column(name = "DOSAGE")
	private int dosage;
	
	@NotNull(message = "*Suggestion should not be null")
	@Size(min = 3,max = 25,message = "*Suggestion should have size of 3-25 characters")
	@Pattern(regexp = "^[A-Za-z ]+[A-Za-z ]{3,20}$" , message = "*Suggestion should match given pattern")
	@Column(name = "SUGGESTION")
	private String suggestion;
	
	@Digits(integer = 9,fraction = 2,message = "*Price can be null")
	@Positive(message = "*Price can not be negative")
	@Column(name = "VACCINE_PRICE")
	private float vaccinePrice;

	public int getVaccineId() {
		return vaccineId;
	}

	public void setVaccineId(int vaccineId) {
		this.vaccineId = vaccineId;
	}

	public int getWeek() {
		return week;
	}

	public void setWeek(int week) {
		this.week = week;
	}

	public String getVaccineName() {
		return vaccineName;
	}

	public void setVaccineName(String vaccineName) {
		this.vaccineName = vaccineName;
	}

	public String getVacDescription() {
		return vacDescription;
	}

	public void setVacDescription(String vacDescription) {
		this.vacDescription = vacDescription;
	}

	public int getDosage() {
		return dosage;
	}

	public void setDosage(int dosage) {
		this.dosage = dosage;
	}

	public String getSuggestion() {
		return suggestion;
	}

	public void setSuggestion(String suggestion) {
		this.suggestion = suggestion;
	}

	public float getVaccinePrice() {
		return vaccinePrice;
	}

	public void setVaccinePrice(float vaccinePrice) {
		this.vaccinePrice = vaccinePrice;
	}

	@Override
	public String toString() {
		return String.format("%d, %d, %s, %s, %d, %s, %2f",vaccineId,week,vaccineName, vacDescription,dosage,suggestion,vaccinePrice);
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
			Vaccine other = (Vaccine) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.vaccineId;
	}

}
