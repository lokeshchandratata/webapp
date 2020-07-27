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
<title>ACCESIBLE TO ADMIN ONLY</title>
<style>

body{
background-image:url();
background-color:black;
background-size:cover;
background-position:center;
color:red;
font-weight:bolder;
}
</style>
</head>
<body>
<h1 align="center">WELCOME TO ADMINISTRATOR BLOCK</h1>
<table border="1"  align="center">
<tr>
<td>FIRST_NAME</td ><td>LAST_NAME</td><td>USER_NAME</td><td>PASSWORD</td><td>COUNTRY_CODE</td><td>MOBILE</td><td>EMAIL</td><td>BIRTHDAY</td><td>OCCUPATION</td><td>GENDER</td><td>ADDRESS</td><td>SKILLS</td><td>STATUS</td><td>ACCEPT/REJECT</td>
</tr>
<%
try{
	//String nameu=(String)session.getAttribute("uname");
/* 	String unla=request.getParameter("unl");
	String psla=request.getParameter("psdl");  */ 
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lokesh_chandra","root","");
		Statement st= con.createStatement();
		ResultSet rs=st.executeQuery("select * from registrationform ");
	   while(rs.next()){

			String f=rs.getString("FIRST_NAME");    
			String l=rs.getString("LAST_NAME");      
			String u=rs.getString("USER_NAME");
			String p=rs.getString("PASSWORD");   
			String cc=rs.getString("COUNTRY_CODE");
			String m=rs.getString("MOBILE");      
			String e=rs.getString("EMAIL");
			String b=rs.getString("BIRTHDAY"); 
			String o=rs.getString("OCCUPATION");
			String g=rs.getString("GENDER");
			String a=rs.getString("ADDRESS");
			String s=rs.getString("SKILLS");
			String status=rs.getString("STATUS");
			
			
			%>
			
			
			<tr>
			    <td><%=f %></td >
			    <td><%=l %></td>
			    <td><%=u %></td>
			    <td><%=p %></td>
			    <td><%=cc %></td>
			    <td><%=m %></td>
			    <td><%=e %></td>
			    <td><%=b %></td>
			    <td><%=o %></td> 
			    <td><%=g %></td>
			    <td><%=a %></td>
	    	    <td><%=s %></td>
	    	    <td><%=status %></td>
	    	     <td><a href="accept.jsp?name=<%=u%>">ACCEPT</a>||<a href="reject.jsp?name=<%=u%>">REJECT</a></td>
	      </tr>
			
			
			
<% 
}
}
             catch(Exception e)
{
	e.printStackTrace();
}
%><p align="right" position="fixed">
<a href="index.HTML"><input type="button"  value="LOGOUT"></a></p>
</table>
</body>
</html>