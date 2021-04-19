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
float a = Float.parseFloat(request.getParameter("a"));
float b = Float.parseFloat(request.getParameter("b"));
float c = Float.parseFloat(request.getParameter("c"));
float d = b*b-4*a*c;

if (d<0)
{
%>
<body bgcolor="red">
<h3> Aucune résultat réel</h3>
<%
} else if (d==0) { 
%>
<body bgcolor="white">
<p> Il s'agit d'une unique solution x1=x2 : <%= b/(2*a) %></p>
<%
} else {%>
<body bgcolor="green">
<p> Deux solutions Possibles :</p>
<ul>
<li>x1 = <%= -b-Math.sqrt(d)/(2*a) %></li>
<li>x2 = <%= -b+Math.sqrt(d)/(2*a) %></li>
</ul>
<% } %>
</body>
</html>