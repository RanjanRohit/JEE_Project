<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background-color: #255E69;
}
</style>
</head>
<body>
<%
String username=request.getParameter("username1");
int r = Integer.parseInt(username);
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vps","root","45013rR1#");
Statement st=con.createStatement();
try
{
st.executeUpdate("DELETE FROM users WHERE id ='"+username+"'");
boolean flag=true;
if(flag==true)
{
out.println("Deleted");
}
else
{
out.println("Not possible : error!");
}
}
catch(Exception e)
{
out.println("Exception");
}
response.sendRedirect("CSS.jsp");
%>
</body>
</html>