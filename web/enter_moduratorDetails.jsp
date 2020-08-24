<%-- 
    Document   : enter_moduratorDetails
    Created on : Aug 30, 2018, 10:18:28 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tables.Modurator_details" %>
<%@include file="open_session.jsp" %> 
<%
    String mod_prof_name = request.getParameter("mod_name");
    
   String  mod_address= request.getParameter("mod_address");
   String mod_email=request.getParameter("mod_ph_no");
 
   String  mod_ph_no=request.getParameter("mod_email");
    
     
   Modurator_details m1=new  Modurator_details();
 
   m1.setModu_address(mod_address);
   m1.setModu_email(mod_email);
   m1.setModu_name(mod_prof_name );
   m1.setPhoneno(mod_ph_no);
     
   
   
   
   
   
  s.save(m1);  
t.commit();
s.close();
System.out.print("data entered");
 response.sendRedirect("modurator_list.jsp");
   %>
    </body>
</html>

<%}%>