package com.jenish.studentinfosystem.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	@Column(name = "permanent_address")
	private String permanentAddress;
	@Column(name = "temporary_address")
	private String temporaryAddress;
	@Column(name = "city_name")
	private String cityName;
	@Column(name = "country_name")
	private String countryName;
	@OneToOne
	private User user;

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public String getTemporaryAddress() {
		return temporaryAddress;
	}

	public void setTemporaryAddress(String temporaryAddress) {
		this.temporaryAddress = temporaryAddress;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
