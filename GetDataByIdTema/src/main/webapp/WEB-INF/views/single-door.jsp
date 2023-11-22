<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.Doors" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Door</title>
</head>
<body>
<h1>  Door Page </h1>
<% Doors w =(Doors) request.getAttribute("dr"); %>
<% if(w!=null) { %>
<p> Watch id: <%=w.getId() %> </p>
<p> Watch material: <%=w.getMaterial() %> </p>
<p> Watch height: <%=w.getHeight() %> </p>
<p> Watch width: <%=w.getWidth() %> </p>
<p> Watch installation date: <%=w.getInstallationDate() %> </p>

<%}  else {%>
Nu exista acest Id!
<% }%>
</body>
</html>