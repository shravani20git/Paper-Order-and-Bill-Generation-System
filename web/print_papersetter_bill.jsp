<%-- 
    Document   : print_orders_generated
    Created on : Dec 9, 2018, 10:25:16 PM
    Author     : hp
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="check_login.jsp" %>



<%@page import="java.util.List"%>
<%@page import="dao.Paper_setter_bill_fetch"%>
<%@page import="tables.Bill_paperSetters"%>

<%   Paper_setter_bill_fetch namesDAO = new Paper_setter_bill_fetch();
     List<Bill_paperSetters> all_names = namesDAO.getDetails(); 
Collections.reverse(all_names);
String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2;

%>
<!DOCTYPE html>
<html>
    <head>
           <style>
            /* <css for Body> */
            body {
  background: white; 
page-break-inside: avoid;
}
             /* </css for Body> */
            
            /* <css for page> */
page {
  background: white;
  display: block;
  margin: 0 auto;
  margin-bottom: 0.5cm;
  padding-top: 0.3cm;
  box-shadow: 0;
    font-family: Arial;
    font-size: 10pt;
  /* page-break-inside: avoid;*/
}
page[size="A4"] {  
  width: 21.0cm;
  height: 29.7cm; 
 page-break-inside: avoid;

}

@media print {
    /*div,li,br,hr,ol,li,td,td,th {
    page-break-inside: avoid;}*/
  header ,body ,font,center,div,br,b,li,hr,ol,tr,td,th {
       page-break-inside: avoid;  
    }
  body, page {
    margin: 0;
    box-shadow: 0;
  }
}
               
               @media print  {
    footer {page-break-after: always;}
}
               p.solid {border-style: solid;}
               table {
    border-collapse: collapse;
}

               table,td,th {
    border: 1px solid black;
                   padding: 4px;
}
               @media print {
    /*div,li,br,hr,ol,li,tr,td,th {
    page-break-inside: avoid;}*/
  header ,body ,font,center,div,br,b,li,hr,ol,tr,td,th {
       page-break-inside: avoid;  
    }
                   @media print  {
    footer {page-break-after: always;}
}
 
        </style>
    <%
        String m=(String) session.getAttribute("exam_sess");
    String n=(String) session.getAttribute("year");
    SimpleDateFormat sdf2 = new  SimpleDateFormat("dd/MM/yyyy");
    
    %>
    </head>
    
    <body> <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
        <page size="A4">
    
    <!--Header-->
        <div>
       <center><h1>Government Polytechnic, Nashik
            </h1></center><hr>
            <div>
                <div style="margin-left: 40px;">
                  
                </div>
                <div style="margin-left: 550px; margin-top:-15px;">
                  
                </div>
                
            </div>
            </div>
            
            
            
            
            
   <!--Table-->
            <div style="margin-left: 55px; margin-top: 50px;  ">
                <br> <b>Record of Paper Order Received</b><br>
                </div>
    <div style="margin-left: 55px; margin-top: 50px;  ">
            <table id="dataTable">
                <tr>
                            <th>Sr</th>
                        <th> Professor Name</th>
                        <th>Course Name</th>
                        <th>Code no</th>
                         <th>Modulated By</th>
                         <th>No of Sets  </th>
                          <th>Amount</th>
                          <th>Date of Bill</th> <th>Session</th>
                      
            </tr>
                    </thead>
                    <tbody>  
                          
                             <tr>
                 <% int i=0;
                             for(Bill_paperSetters names : all_names ) {   if(se3.equalsIgnoreCase(names.getSes())){  %>
                             <td><%=++i%></td>
                           <td><%=names.getProf_name() %> 
                           </td>
                           <td><%=names.getCourse_name()%> </td>
                           <td><%=names.getCode()%></td>
                           
                            <td><%=names.getMod_name() %> </td>
                           <td><%=names.getSets()%></td>
                           <td><%=names.getAmount() %>
                           </td>
                             <%Date d=names.getTdate(); String dt=sdf2.format(d); %>       
                           <td><%=dt %></td>
                           <td><%=names.getSes() %></td>
                             </tr>
                             <%} }%>
            </table>
           
           
            </div>
        </page>
     <footer>
     <script>
       
       
          function print_page() {
            var ButtonControl = document.getElementById("printbtn");
            ButtonControl.style.visibility = "hidden";
            window.print();
        }
     
                
        </script>
        
    </footer> 
    </body>
    <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
</html>
<% } %>