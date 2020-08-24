<%-- 
    Document   : validate_login
    Created on : Sep 16, 2018, 5:20:18 PM
    Author     : hp
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tables.Login"%>
<%@page import="dao.Login_fetch"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
   <%Login_fetch namesDAO = new Login_fetch();
    List<Login> all_names = namesDAO.getDetails(); 
   
   String username=request.getParameter("user");
   String password=request.getParameter("password");
   
    for(Login name  : all_names ) {
        
        String user=name.getUsername();
        String pass=name.getPassword();
    
   if(username.equalsIgnoreCase(user) && password.equalsIgnoreCase(pass))
   {
     
            response.setHeader("Cache-Control","no-store");
            response.setDateHeader("Expires", 0);
            response.setHeader("Pragma","no-cache");
        session.setAttribute("username", username);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("Exam_session.jsp");
   } 
   else
   {
       out.println("Wrong username and Password");
   }
   
   
   
    }
   %>
    </body>
</html>
