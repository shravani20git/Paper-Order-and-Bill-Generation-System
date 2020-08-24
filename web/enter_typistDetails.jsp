<%@include file="check_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tables.Typist_details" %>
<%@include file="open_session.jsp" %> 
<%
    String typ_prof_name = request.getParameter("typ_name");
    
   String  typ_address= request.getParameter("typ_address");
   String typ_email=request.getParameter("typ_ph_no");
 
   String  typ_ph_no=request.getParameter("typ_email");
    
     
   Typist_details m1=new Typist_details ();
 
   m1.setTyp_address(typ_address);
   m1.setTyp_email(typ_email);
   m1.setTyp_name(typ_prof_name );
   m1.setPhoneno(typ_ph_no);
     
   
   
   
   
   
  s.save(m1);  
t.commit();
s.close();
System.out.print("data entered");
 response.sendRedirect("typeist_list.jsp");
   %>
    </body>
</html>
<%}%>