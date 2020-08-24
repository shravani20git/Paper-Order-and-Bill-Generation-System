<%-- 
    Document   : enter_professorDetails
    Created on : Aug 25, 2018, 6:45:04 PM
    Author     : hp
--%>


<%@include file="check_login.jsp" %>
<%@include file="open_session.jsp" %> 
<%@page import="tables.Clg_details" %>
<%@page import="dao.Clg_details_fetch" %>
<%
    
    Clg_details_fetch namesDAO = new Clg_details_fetch();
    List<Clg_details> all_names = namesDAO.getDetails(); 
    String clg_fax = request.getParameter("fax");
     String clg_web = request.getParameter("web");
  
   String email=request.getParameter("email");
 
   String  ph_no=request.getParameter("ph_no");
     if(all_names.isEmpty())
    {
     
   Clg_details p1=new  Clg_details();
    p1.setEmail(email);
    p1.setFax(clg_fax );
    p1.setPhone(ph_no);
    p1.setWeb(clg_web);s.save(p1); 
    
    }
     
     else{
     
     namesDAO .UpdateEmail(email);
     namesDAO.UpdateFax(clg_fax );
             namesDAO.UpdatePhone(ph_no);
                 
             namesDAO.UpdateWeb(clg_web);
     
     
     }    
     
   
   
   
   
 
t.commit();
s.close();
System.out.print("data entered");
 response.sendRedirect("clg_details_update.jsp");
   %>
    </body>
</html>
<%}%>