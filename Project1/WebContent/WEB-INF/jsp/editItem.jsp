<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Cart Items</title>
<style>
#Table-box {
	width: 600px;
	padding: 20px;
	margin: 100px auto;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
	border: 1px solid #31708f;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

.msg1{
	color:red
}
</style>
</head>
<body bgcolor="#AAE6FA">

<center>
<div id="Table-box">
<h1>Edit Existing Item</h1>

<c:url var="saveUrl" value="/item/edit?id=${itemAttribute.itemId}" />
<form:form modelAttribute="itemAttribute" enctype="multipart/form-data" method="POST" action="${saveUrl}">
	<table>
	
		<tr>
			<td>Category Id:</td>
			<td><input type="text" value="${categoryId}" />
		</tr>
		
		<tr>
			<td><form:label path="itemId"></form:label></td>
			<td><form:input path="itemId" type="hidden"/></td>
		</tr>

		<tr>
			<td><form:label path="itemName">itemName:</form:label></td>
			<td><form:input path="itemName"/></td>
		</tr>
		
		<tr>
			<td><form:label path="itemPrice">itemPrice:</form:label></td>
			<td><form:input path="itemPrice"/></td>
		</tr>
		
		<tr>
			<td><form:label path="itemContent">itemContent:</form:label></td>
			<td><form:input path="itemContent"/></td>
		</tr>
		<tr>
		<td><form:label path="itemImage">itemImage</form:label></td>
        <td><input type="file" name="file" id="file"></input></td>
		</tr>
		
	</table>
	
	<input type="submit" value="Save" />
</form:form>
</div>
</center>
</body>
<div id="footer">
	<p><a href="http://localhost:8090/Project1/record/Logout">Logout</a></p>
</div>
</html>