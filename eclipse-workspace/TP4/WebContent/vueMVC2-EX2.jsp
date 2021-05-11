<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Bienvenue à votre session</h1>
<%if (request.getParameter("firstName").equals("")){ %>
<jsp:useBean id="nameBean"
             type="modele.NameBean"
             scope="session" />
<h2>Prénom :
<jsp:getProperty name="nameBean"
                 property="firstName" />
</h2>
<h2>Nom :
<jsp:getProperty name="nameBean"
                 property="lastName" />
</h2>  
<% } else { %>   
<h2>Prénom :
<%=request.getParameter("firstName") %>
</h2>                   
<h2>Nom :
<%=request.getParameter("lastName") %>
</h2> 
<% } %>
<br><br>
<form action="indexMVC2-EX2.html" method="post">
<input type="submit" value="Retour">
</form>
</body>
</html>