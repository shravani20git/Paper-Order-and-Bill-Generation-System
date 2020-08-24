<%-- 
    Document   : insert_paperSetter_bill_details
    Created on : Sep 1, 2018, 8:49:46 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="tables.Bill_paperSetters"%>
<%@page import="hibernate_util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="tables.Receive_paper_order"%>
<%@page import="dao.Receive_order_fetch"%>
<%@page import="tables.Modurator_details"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>
<%    Receive_order_fetch  namesDAO = new Receive_order_fetch();
    List<Receive_paper_order> all_names = namesDAO.getDetails(); 
     
fetch_bill_details  bill = new fetch_bill_details();
    List<Bill_Details> amount=  bill.getDetails(); 

%>
 
<% 
String paper_prof=request.getParameter("prof");
String paper_code=request.getParameter("billcode");
 String paper_course  =request.getParameter("billcourse");
  String mod_prof_name    =request.getParameter("modurator_name");
   String moduration_date  =request.getParameter("moddate");
  
            String bill_amount  =request.getParameter( "amount");
                    
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
Date Moduration_date = sdf.parse(moduration_date);
session.setAttribute("prof", paper_prof);
session.setAttribute("billcode", paper_code);
session.setAttribute("billcourse", paper_course);
session.setAttribute("billamt",  bill_amount);

 
  SessionFactory sf;
            Transaction t;
                 Session sfg;
                 sf =HibernateUtil.getSessionFactory();
                 sfg=sf.openSession();
                 t=sfg.getTransaction();
                 t.begin();
                 
                 
                Bill_paperSetters bill1=new Bill_paperSetters();
                 bill1.setSets(sets);
                 bill1.setAmount(Float.valueOf(bill_amount));
                 bill1.setCode(paper_code);
             bill1.setCourse_name(paper_course );
             bill1.setMod_name(mod_prof_name);
             bill1.setProf_name( paper_prof);
             bill1.setTdate(Moduration_date);
             
      
      sfg.save(bill1);  
t.commit();

      
     
             // out.println(Moduration_date);
      
      
      
  
  sfg.close();
System.out.print("data entered");
 response.sendRedirect("bill_generated.jsp");












%>
<%}%>