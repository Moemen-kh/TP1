<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3> Damier de 10 lignes et 10 colonnes</h3>
<table border="3">
<%
String color="";
for (int N=1;N<11;N++) {	
%>
<tr>
<% if ((N%2)==0) color="BLACK"; else color="#87CEEB"; %>
  <%
  for (int er=1;er<11;er++) {
	  if(er%2==0)
%>
<td bgcolor=<%= color %> width="30px" height="30px"></td>
<%if(color.equals("BLACK")){
	color="#87CEEB" ; }
	else {
	color="BLACK"; }%>
<% }%> </tr> <% } %>
</table>
</body>
</html>