<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> R�sultat </title>
</head>
<form action="index.html"  method="post">
<center>
<% 
   int op1= Integer.parseInt(request.getParameter("op1")); 
   int op2= Integer.parseInt(request.getParameter("op2")); 
   String operation = request.getParameter("operation");
   String resultat ="";
%> 
<%! float result; %>
<h2> le r�sultat est </h2>
<% 
if (operation.equals("addition")){ 
	resultat = String.valueOf(op1+op2);
	result = op1+op2;
}
if (operation.equals("soustraction")){ 
	resultat = String.valueOf(op1-op2);
    result = op1-op2;
}
if (operation.equals("multiplication")){ 
    resultat = String.valueOf(op1*op2);
    result = op1*op2;
}
if (operation.equals("division")){ 
	if (op2 == 0){
%>
<jsp:forward page="erreur.html"></jsp:forward>
<% 
	} else {
	resultat = String.valueOf(op1/op2);
    result = op1/op2;
}     }
%>
 <table>
    <tr>
       <td><h3>R�sultat = </h3></td>
       <td><%=  result %>
     </tr>
  </table>
  <input type="submit" value="Retour">
  </center>
  </form>
</body>
</html>