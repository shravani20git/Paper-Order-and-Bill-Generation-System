<%-- 
    Document   : print
    Created on : Nov 30, 2018, 3:27:25 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        
    String m=(String) session.getAttribute("exam_sess");
    String n=(String) session.getAttribute("year");
    
        out.println(m);
        out.println(n);
        
        
        
        %>
    </body>
</html>
