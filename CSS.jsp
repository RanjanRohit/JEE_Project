<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.util.*, javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car Park Security System</title>
<style>
body {
    background-color: #255E69;
}
</style>
</head>
<body>
<b><font color="white">Car Park Security System</font></b><br/>
<br/>
<form id="main" method="post" name="main" action="" onsubmit="button2(this);">
    <input type="submit" name="submit" value="See the suspects"/> 
</form>
<br/>
 <SCRIPT LANGUAGE="JavaScript">
            <!--
            function button2(elem)
            {
            	 elem.setAttribute("action","suspect.jsp");
                 elem.submit();
            }    
            // --> 
        </SCRIPT>
        <br/>
        <br/>
<form id="main" method="post" name="main" action="" onsubmit="button1(this);">
    <input type="submit" name="submit" value="Proceed further to Car Park Management System"/> 
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
        <br/>
        <br/>
<%
   Date date = new Date();
   out.print( "<h4 align=\"center\"><font color=\"white\">" +date.toString()+"</font></h4>");
%>
</body>
</html>