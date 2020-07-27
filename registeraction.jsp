<%@page import= "java.io.IOException"%>
<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.Statement"%>
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
String FIRST_NAME=request.getParameter("fn");    String LAST_NAME=request.getParameter("ln");      String USER_NAME=request.getParameter("un");

String PASSWORD=request.getParameter("psd");   

String COUNTRY_CODE=request.getParameter("country_code");     String MOBILE=request.getParameter("phone");      

String EMAIL=request.getParameter("email");                 String BIRTHDAY=request.getParameter("bday");
 
String OCCUPATION=request.getParameter("options");

String GENDER=request.getParameter("gender");                 String ADDRESS=request.getParameter("add");

String SKILLS=request.getParameter("skill");
	
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LOKESH_CHANDRA","root","");
	Statement st= con.createStatement();
    int i=st.executeUpdate("insert into registrationform values('"+FIRST_NAME+"','"+LAST_NAME+"','"+USER_NAME+"','"+PASSWORD+"','"+COUNTRY_CODE+"','"+MOBILE+"','"+EMAIL+"','"+BIRTHDAY+"','"+OCCUPATION+"','"+GENDER+"','"+ ADDRESS+"','"+SKILLS+"','PENDING')");	
if(i>0)
{
	response.sendRedirect("login.html");
	}
}
catch(Exception e)
{
	e.printStackTrace();
	}	
%>
</body>
</html>