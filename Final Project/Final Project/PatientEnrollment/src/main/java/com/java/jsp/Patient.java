package com.java.jsp;

import java.util.Date;


public class Patient {
	private String uhid;
	private String firstName;
	private String lastName;
	private Date dob;
	private String gender;
	private String userName;
	private String password;
	private String phoneno;
	private String email;
	private String status;
	private String medHistory;
	private String address;
	private String countryCode;
    private String city;
    private String state;
    private String postalCode;
    private String country;
	private String permanentAddress;
	private String permanentCity;
	private String permanentState;
	private String permanentPostalCode;
	private String permanentCountry;
	public String getUhid() {
		return uhid;
	}
	public void setUhid(String uhid) {
		this.uhid = uhid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMedHistory() {
		return medHistory;
	}
	public void setMedHistory(String medHistory) {
		this.medHistory = medHistory;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPermanentAddress() {
		return permanentAddress;
	}
	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}
	public String getPermanentCity() {
		return permanentCity;
	}
	public void setPermanentCity(String permanentCity) {
		this.permanentCity = permanentCity;
	}
	public String getPermanentState() {
		return permanentState;
	}
	public void setPermanentState(String permanentState) {
		this.permanentState = permanentState;
	}
	public String getPermanentPostalCode() {
		return permanentPostalCode;
	}
	public void setPermanentPostalCode(String permanentPostalCode) {
		this.permanentPostalCode = permanentPostalCode;
	}
	public String getPermanentCountry() {
		return permanentCountry;
	}
	public void setPermanentCountry(String permanentCountry) {
		this.permanentCountry = permanentCountry;
	}
	@Override
	public String toString() {
		return "Patient [uhid=" + uhid + ", firstName=" + firstName + ", lastName=" + lastName + ", dob=" + dob
				+ ", gender=" + gender + ", userName=" + userName + ", password=" + password + ", phoneno=" + phoneno
				+ ", email=" + email + ", status=" + status + ", medHistory=" + medHistory + ", address=" + address
				+ ", countryCode=" + countryCode + ", city=" + city + ", state=" + state + ", postalCode=" + postalCode
				+ ", country=" + country + ", permanentAddress=" + permanentAddress + ", permanentCity=" + permanentCity
				+ ", permanentState=" + permanentState + ", permanentPostalCode=" + permanentPostalCode
				+ ", permanentCountry=" + permanentCountry + "]";
	}
	public Patient(String uhid, String firstName, String lastName, Date dob, String gender, String userName,
			String password, String phoneno, String email, String status, String medHistory, String address,
			String countryCode, String city, String state, String postalCode, String country, String permanentAddress,
			String permanentCity, String permanentState, String permanentPostalCode, String permanentCountry) {
		super();
		this.uhid = uhid;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.gender = gender;
		this.userName = userName;
		this.password = password;
		this.phoneno = phoneno;
		this.email = email;
		this.status = status;
		this.medHistory = medHistory;
		this.address = address;
		this.countryCode = countryCode;
		this.city = city;
		this.state = state;
		this.postalCode = postalCode;
		this.country = country;
		this.permanentAddress = permanentAddress;
		this.permanentCity = permanentCity;
		this.permanentState = permanentState;
		this.permanentPostalCode = permanentPostalCode;
		this.permanentCountry = permanentCountry;
	}
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}