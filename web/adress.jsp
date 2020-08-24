<%-- 
    Document   : adress
    Created on : Sep 13, 2018, 6:39:11 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Modurator_details"%>

<%@include file="header.jsp" %>
<%
    Modurator_details_fetch namesDAO = new Modurator_details_fetch();
    List<Modurator_details> all_names = namesDAO.getDetails();
      %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <% for( Modurator_details name  : all_names )  { %>
            
            <%=name.getModu_name()%>
         
             <%=name.getModu_address() %><% } %>
      
    </body>
</html>
