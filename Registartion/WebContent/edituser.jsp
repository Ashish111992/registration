<%@page import="ashish.userDao"%>  
<jsp:useBean id="u" class="ashish.user"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=userDao.update(u);  
response.sendRedirect("showuser.jsp");  
%>  