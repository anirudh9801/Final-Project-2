package com.java.jsp;

import java.util.regex.Pattern;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

public class PatientController {

	private PatientDaoImpl daoImpl;

	public PatientDaoImpl getDaoImpl() {
		return daoImpl;
	}

	public void setDaoImpl(PatientDaoImpl daoImpl) {
		this.daoImpl = daoImpl;
	}

	public String addPatientValid(Patient patient) {
		System.out.println(patient);
//		System.out.println(daoImpl);
		System.out.println("addPatientValid is Hittingggggggggg");
		System.out.println(addValid(patient));
		if (addValid(patient)) {
			return daoImpl.addPatient(patient);
		}
		return "";

	}

	public boolean addValid(Patient patient) {
		FacesContext context = FacesContext.getCurrentInstance();
		String firstName = "^[A-Za-z\\s]+$";
		String lastName = "^[A-Za-z\\s]+$";
		String userName = "^[^\\s]{8,16}$";
//		String userNameRegex = "^[a-zA-Z0-9_\\-.]{8,16}$";
		String email = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
		String password = "^(?=.*[A-Z])(?=.*[a-z0-9])(?=.*[^a-zA-Z0-9]).{8,18}$";
		String phoneno = "^(\\+\\d{1,4})?\\d{10}$";
		String postalCode = "^[0-9]{6}$";

//FIRSTNAME
		boolean flag = true;
		System.out.println("FirstName Length is " + patient.getFirstName().length());
		if (patient.getFirstName().length() <= 0) {
			context.addMessage("form:firstName", new FacesMessage("FirstName Cannot be Empty..."));
			System.out.println("FirstName Null Failed...");
			flag = false;
		}

		if (!Pattern.matches(firstName, patient.getFirstName())) {
			context.addMessage("form:firstName", new FacesMessage("Invalid FirstName. Only letters are allowed."));
			System.out.println("FirstName Failed...");
			flag = false;
		}

//PASSWORD

		if (patient.getPassword().length() <= 0) {
			context.addMessage("form:Password", new FacesMessage("Password Cannot be Empty..."));
			System.out.println("Password Null Failed...");
			flag = false;
		} else if (!Pattern.matches(password, patient.getPassword())) {
			context.addMessage("form:Password", new FacesMessage("Invalid Password format.Hint: @Abcde1234"));
			System.out.println("Password failed.");
			flag = false;
		}

//USERNAME		
		if (!Pattern.matches(userName, patient.getUserName())) {
			context.addMessage("form:userName", new FacesMessage("Username Contains min 8 characters."));
			System.out.println("UserName Failed...");
			flag = false;
		}
//LASTNAME
		if (patient.getLastName().length() <= 0) {
			context.addMessage("form:lastName", new FacesMessage("LastName Cannot Be Empty."));
			System.out.println("LastName Failed...");
			flag = false;
		}
		if (!Pattern.matches(lastName, patient.getLastName())) {
			context.addMessage("form:lastName", new FacesMessage("Invalid LastName. Only letters are allowed."));
			System.out.println("LastName Failed...");
			flag = false;
		}

//GMAIL
		if (patient.getEmail().length() <= 0) {
			context.addMessage("form:email", new FacesMessage("Email Cannot Be Empty"));
			System.out.println("Email Failed...");
			flag = false;
		}
		if (!Pattern.matches(email, patient.getEmail())) {
			context.addMessage("form:email", new FacesMessage("Invalid Email."));
			System.out.println("Email Failed...");
			flag = false;
		}
//ADDRESS
		if (patient.getAddress().length() <= 0) {
			context.addMessage("form:address", new FacesMessage("Please Enter Your Address."));
			System.out.println("Enter Your Address");
			flag = false;
		}
//MEDICALHISTORY

		if (patient.getMedHistory().length() <= 0) {
			context.addMessage("form:medHistory", new FacesMessage("Please Enter Your Medical History."));
			System.out.println("Enter Your MEdHistory");
			flag = false;
		}

		/*
		 * if (patient.getMedHistory() == null ||
		 * patient.getMedHistory().trim().isEmpty()) {
		 * context.addMessage("form:medHistory", new
		 * FacesMessage("Please Enter Your Medical History."));
		 * System.out.println("Enter Your Medical History"); flag = false; }
		 */

//DOB

		if (patient.getDob() == null) {
			context.addMessage("form:dob", new FacesMessage("DOB cannot be empty."));
			System.out.println("Enter Your DOB");
			flag = false;
		}

//GENDER
		if (patient.getGender() == null || patient.getGender().isEmpty()) {
			context.addMessage("form:gender", new FacesMessage("Select Gender."));
			System.out.println("Select Gender Failed...");
			flag = false;
		}
//PHONENUMBER

		if (patient.getPhoneno().length() <= 0) {
			context.addMessage("form:phoneno", new FacesMessage("Enter Your Phone Number."));
			System.out.println("PhoneNo Failed...");
			flag = false;
		}

		if (!Pattern.matches(phoneno, patient.getPhoneno())) {
			context.addMessage("form:phoneno", new FacesMessage("Invalid Phone Number."));
			System.out.println("PhoneNo Failed...");
			flag = false;
		}

//COUNTRYCODE
		if (patient.getCountryCode() == null || patient.getCountryCode().isEmpty()) {
			context.addMessage("form:countryCode", new FacesMessage("Select Country Code"));
			System.out.println("Select Country Code");
			flag = false;
		}
// POSTAL CODE
		if (patient.getPostalCode().length() <= 0) {
			context.addMessage("form:postalCode", new FacesMessage("Postal Code cannot be empty."));
			System.out.println("Postal Code Failed...");
			flag = false;
		}
		if (!Pattern.matches(postalCode, patient.getPostalCode())) {
			context.addMessage("form:postalCode", new FacesMessage("Invalid Postal Code. Enter a valid 6-digit code."));
			System.out.println("Postal Code Failed...");
			flag = false;
		}
//CITY
		if (patient.getCity().length() <= 0) {
			context.addMessage("form:city", new FacesMessage("Please Enter Your City"));
			System.out.println("City Failed");
			flag = false;
		}
//STATE
		if (patient.getState().length() <= 0) {
			context.addMessage("form:state", new FacesMessage("Please Enter Your City"));
			System.out.println("State Failed");
			flag = false;
		}
//COUNTRY
		if (patient.getCountry().length() <= 0) {
			context.addMessage("form:country", new FacesMessage("Please Enter Your Country."));
			System.out.println("Country failed.....");
			flag = false;

		}
//PERMANENT ADDRESS
		if (patient.getPermanentAddress().length() <= 0) {
			context.addMessage("form:permanentAddress", new FacesMessage("Please Enter Your Address"));
			System.out.println("permanentaddress failed");
			flag = false;
		}
//P COUNTRY
		if (patient.getPermanentCountry().length() <= 0) {
			context.addMessage("form:permanentCountry", new FacesMessage("Please Enter your Country"));
			System.out.println("permanentCountry failed");
			flag = false;
		}
//P STATE
		if (patient.getPermanentState().length() <= 0) {
			context.addMessage("form:permanentState", new FacesMessage("Please Enter your State"));
			System.out.println("permanentState failed");
			flag = false;
		}
//P CITY
		if (patient.getPermanentCity().length() <= 0) {
			context.addMessage("form:permanentCity", new FacesMessage("Please Enter your City"));
			System.out.println("permanentCity failed");
			flag = false;
		}
//P POSTALCODE

		if (patient.getPermanentPostalCode().length() <= 0) {
			context.addMessage("form:permanentPostalCode", new FacesMessage("Please Enter your Postalcode"));
			System.out.println("Postalcode failed");
			flag = false;
		}
		if (!Pattern.matches(postalCode, patient.getPermanentPostalCode())) {
			context.addMessage("form:permanentPostalCode", new FacesMessage("Please Enter Valid PostalCode"));
			System.out.println("permanentPostalCode id failed of pattern matching");
			flag = false;
		}

		return flag;
	}
}
