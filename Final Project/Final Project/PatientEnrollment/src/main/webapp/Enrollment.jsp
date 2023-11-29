<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<html lang="en">

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>

<style>
body::before {
	content: "";
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.2); /* Semi-transparent black overlay */
	z-index: -1; /* Place it behind the content */
}

body {
	text-align: center;
	font-family: "Poppins";
	color: #fff;
	display: flex;
	align-items: center;
	justify-content: center;
	/*  height: 100vh; */
	margin: 0;
	background-image: url('bgf.jpg');
	/* background-image: url('doctor.png'); */
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

#form {
	font-family: "Poppins";
	color: #FF0000;
	max-width: 900px;
	margin: 0 auto;
	padding: 10px;
	background-color: rgba(0, 0, 0, 0.7);
	/* Black background with 70% opacity */
	border-radius: 3px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	/* border: 2px solid #000; */
}

.h2-container {
	background-color: #007bff;
	padding: 10px;
	display: contents;
}

h2 {
	font-size: 31px;
	margin: 2px 0;
	color: white;
}

label {
	/* display: block; */
	/*  margin-top: 10px; */
	/* font-weight: bold; */
	font-size: 16px;
	color: #f0f0f0;
	white-space: nowrap;
}

input[type="text"], input[type="password"], select {
	width: calc(100% - 22px);
	/* Adjusted width to account for padding and border */
	padding: 10px;
	margin-top: 4px;
	border: 1px solid #ccc;
	border-radius: 3px;
	height: 40px;
	/* background-color: #d3d3d3; */
	background-color: rgba(211, 211, 211, 0.5);
}

input[type="text"]:hover, input[type="password"]:hover, select:hover {
	background-color: #ddd;
}

input[type="text"]:focus, input[type="password"]:focus, select:focus {
	background-color: #fff;
	border-color: #007bff;
	box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

.container {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.field {
	width: 48%;
	position: relative;
	margin-bottom: 20px; /* Add some spacing between fields */
}

.field.password-container {
	width: 48%;
}

.button-container {
	width: 100%; /* Make buttons full width */
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
}

.my-button {
	background-color: #F44336;
	color: #fff;
	padding: 10px 20px;
	margin: 10px;
	border: 1px solid #000;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.my-button:hover {
	background-color: #0056b3;
	transform: scale(1.05);
}

a {
	color: #000;
	text-decoration: none;
	transition: color 0.3s, text-decoration 0.3s;
}

a:hover {
	color: #0056b3;
	text-decoration: underline;
}

/* Toggle Button Styling */
#toggleButton {
	cursor: pointer;
	color: #007bff;
	text-decoration: underline;
}

#toggleIcon {
	display: inline-block;
	margin-left: 5px;
}

#form img {
	max-width: 88%;
	margin-top: 9em;
	font-size: 100%;
	font: inherit;
}

.registerimg {
	width: 40%;
	float: left;
}

#w3lDemoBar.w3l-demo-bar a {
	display: block;
	color: #0011ff;
	text-decoration: none;
	line-height: 24px;
	opacity: .6;
	margin-bottom: 20px;
	text-align: center;
}

#right-sidebar {
	width: 90px;
	position: fixed;
	height: 100%;
	z-index: 1000;
	right: 0px;
	top: 0;
	margin-top: 60px;
	-webkit-transition: all .5s ease-in-out;
	-moz-transition: all .5s ease-in-out;
	-o-transition: all .5s ease-in-out;
	transition: all .5s ease-in-out;
	overflow-y: auto;
}

.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

