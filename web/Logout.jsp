<%-- 
    Document   : Logout
    Created on : Sep 16, 2018, 5:42:45 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
       <%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("Pragma","no-cache");
    
     session.removeAttribute("username");
    session.invalidate();
    
   
 
    out.println("You have been logged out <a href=\"index.html\">Login</a>");
    
%>
    </body>
</html>
