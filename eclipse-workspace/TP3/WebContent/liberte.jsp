<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center> 
<h1> Bonjour la liberté </h1>
<jsp:useBean id="liberte" class="beans.Democratie" scope="session"/>
<p>Passons au vote...</p>
<%liberte.voter(); %>
<p>Le nombre de voix après le vote est:</p>
<jsp:getProperty name="liberte" property="voix"/>
</center>
</body>
</html>