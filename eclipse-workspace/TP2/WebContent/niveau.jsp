<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String nom = request.getParameter("nom");
String opt1 = request.getParameter("opt1");
String opt2 = request.getParameter("opt2");

out.println("Bienvenue " + nom); 

int score = Integer.parseInt(opt1) + Integer.parseInt(opt2);
 
if (score < 3) {
  out.print ("<p> Vous êtes un débutant </p>");
} else if (score < 5) {
  out.print ("<p> Vous avez un niveau moyen </p>");
} else {
  out.print ("<p> Vous êtes un expert ! </p>");
}
%>
</body>
</html>