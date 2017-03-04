<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
function validate()
{
	 var uname= document.myform.uname.value;
	 var pass1= document.myform.pwd.value;
	 var fname= document.myform.fname.value;
	 var lname= document.myform.lname.value;
	 var location= document.myform.location.value;
	
	  if(myform.uname.value.length==0) 
	  {
		  var uname= document.getElementById("uname");
		  alert("Enter Valid name");
		  document.getElementById('errfn1').innerHTML="Please Enter Name";
		  document.myform.uname.focus();
		  return false;
	
	  }
	  else if((uname.length<3) || (uname.length>15))
		  {
		  alert("Enter Valid length name");
		 // document.getElementById('errfn1').innerHTML="Please Enter Name";
		  document.myform.uname.focus();
		  return false;
		  }
	  else if(myform.pass1.value.length==0)
	  {
		  var pass1= document.getElementById("pass1");
	       document.getElementById('errfn2').innerHTML="Please Enter Password";
	       document.myform.pwd.focus();
			  return false;
	  }
	  
	       
	  
		  else if( (pass1.length<7) ||(pass1.length>15))
	    	{
			  
			  
	    	   alert("Password should be between 7 & 15 character");
	    	   document.myform.pwd.focus();
		        
		        return false;
	    	}
	  
	  else if(myform.fname.value.length==0)
	  {
		  var fname=document.myform.fname.value;
	      document.getElementById('errfn3').innerHTML="Please Enter Password";
	      document.myform.fname.focus();
	      return false;
	  }
	  else if((fname.length<3) || (fname.length>15))
	  {
	  alert("Enter Valid length First Name");
	 // document.getElementById('errfn1').innerHTML="Please Enter Name";
	  document.myform.fname.focus();
	  return false;
	  }
	  else if(myform.lname.value.length==0)
	  {
		  var lname=document.myform.lname.value;
	   document.getElementById('errfn4').innerHTML="Please Enter Last name";
	   document.myform.lname.focus();
	   return false;
	  }
	  else if((lname.length<3) || (lname.length>15))
	  {
	  alert("Enter Valid length last Name");
	 // document.getElementById('errfn1').innerHTML="Please Enter Name";
	  document.myform.lname.focus();
	  return false;
	  }
	 
	  else  if(myform.email.value.length==0)
	  {
		  var email=document.myform.email.value;
		   document.getElementById('errfn5').innerHTML="Please Enter Valid Email";
		   document.myform.email.focus();
		   return false;	  }
	  else if((myform.pnumber.value.length <10) || (myform.pnumber.value.length >10) )
	  {
		  var pnumber=document.myform.pnumber.value;
		   document.getElementById('errfn6').innerHTML="Please Enter 10 digit Number";
		   document.myform.pnumber.focus();
		   return false;
	  }
	  else if(myform.location.value.length==0)
	  {
		  var location=document.myform.location.value;
		   document.getElementById('errfn7').innerHTML="Please Enter Location";
		   document.myform.location.focus();
		   return false;
	  }
	  else if((location.length<3) || (location.length>20))
	  {
	  alert("Enter Valid  Location ");
	 // document.getElementById('errfn1').innerHTML="Please Enter Name";
	  document.myform.location.focus();
	  return false;
	  }
	 }
	 function myFunction() {
		    var pass1 = document.getElementById("pass1").value;
		    var pass2 = document.getElementById("pass2").value;
		    var ok = false;
		    if (pass1 != pass2) {
		        alert("Passwords Do not match");
		        document.myform.pwd.focus();
		        document.myform.confirmPass.focus();
		        return false;
		        
		    }
		   
		    else {
		        alert("Passwords Accept!!!");
		    }
		    return false;
		}

	 function validateemail()  
	 {  
	 var x=document.myform.email.value;  
	 var atposition=x.indexOf("@");  
	 var dotposition=x.lastIndexOf(".");  
	 if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
	   alert("Please enter a valid e-mail address eg:  a@gmail.com"); 
	   document.myform.email.focus();
	   return false;  
	   }  
	 }  
							
		

			
			
	</script>
</head>

<body bgcolor="pink">
<a href="showuser.jsp">Show Records</a>
    
        <form method="post" action="save.jsp" name="myform" >
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Registration Form</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td>User Name</td>
                        <td><input type="text" name="uname" value="" id="uname"  /></input><div id="errfn1"></div></td>
                        
                    </tr>
                    <tr>
                    <td>Password</td>
                        <td><input type="password" name="pwd" value="" id="pass1"   /></input><div id="errfn2"></div></td>
                        
                    </tr>
                    <tr>
                    <td>Confirm Password</td>
                        <td><input type="password" name="confirmPass" id="pass2"  onchange="myFunction()"/></input></td>
                        
                    </tr>
                   
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" id="fname"  ></input><div id="errfn3"></div> </td>
                    </tr>
                    <tr>
                       <td>Last Name</td>
                        <td><input type="text" name="lname" id="lname" /></input><div id="errfn4"></td>
                    </tr>
                    <tr> <td>Email</td>
                        <td><input type="text" name="email" value="" id="email" onblur="validateemail()" /><div id="errfn5"></td></tr>
                    <tr>
                    <tr>
                    
                    <td>Phone Number</td>
                        <td><input type="text" name="pnumber" id="pnumber" /><div id="errfn6"></div> </td></tr>
                    
                    <tr>
                    
                    <td>Location</td>
                        <td><input type="text" name="location" id="location" /><div id="errfn7"></div> </td></tr>
                    </tr>
                    <tr>
                        <td><input type="submit" value="save" onclick="return validate();"></input></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                
            </table>
            
           
      
        
    </center>
        </form>     
    
</body>
</html>