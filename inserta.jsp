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
<title>Adding Records</title>
<style>
body {
    background-color: #255E69;
}
</style>
</head>
<body>
<%
String username=request.getParameter("username");
int r = Integer.parseInt(username);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vps","root","45013rR1#");
Statement st=con.createStatement();
String sql="insert into Users(id,pw) values("+r+",'"+password+"')";
int flag=st.executeUpdate(sql);
if(flag==1)
{
System.out.println("Added!");
}
else
{
System.out.println("Failed");
}
response.sendRedirect("CSS.jsp");
%>
</body>
</html>