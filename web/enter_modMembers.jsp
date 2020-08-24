<%-- 
    Document   : enter_professorDetails
    Created on : Aug 25, 2018, 6:45:04 PM
    Author     : hp
--%>


<%@page import="java.lang.String"%>
<%@include file="check_login.jsp" %>
<%@include file="open_session.jsp" %> 
<%@page import="tables.Mod_committee" %>
<%@page import="dao.Mod_committee_fetch"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%   Mod_committee_fetch namesDAO = new Mod_committee_fetch();
    List<Mod_committee> all_names = namesDAO.getDetails(); 
 
    
    String designation = request.getParameter("Post");
    String prof_name = request.getParameter("prof_name");
 
   String  ph_no=request.getParameter("ph_no");
   
  
 
   
 if(all_names.isEmpty())
    {
Mod_committee p1=new  Mod_committee();
   p1.setPost(designation);
   p1.setProf_name(prof_name);
   p1.setMobile_no( ph_no);
 s.save(p1);    
    } 
 else{
 if(designation.equalsIgnoreCase("Principal")){
 
 namesDAO.UpdatePrincipal(prof_name);
 namesDAO.UpdatePrincipal_Phno( ph_no);
 
 }
 else if(designation.equalsIgnoreCase("COE")){
 

 namesDAO.UpdateCOE(prof_name);
 namesDAO.UpdateCoe_Phno(ph_no);
     
        
 }
  else if(designation.equalsIgnoreCase("Secretary")){
 

 namesDAO.UpdateSecretary(prof_name);
 namesDAO.UpdateSecretary_Phno(ph_no);
     
        
 }
 
  else   if(designation.equalsIgnoreCase("Chairman")){
  namesDAO.UpdateChairman(prof_name);
 namesDAO.UpdateChairman_Phno(ph_no);
  }
 
  
 
   
else { out.println("nothig selected");}
 
 }
   
   
   
   

t.commit();
s.close();
System.out.print("data entered");
 response.sendRedirect("mod_members.jsp");
     %>
    </body>
</html>
<%}%>