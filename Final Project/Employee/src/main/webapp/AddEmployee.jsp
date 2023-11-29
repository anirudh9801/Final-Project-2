<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
</head>
<body>
    <h1>Add Employee</h1>
    
    <f:view>
        <h:form>
            <label for="employeeId">Employee ID:</label>
            <h:inputText id="employeeId" value="#{employeeBean.employeeId}" />

            <label for="firstName">First Name:</label>
            <h:inputText id="firstName" value="#{employeeBean.firstName}" />

            <label for="lastName">Last Name:</label>
            <h:inputText id="lastName" value="#{employeeBean.lastName}" />

            <label for="birthday">Birthday:</label>
            <!-- Use h:inputDate or another suitable component for date input -->
            <h:inputText id="birthday" value="#{employeeBean.birthday}" />

            <label for="gender">Gender:</label>
            <h:inputText id="gender" value="#{employeeBean.gender}" />

            <label for="department">Department:</label>
            <h:inputText id="department" value="#{employeeBean.department}" />

            <label for="position">Position:</label>
            <h:inputText id="position" value="#{employeeBean.position}" />

            <label for="salary">Salary:</label>
            <!-- Use h:inputText for numerical input -->
            <h:inputText id="salary" value="#{employeeBean.salary}" />

            <h:commandButton value="Add Employee" action="#{employeeBean.addEmployee}" />

        </h:form>
    </f:view>
</body>
</html>
