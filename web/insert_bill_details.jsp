<%-- 
    Document   : insert_bill_details
    Created on : Aug 30, 2018, 10:07:17 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>

<%@include file="open_session.jsp" %> 
<%@page import="tables.Bill_Details" %>

<%@page import="java.util.List"%>

<%@page import="dao.fetch_bill_details"%>
<%   fetch_bill_details namesDAO = new fetch_bill_details();
    List<Bill_Details> all_names = namesDAO.getDetails();  %>
<%
      String amount_paper = request.getParameter("amt_paper_setter");
     String amount_moduration= request.getParameter("amt_modurator");
     String amount_Typist=request.getParameter("amt_typist");
     String amount_Cd=request.getParameter("amt_cd");
     String amount_Manu=request.getParameter("amt_manu");
    if(all_names.isEmpty())
    {
  

   
Bill_Details b1=new Bill_Details();
b1.setAmount_of_modurator(Float.valueOf(amount_moduration));
b1.setAmount_of_math(Float.valueOf(amount_paper ));
b1.setAmount_of_typist(Float.valueOf(amount_Typist));
b1.setCd(Float.valueOf(amount_Cd));
b1.setManuscript(Float.valueOf(amount_Manu));


  
 s.save(b1);  
    }
    else{
  namesDAO.UpdateModuratorBill(Float.valueOf(amount_moduration));
  namesDAO.UpdateTypist_Mathematical_Bill(Float.valueOf(amount_paper));
  namesDAO.UpdateTypistBill(Float.valueOf(amount_Typist));
  namesDAO.UpdateManuscriptBill(Float.valueOf(amount_Manu));
  namesDAO.UpdateCdBill(Float.valueOf(amount_Cd));
       
    }
t.commit();
s.close();
System.out.print("data entered");
 response.sendRedirect("bill_details.jsp");
    %>



    </body>
</html>

<%}%>