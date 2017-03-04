<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body bgcolor="#767676">  
<%@page import="ashish.userDao,ashish.user"%>  
  
<%  
String id=request.getParameter("id");  
user u=userDao.getRecordById(Integer.parseInt(id));  
%>  
  
<center><h1>Edit Form</h1></center>  
<form action="edituser.jsp" method="post"> 
<center> 
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td> First Name:</td><td>  
<input type="text" name="fname" value="<%= u.getFname()%>"/></td></tr>  
<tr><td> Last Name:</td><td>  
<input type="text" name="lname" value="<%= u.getLname()%>"/></td></tr>  
<tr><td>Email:</td><td>  
<input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>  
<tr><td>Phone Number:</td><td>  
<input type="text" name="pnumber" value="<%= u.getPnumber()%>"/></td></tr> 
<tr><td>Location</td><td>  
<input type="text" name="location" value="<%= u.getLocation()%>"/></td></tr>   

<tr><td colspan="2"><input type="submit" value="Update"/></td></tr>  
</table>
</center>  
</form>  
  
</body>  
</html>  