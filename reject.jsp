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


try {
	String nam	=request.getParameter("name");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lokesh_chandra","root","");
	Statement st= con.createStatement();
    int i=st.executeUpdate("update  registrationform set  STATUS='REJECTED' where USER_NAME='"+nam+"' ");	
if(i>0)
{
	response.sendRedirect("database.jsp");
	}
}
catch(Exception ee)
{
	ee.printStackTrace();
	}	
%>
</body>
</html>