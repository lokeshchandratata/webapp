<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String names=(String)session.getAttribute("fname");
String namel=(String)session.getAttribute("lname");
%>



<h1>WELCOME MR/MRS:<%=names %>&nbsp;<%=namel %></h1>

 <a href="MyProfile.jsp">open</a>
 
</body>
</html>