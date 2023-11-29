package com.java.emp;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class EmployeeDAOImpl implements EmployeeDao {

	SessionFactory sf;
	Session session;

	@Override
	public String addEmployee(Employee employee) {
		sf = SessionHelper.getConnection();
		session = sf.openSession();
		Transaction trans = session.beginTransaction();

		session.save(employee);
		trans.commit();

		if (session != null) {
			session.close();
		}

		return "Employee added successfully";
	}
}
