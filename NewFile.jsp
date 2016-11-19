<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="javax.sql.*" %>
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
String username=request.getParameter("username");
String password=request.getParameter("text2");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vps","root","45013rR1#"); 
Statement statement = con.createStatement();
String q="SELECT * FROM users";	
ResultSet rs = statement.executeQuery(q);
while(rs.next()){
%>
<table border="2" bordercolor="#ffffff ">

<tr>

<th>UserName</th>

<th>Password</th>
</tr>

<tr>

<td><%=rs.getString("id")%></td>

<td><%=rs.getString("pw")%></td>
</tr>

</table>

<%

}

%>
<br/>
<form id="main" method="post" name="main" action="" onsubmit="button1(this);">
    <input type="submit" name="submit" value="Proceed back to Car Park Management System"/> 
</form>

        <SCRIPT LANGUAGE="JavaScript">
            <!--
            function button1(elem)
            {
            	 elem.setAttribute("action","CMS.jsp");
                 elem.submit();
            }    
            // --> 
        </SCRIPT>
</body>
</html>