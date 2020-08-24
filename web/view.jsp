<%-- 
    Document   : view
    Created on : Sep 2, 2018, 11:37:56 PM
    Author     : hp
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<!--Invitation Letter-->
<!--Note : only internal css is used for this page-->


<%@page import ="tables.Paper_order" %>%>
<%@include file="open_session.jsp" %>
<%@page import="java.util.List"%>
<%@page import="dao.Professor_fetch"%>
<%@page import="tables.Professor_details"%>
<%
    Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
       String name=  (String)session.getAttribute("Professer");
    
      %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <b><%=name%></b>
                        <br> <%
                              for( Professor_details professor  : all_names )  {
                                  String k=professor.getName();
                           %> 
                           
                           <% if( k.equalsIgnoreCase(name)) { %>
                            <%=professor.getAddress()%>
                     <%   
                       } } %>
    </body>
</html>
<