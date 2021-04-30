<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Counter Page</title>
</head>
<body>
<p> on repère le bean par le nom nomBean<br>
<jsp:useBean id="nomBean" class="beans.SimpleBean" scope="session"></jsp:useBean>

<p> On accede au compteur avec la méthode getCompteur:
<br> compteur = <%= nomBean.getCompteur() %>
<hr>
On incrémente le compteur avec la méthode increment<% nomBean.increment(); %>

<p>On peut accéder à la propriété par La balise getProperty :<br>
<jsp:getProperty name="nomBean" property="compteur"/>

</body>
</html>