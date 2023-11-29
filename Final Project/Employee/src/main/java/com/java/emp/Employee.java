	package com.java.emp;
	
	import java.util.Date;
	
	public class Employee {
		private int employeeId;
		private String firstName;
		private String lastName;
		private Date dateofbirth;
		private String department;
		private String salary;
		private String position;
		public int getEmployeeId() {
			return employeeId;
		}
		public void setEmployeeId(int employeeId) {
			this.employeeId = employeeId;
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
		public Date getDateofbirth() {
			return dateofbirth;
		}
		public void setDateofbirth(Date dateofbirth) {
			this.dateofbirth = dateofbirth;
		}
		public String getDepartment() {
			return department;
		}
		public void setDepartment(String department) {
			this.department = department;
		}
		public String getSalary() {
			return salary;
		}
		public void setSalary(String salary) {
			this.salary = salary;
		}
		public String getPosition() {
			return position;
		}
		public void setPosition(String position) {
			this.position = position;
		}
		@Override
		public String toString() {
			return "Employee [employeeId=" + employeeId + ", firstName=" + firstName + ", lastName=" + lastName
					+ ", dateofbirth=" + dateofbirth + ", department=" + department + ", salary=" + salary
					+ ", position=" + position + "]";
		}
		public Employee(int employeeId, String firstName, String lastName, Date dateofbirth, String department,
				String salary, String position) {
			super();
			this.employeeId = employeeId;
			this.firstName = firstName;
			this.lastName = lastName;
			this.dateofbirth = dateofbirth;
			this.department = department;
			this.salary = salary;
			this.position = position;
		}
		public Employee() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		
		
	
	}