#w3lDemoBar.w3l-demo-bar span.w3l-icon {
	display: block;
}
</style>
</head>
<body>

	<div>



		<div class="h2-container">
			<h2>PATIENT ENROLLMENT</h2>
		</div>

		<hr style="color: grey; width: 1300;" />

		<p style="color: #F0F0F0;">NOTE: Please Fill The Required Fields</p>

		<h:form id="form">

			<div class="registerimg">
				<img src="doctor.png" alt="">
			</div>
			<div class="container">
				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">First
						Name<span style="color: red;">*</span>
					</label>
					<h:inputText id="firstName" value="#{patient.firstName}" />
					<span class="message"><h:message for="form:firstName"></h:message></span>

				</div>

				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">Last
						Name<span style="color: red;">*</span>
					</label>
					<h:inputText id="lastName" value="#{patient.lastName}" />
					<span class="message"><h:message for="form:lastName"></h:message></span>
				</div>

				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">Gender<span
						style="color: red;">*</span></label>
					<h:selectOneMenu id="gender" value="#{patient.gender}">
						<f:selectItem itemLabel="Select Gender" itemValue="" />
						<f:selectItem itemLabel="MALE" itemValue="MALE" />
						<f:selectItem itemLabel="FEMALE" itemValue="FEMALE" />
						<f:selectItem itemLabel="OTHER" itemValue="OTHER" />
					</h:selectOneMenu>
					<span class="message"><h:message for="form:gender" /></span>
				</div>

				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">Date
						of Birth<span style="color: red;">*</span>
					</label>
					<h:inputText id="dob" value="#{patient.dob}">
						<f:convertDateTime pattern="dd/MM/yyyy" />
					</h:inputText>
					<h:panelGroup>
						<span class="message"><h:message for="form:dob" /></span>
					</h:panelGroup>
				</div>

				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">UserName<span
						style="color: red;">*</span></label>
					<h:inputText id="userName" value="#{patient.userName}" />
					<span class="message"><h:message for="form:userName" /></span>
				</div>

				<div class="field password-container">
					<label style="display: inline-block; vertical-align: middle;">Password<span
						style="color: red;">*</span></label>
					<h:inputSecret id="Password" value="#{patient.password}"
						autocomplete="new-password"
						onkeyup="checkPasswordStrength(this.value)" />
					<div id="password-strength"
						style="height: 5px; margin-top: 5px; width: 100%;"></div>
					<br /> <span class="message"><h:message for="form:Password" /></span>
				</div>





				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">Email<span
						style="color: red;">*</span></label>
					<h:inputText id="email" value="#{patient.email}" />
					<span class="message"><h:message for="form:email" /></span>
				</div>




				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">Phone
						Number<span style="color: red;">*</span>
					</label>
					<div style="display: flex; margin-left: 12px">
						<h:selectOneMenu id="countryCode" value="#{patient.countryCode}"
							style='width:30%; padding:0px;'>
							<f:selectItem itemLabel="Select Country Code" itemValue="" />
							<f:selectItem itemLabel="+1 (USA)" itemValue="+1" />
							<f:selectItem itemLabel="+44 (UK)" itemValue="+44" />
							<f:selectItem itemLabel="+91 (IN)" itemValue="+91" />
							<f:selectItem itemLabel="+33 (FR)" itemValue="+33" />
							<f:selectItem itemLabel="+49 (DE)" itemValue="+49" />
						</h:selectOneMenu>

						<h:inputText id="phoneno" value="#{patient.phoneno}"
							style='width:65%;' />

					</div>
					<div style='display: flex;'>
						<span class="message" style='width: 30%'><h:message
								for="form:countryCode" /></span> <span class="message"><h:message
								for="form:phoneno"></h:message></span>
					</div>

				</div>



				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">Permanent
						Address<span style="color: red;">*</span>
					</label>

					<h:inputText id="permanentAddress"
						value="#{patient.permanentAddress}" />
					<span class="message"><h:message for="form:permanentAddress"></h:message></span>
				</div>

				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">State<span
						style="color: red;">*</span></label>
					<h:inputText id="permanentState" value="#{patient.permanentState}" />
					<span class="message"><h:message for="form:permanentState"></h:message></span>
				</div>

				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">Postal
						code<span style="color: red;">*</span>
					</label>
					<h:inputText id="permanentPostalCode"
						value="#{patient.permanentPostalCode}" />
					<span class="message"><h:message
							for="form:permanentPostalCode"></h:message></span>
				</div>

				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">City<span
						style="color: red;">*</span></label>
					<h:inputText id="permanentCity" value="#{patient.permanentCity}" />
					<span class="message"><h:message for="form:permanentCity"></h:message></span>
				</div>

				<div class="field">
					<label style="display: inline-block; vertical-align: middle;">Country<span
						style="color: red;">*</span></label>
					<h:inputText id="permanentCountry"
						value="#{patient.permanentCountry}" />
					<span class="message"><h:message for="form:permanentCountry"></h:message></span>
				</div>
				<div style="margin: auto;">
					<div style="display: contents;" class="field">
						<label>Same as Permanent Address</label>
						<h:selectBooleanCheckbox id="sameAsPermanent"
							onclick="copyPermanentAddress()" />
					</div>
				</div>






				<div class="container">
					<div class="field">
						<label>Corresponding Address</label>
						<h:inputText id="address" value="#{patient.address}" />
						<span class="message"><h:message for="form:address"></h:message></span>
					</div>
					<div class="field">
						<label>Country</label>
						<h:inputText id="country" value="#{patient.country}" />
						<span class="message"><h:message for="form:country"></h:message></span>
					</div>

					<div class="field">
						<label>State</label>
						<h:inputText id="state" value="#{patient.state}" />
						<span class="message"><h:message for="form:state"></h:message></span>
					</div>
					<div class="field">
						<label>City</label>
						<h:inputText id="city" value="#{patient.city}" />
						<span class="message"><h:message for="form:city"></h:message></span>
					</div>


					<div class="field">
						<label>Postal code</label>
						<h:inputText id="postalCode" value="#{patient.postalCode}" />
						<span class="message"><h:message for="form:postalCode"></h:message></span>
					</div>

					<div class="field">
						<label>Medical History</label>
						<h:inputText id="medHistory" value="#{patient.medHistory}" />
						<span class="message"><h:message for="form:medHistory"></h:message></span>
					</div>



					<!-- 
					<div class="field">
						<label>Medical History</label>
						<textarea id="form:medHistory" name="form:medHistory" cols="40"
							rows="5" style="height: 46px; width: 249px;"></textarea>
						<span class="message"></span>
					</div>
 -->


				</div>


				<!-- Add a checkbox for accepting terms and conditions with a link -->
				<div style="margin-top: 10px;">
					<input type="checkbox" id="acceptTerms" required="true" /> <label
						for="acceptTerms">I agree to the <a
						href="terms_and_conditions.html" target="_blank"
						style="color: #0011ff;">Terms and Conditions</a></label>
				</div>


				<div class="button-container">
					<h:commandButton styleClass="my-button"
						action="#{patientController.addPatientValid(patient)}"
						value="Sign Up" />
					<input class="my-button" type="reset" value="Reset">
				</div>

				<%--Back Button  --%>

				<!-- <div class="button-container">
					<a class="my-button" href="javascript:history.go(-1)">Back</a>
				</div> -->


				<div class="button-container">
					<br /> <a style="color: #007bff;" href="login.jsp">Already
						have an account?</a>
				</div>



			</div>

		</h:form>
		<div class="footer" style="font-size: 20px;">
			<p class="agile-copyright">
				© 2023 Patient Registration Form. All Rights Reserved | <a
					href="https://www.infinite.com/">Infinite Computer Solutions</a>
			</p>
		</div>
	</div>
	<div id="right-sidebar" class="right-sidebar-notifcations nav-collapse">
		<div class="bs-example bs-example-tabs right-sidebar-tab-notification"
			data-example-id="togglable-tabs">

			<div id="w3lDemoBar" class="w3l-demo-bar">
				<div class="demo-btns">


					<!-- back button link -->

					<a href="Menubar.jsp"> <span class="w3l-icon -back"> <span
							class="fa fa-arrow-left"></span> <img src="backb.jpg" alt="Back"
							style="height: 36px; width: 36px;">
					</span> <span class="w3l-text"></span>
					</a> <a href="#" onclick="scrollToTop()"> <span
						class="fa fa-arrow-up"></span> <img src="scrollup.jpg"
						alt="Scroll Up" style="height: 36px; width: 36px;">
					</a> <a href="#" onclick="scrollToDown()"> <span
						class="fa fa-arrow-down"></span> <img src="scrollDown.jpg"
						alt="Scroll Down" style="height: 36px; width: 36px;">
					</a>
				</div>
			</div>

			<div class="right-sidebar-panel-content animated fadeInRight"
				tabindex="5003" style="overflow: hidden; outline: none;"></div>
		</div>
	</div>

