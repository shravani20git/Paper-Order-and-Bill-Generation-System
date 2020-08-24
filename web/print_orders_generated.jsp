<%-- 
    Document   : print_orders_generated
    Created on : Dec 9, 2018, 10:25:16 PM
    Author     : hp
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Collections"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="check_login.jsp" %>



<%@page import="java.util.List"%>
<%@page import="tables.Paper_order"%>
<%@page import="dao.Paper_Order_fetch"%>
<%    Paper_Order_fetch namesDAO = new Paper_Order_fetch();
    List<Paper_order> all_names = namesDAO.getDetails();  
Collections.reverse(all_names);
String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2;  SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy");
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
    
    
    %>
    </head>
    
    <body>
        <div style="print">
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
                <br> <b>Record of Paper Order Generated</b><br>
                </div>
    <div style="margin-left: 55px; margin-top: 50px;  ">
            <table id="dataTable">
                <tr>
                        <th>Sr</th>
                        <th> Professor Name</th>
                        <th>Course Name</th>
                        <th>Code no</th>
                         <th>Session</th>
                         
                          <th>Date of Order</th>
                          <th>Due Date of Order</th>
               
            </tr>
                    </thead>
                    <tbody>
                           <% int i=0;
                             for(Paper_order name  : all_names ) {   if(se3.equalsIgnoreCase(name.getSes())){%>  
                             <tr>
                    <td><%=++i%></td>
                    <td><%=name.getProf_name() %></td>
                    <td><%=name.getCourse() %></td>
                    <td><%=name.getCode() %></td>
                      <td><%=name.getSes()    %></td>
                     <%Date d=name.getTdate();  String dt=sdf2.format(d); %><td><%=dt%></td>
                    <%Date d2=name.getDue_date();  String dt2=sdf2.format(d2); %><td><%=dt2%></td>
                        

                             </tr>
                             <% } }%>
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
    
</html>
<% } %>