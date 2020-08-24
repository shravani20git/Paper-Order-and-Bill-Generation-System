<%-- 
    Document   : validate_session
    Created on : Nov 30, 2018, 3:23:17 PM
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
        <%
        
        String exam_sess=request.getParameter("exam_session");
   String year=request.getParameter("year");
   
 session.setAttribute("exam_sess",exam_sess);
 session.setAttribute("year",year);
   response.sendRedirect("Home.jsp");
   
        
        
        
        
        %>
        <h1>Hello World!</h1>
    </body>
</html>
