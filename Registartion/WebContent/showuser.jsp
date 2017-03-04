<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>show</title>
</head>
<body bgcolor="#967686">


  <%@page import="ashish.userDao,ashish.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<center> 
<h1>Registered Member</h1>  
  
<%  
List<user> list=userDao.getAllRecords();  
request.setAttribute("list",list);  

%>  
  
<table border="1" width="90%">  
<tr><th>Id</th><th>First Name</th><th>Last Name</th><th>Email</th>  
<th>Phone Number</th><th>Location</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.id}</td><td>${u.fname}</td><td>${u.lname}</td>  
<td>${u.email}</td><td>${u.pnumber}</td><td>${u.location}</td>  
<td><a href="editform.jsp?id=${u.id}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.id}">Delete</a></td></tr>  
</c:forEach>  
</table>  
</center>
</body>
</html>