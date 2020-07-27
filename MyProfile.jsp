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


<h1 align="center" >my profile</h1>
<a href="login.html">logout</a>
<%
try{
	String nameu=(String)session.getAttribute("uname");
/* 	String unla=request.getParameter("unl");
	String psla=request.getParameter("psdl");  */ 
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lokesh_chandra","root","");
		Statement st= con.createStatement();
		ResultSet rs=st.executeQuery("select * from registrationform where USER_NAME='"+nameu+"' ");
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
		
			
			
			%>
			<form action="updateaction.jsp">
			<table border="1"  align="center">
			<tr><td>FIRST_NAME::</td ><td><input type="text"name="fnm"value="<%=f %>" ></td></tr>
			<tr><td>LAST_NAME::</td><td><input type="text"name="lnm"value="<%=l %>"/></td></tr>
			<tr><td>USER_NAME::</td><td><input type="text"name="unm"value="<%=u %>"readonly></td></tr>
			<tr><td>PASSWORD::</td><td><input type="text"name="pm"value="<%=p %>"/></td></tr>
			<tr><td>COUNTRY_CODE::</td><td><input type="text"name="ccm"value="<%=cc %>"/></td></tr>
			<tr><td>MOBILE::</td><td><input type="text"name="mm"value="<%=m %>"/></td></tr>
			<tr><td>EMAIL::</td><td><input type="text"name="em"value="<%=e %>"/></td></tr>
			<tr><td>BIRTHDAY::</td><td><input type="text"name="bm"value="<%=b %>"/></td></tr>
			<tr><td>OCCUPATION::</td><td><input type="text"name="om"value="<%=o %>"/></td></tr>
			<tr><td>GENDER::</td><td><input type="text"name="gm"value="<%=g %>"/></td></tr>
			<tr><td>ADDRESS::</td><td><input type="text"name="am"value="<%=a %>"/></td></tr>
			<tr><td>SKILLS::</td><td><input type="text"name="sm"value="<%=s %>"/></td></tr>
			<tr align="center"><td colspan="2"><input type="submit" value="UPDATE"></td></tr>
			</table>
			</form>
<% 
}
}
             catch(Exception e)
{
	e.printStackTrace();
}



%>

</body>
</html>