</body>

<script>
	function copyPermanentAddress() {
		var sameAsPermanentCheckbox = document
				.getElementById("form:sameAsPermanent");
		var addressInput = document.getElementById("form:address");
		var cityInput = document.getElementById("form:city");
		var stateInput = document.getElementById("form:state");
		var countryInput = document.getElementById("form:country");
		var postalcodeInput = document.getElementById("form:postalCode");

		if (sameAsPermanentCheckbox.checked) {
			// Copy values from permanent address fields to corresponding fields
			addressInput.value = document
					.getElementById("form:permanentAddress").value;
			cityInput.value = document.getElementById("form:permanentCity").value;
			stateInput.value = document.getElementById("form:permanentState").value;
			countryInput.value = document
					.getElementById("form:permanentCountry").value;
			postalcodeInput.value = document
					.getElementById("form:permanentPostalCode").value;
		} else {
			// Clear the values if the checkbox is unchecked
			addressInput.value = "";
			cityInput.value = "";
			stateInput.value = "";
			countryInput.value = "";
			postalcodeInput.value = "";
		}
	}
</script>
<script>
	function checkPasswordStrength(password) {
		var strengthMeter = document.getElementById("password-strength");

		if (password.length < 6) {
			/* strengthMeter.innerText = "Weak"; */
			strengthMeter.style.backgroundColor = "red";
		} else if (password.length < 10) {
			/* strengthMeter.innerText = "Medium"; */
			strengthMeter.style.backgroundColor = "orange";
		} else {
			/* strengthMeter.innerText = "Strong"; */
			strengthMeter.style.backgroundColor = "green";
		}
	}
</script>
<script>
	function scrollToTop() {
		window.scrollTo({
			top : 0,
			behavior : "auto"
		});
	}
</script>


<script>
	function scrollToDown() {
		window.scrollTo({
			top : document.body.scrollHeight,
			behavior : "smooth"
		});
	}
</script>


	</html>
</f:view>