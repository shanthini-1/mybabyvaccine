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
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * @author shan3102
 *
 */
/*
 * composite key
 */
@Entity
@Table(name="VACCINATION_SCHEDULER")
@IdClass(com.chainsys.mybabyvaccine.compositemodel.ChildVaccineCompositeTable.class)
public class VaccinationSchedular {
	@Id
	@Column(name="CHILD_ID")
	private int childId;
	
	@Id
	@Column(name="VACCINE_ID")
	private int vaccineId;
	
	@NotNull(message = "*Date to vaccinate can not be null")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Column(name="DATE_TO_VACCINATE")
	private Date dateToVaccinate;
	
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
	public Date getDateToVaccinate() {
		return dateToVaccinate;
	}
	public void setDateToVaccinate(Date localDate) {
		this.dateToVaccinate = localDate;
	}
	
	public String toString() {
		return String.format("%d,%d,%s", childId,vaccineId,dateToVaccinate);
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
			VaccinationSchedular other = (VaccinationSchedular) obj;
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
