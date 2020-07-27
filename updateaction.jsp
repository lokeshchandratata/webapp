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
String fnmm=request.getParameter("fnm");
String lnm=request.getParameter("lnm");

String unm=request.getParameter("unm");
String pm=request.getParameter("pm");
String ccm=request.getParameter("ccm");
String mm=request.getParameter("mm");
String em=request.getParameter("em");
String bm=request.getParameter("bm");

String om=request.getParameter("om");
String gm=request.getParameter("gm");
String am=request.getParameter("am");
String sm=request.getParameter("sm");


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lokesh_chandra","root","");
	Statement st= con.createStatement();
    int i=st.executeUpdate("update  registrationform set FIRST_NAME='"+fnmm+"', LAST_NAME='"+lnm+"' , PASSWORD='"+pm+"' , COUNTRY_CODE='"+ccm+"', MOBILE='"+mm+"', EMAIL='"+em+"' , BIRTHDAY='"+bm+"' , OCCUPATION='"+om+"' , GENDER='"+gm+"' , ADDRESS='"+am+"' , SKILLS='"+sm+"' where USER_NAME='"+unm+"'");	
if(i>0)
{
	response.sendRedirect("MyProfile.jsp");
	}
}
catch(Exception ee)
{
	ee.printStackTrace();
	}	




%>
</body>
</html>