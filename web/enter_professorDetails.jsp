<%-- 
    Document   : enter_professorDetails
    Created on : Aug 25, 2018, 6:45:04 PM
    Author     : hp
--%>


<%@page import="dao.Professor_fetch"%>
<%@include file="check_login.jsp" %>
<%@include file="open_session.jsp" %> 
<%@page import="tables.Professor_details" %>

<%
    Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
    String prof_name = request.getParameter("prof_name");
     String clg_name = request.getParameter("clg_name");
   String  address= request.getParameter("address");
   String email=request.getParameter("email");
   String city=request.getParameter("city"); 
   String  ph_no=request.getParameter("ph_no");
     String depart_name=request.getParameter("depart_name");
        boolean i=false; String same=null;
        for( Professor_details name  : all_names ) {
    
    if(prof_name.equalsIgnoreCase(name.getName())){
    
        i=true;
        same=name.getName();
    }
        
    }
   if(i==true){
      namesDAO.UpdateClg(clg_name, same);
      namesDAO.UpdatePh(ph_no,same);
      // out.println("Same professor"+same);
   namesDAO.UpdateAdd(address,same);
   namesDAO.UpdateEmail(email,same);
   namesDAO.UpdateCity(city,same);
   
     namesDAO.UpdateDep(depart_name,same);
   
   
   }else
   
   {
       Professor_details p1=new  Professor_details();
       
       p1.setName( prof_name);
   p1.setPh_no(ph_no);

   
   p1.setClg_name(clg_name);
   
   p1.setAddress(address);
   p1.setCity(city);
   p1.setDepartment(depart_name);
   p1.setEmail(email);
       
      
        
   /*
  */
  
    
   
   
   s.save(p1);  
t.commit();
s.close();   //out.println("another one"); }
System.out.print("data entered");}
 response.sendRedirect("professor_list.jsp");
   %>
    </body>
</html>
<%}%>