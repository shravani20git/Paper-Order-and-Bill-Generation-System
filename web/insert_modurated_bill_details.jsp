<%-- 
    Document   : insert_modurated_bill_details
    Created on : Sep 2, 2018, 7:34:22 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.hibernate.Session"%>
<%@page import="hibernate_util.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="tables.Bill_of_Modurators"%>
<%@page import="java.time.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
   <% 
String paper_prof=request.getParameter("prof");
String paper_code=request.getParameter("billcode");
 String paper_course  =request.getParameter("billcourse");

   String moduration_date  =request.getParameter("moddate");
  
            String bill_amount  =request.getParameter( "amount");
                    
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
Date Moduration_date = sdf.parse(moduration_date);
session.setAttribute("modprof", paper_prof);
session.setAttribute("modbillcode", paper_code);
session.setAttribute("modbillcourse", paper_course);
session.setAttribute("modbillamt",  bill_amount);

 
 SessionFactory sf;
            Transaction t;
                 Session sfg;
                 sf =HibernateUtil.getSessionFactory();
                 sfg=sf.openSession();
                 t=sfg.getTransaction();
                 t.begin();
                 
                 
                Bill_of_Modurators bill1=new Bill_of_Modurators();
                 
                 bill1.setAmount(Float.valueOf(bill_amount));
                 bill1.setCode(paper_code);
             bill1.setCourse(paper_course );
         
             bill1.setMod_name(paper_prof);
             bill1.setTdate(Moduration_date);
             
      
      sfg.save(bill1);  
t.commit();

      /*

 

        out.println(Moduration_date);
       
         out.println(paper_prof);
         out.println(paper_code);
         out.println(paper_course);
         out.println( bill_amount);
         
        
     
      */ 
      
      
      
  
  //sfg.close();
  out.print("data entered");
response.sendRedirect("modurator_bill_generated.jsp");












%>
</html>
<%}%>