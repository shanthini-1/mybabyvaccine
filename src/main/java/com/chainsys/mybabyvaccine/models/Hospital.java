/**
 * 
 */
package com.chainsys.mybabyvaccine.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * @author shan3102
 *
 */
@Entity
@Table(name = "HOSPITAL")
public class Hospital {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO,generator = "HOSPITAL_ID_SEQ")
	@SequenceGenerator(name="HOSPITAL_ID_SEQ",sequenceName = "HOSPITAL_ID_SEQ",allocationSize = 1)
	@Column(name = "HOSPITAL_ID")
	private Integer hospitalId;

	@NotNull(message = "*Hospital Name cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid Hospital Name")
	@Column(name = "HOSPITAL_NAME")
	private String hospitalName;

	@NotNull(message = "*Hospital Plot number should not be null")
	@Size(min = 1, max = 25, message = "*Hospital Plot number should match required length")
	@Pattern(regexp = "^[0-9A-Za-z+-\\/]*$", message = "*Hospital Plot Number should match given pattern")
	@Column(name = "HOSPITAL_PLOT_NO")
	private String hospitalPlotNo;

	@NotNull(message = "*Street cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid Street name ")
	@Column(name = "HOSPITAL_STREET")
	private String hospitalStreet;

	@NotNull(message = "*city cannot be null")
	@Size(min = 3, max = 25, message = "*Required length does not match")
	@Pattern(regexp = "^[A-Za-z]+[A-Za-z ]*$", message = "*please enter valid city name ")
	@Column(name = "HOSPITAL_CITY")
	private String hospitalCity;

	@Max(value = 699999, message = "*pincode should not be greater than 6999999 ")
	@Min(value = 600000, message = "*pincode should not be less than 600000")
	@Column(name = "PIN_CODE")
	private int pinCode;

	@NotNull(message = "Person Id cannot be null")
	@Column(name = "CONTACT_PERSON_ID")
	private Integer contactPersonId;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CONTACT_PERSON_ID", nullable = false, insertable = false, updatable = false)
	private Person contactPerson;

	@OneToMany(mappedBy = "hospital", fetch = FetchType.LAZY)
	private List<Child> hospitalChilds;

	public Person getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(Person contactPerson) {
		this.contactPerson = contactPerson;
	}

	public List<Child> getHospitalChilds() {
		return hospitalChilds;
	}

	public void setHospitalChilds(List<Child> hospitalChilds) {
		this.hospitalChilds = hospitalChilds;
	}

	public Integer getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(Integer hospitalId) {
		this.hospitalId = hospitalId;
	}

	public String getHospitalName() {
		return hospitalName;
	}

	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public String getHospitalPlotNo() {
		return hospitalPlotNo;
	}

	public void setHospitalPlotNo(String hospitalPlotNo) {
		this.hospitalPlotNo = hospitalPlotNo;
	}

	public String getHospitalStreet() {
		return hospitalStreet;
	}

	public void setHospitalStreet(String hospitalStreet) {
		this.hospitalStreet = hospitalStreet;
	}

	public String getHospitalCity() {
		return hospitalCity;
	}

	public void setHospitalCity(String hospitalCity) {
		this.hospitalCity = hospitalCity;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public Integer getContactPersonId() {
		return contactPersonId;
	}

	public void setContactPersonId(Integer contactPersonId) {
		this.contactPersonId = contactPersonId;
	}

	public String toString() {
		return String.format("%d,%s,%s,%s,%s,%d,%L", hospitalId, hospitalName, hospitalPlotNo, hospitalStreet,
				hospitalCity, pinCode, contactPersonId);
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
			Hospital other = (Hospital) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.hospitalId;
	}
}
