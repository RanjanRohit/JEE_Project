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
<style>
body {
    background-color: #255E69;
    fore-color:#ffffff;
}
</style>
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vps","root","45013rR1#"); 
Statement statement = con.createStatement();
String q="SELECT * FROM suspect";	
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

<td><%=rs.getString("name")%></td>
</tr>

</table>

<%

}

%>
<br/>
<form id="main" method="post" name="main" action="" onsubmit="button1(this);">
    <input type="submit" name="submit" value="Proceed back to Car Park Security System"/> 
</form>

        <SCRIPT LANGUAGE="JavaScript">
            <!--
            function button1(elem)
            {
            	 elem.setAttribute("action","CSS.jsp");
                 elem.submit();
            }    
            // --> 
        </SCRIPT>

</body>
</html>