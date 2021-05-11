<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Affichage d'un client</title>
</head>
<body>
<jsp:useBean id="client" class="modele.Client" scope="session"/>
<p>Client créé avec succès ! </p>
<h2>Nom:
 <jsp:getProperty name="client" property="nom"/>
</h2>
<h2>Prénom:
 <jsp:getProperty name="client" property="prenom"/>
</h2>
<h2>Adresse:
<jsp:getProperty name="client" property="adresse"/>
</h2>
<h2>Telephone:
<jsp:getProperty name="client" property="telephone"/>
</h2>
<h2>Email:
<jsp:getProperty name="client" property="email"/>
</h2>
</body>
</html>