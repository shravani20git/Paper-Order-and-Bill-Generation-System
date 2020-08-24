<%-- 
    Document   : open_session.jsp
    Created on : Aug 25, 2018, 12:26:58 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.SessionFactory" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="java.util.List" %>
 <%@page import="hibernate_util.HibernateUtil" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                         SessionFactory sf;
            Transaction t;
                 Session s;
                 sf=HibernateUtil.getSessionFactory();
                 s=sf.openSession();
                 t=s.getTransaction();
                 t.begin();
         %>

