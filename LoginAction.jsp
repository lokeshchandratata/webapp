<%@page import= "java.io.IOException"%>
<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.Statement"%>
<%@page import ="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String unla=request.getParameter("unl");
String psla=request.getParameter("psdl");

try{
	if(unla.equals("ADMIN") & psla.equals("ADMIN")){
		response.sendRedirect("admin.jsp");
	}else{
		Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lokesh_chandra","root","");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from registrationform where USER_NAME='"+unla+"'and PASSWORD='"+psla+"' and STATUS='ACCEPTED' ");
   
	
	
	if(rs.next())
	{
		String FN=rs.getString("FIRST_NAME");
		String LN=rs.getString("LAST_NAME");
		String UN=rs.getString("USER_NAME");
		session.setAttribute("fname", FN);
		session.setAttribute("lname", LN);
		session.setAttribute("uname",UN);
		
		response.sendRedirect("userdetails.jsp");
	}
	else {
		//response.sendRedirect("index.HTML");
		out.println("<script type=\"text/javascript\">");
	       out.println("confirm('Username or password incorrect or let ADMIN to accept your request');");
	       out.println("</script>");
	      
	      
	}
	   

}
	}
     
	
catch(Exception e){
	e.printStackTrace();
}
  
%><p align="right">
<a href="login.html"><input type ="button" value="go to login page"></a>
</p></body>
</html>