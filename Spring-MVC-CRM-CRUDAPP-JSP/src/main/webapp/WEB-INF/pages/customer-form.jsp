<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SAVE CUSTOMER</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/add-customer-style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Customer</h3>
		<form:form action="saveCustomer" method="POST" modelAttribute="customer">
		
		<!-- Need to associate this data to with customer id -->
		<form:hidden path="id"/>
		
			<table>
				<tbody>
					<tr>
						<td>FirstNAME</td>
						<td><form:input path="firstname" /></td>
					</tr>
					<tr>
						<td>LastNAME</td>
						<td><form:input path="lastname" /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="save" class="save" /></td>
					</tr>
				</tbody>
			</table>
		</form:form>
	</div>
	
	<div style='clear;both;'>
		<p>
			<a href='${pageContext.request.contextPath}/customer/list'>Back to List</a>
		</p>
	</div>
</body>
</html>