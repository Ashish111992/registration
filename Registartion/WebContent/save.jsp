<%@page import="ashish.userDao"%>  
<jsp:useBean id="u" class="ashish.user"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=userDao.save(u);  
if(i>0){  
response.sendRedirect("showuser.jsp");  
}else{  
response.sendRedirect("error.jsp");  
}  
%>  