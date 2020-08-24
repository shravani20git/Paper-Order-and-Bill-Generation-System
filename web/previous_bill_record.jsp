<%-- 
    Document   : previous_bill_record
    Created on : Aug 26, 2018, 10:26:44 PM
    Author     : hp
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Collections"%>
<%@include file="check_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include  file="header.jsp" %>

<%@page import="java.util.List"%>
<%@page import="dao.Paper_setter_bill_fetch"%>
<%@page import="tables.Bill_paperSetters"%>

<%   Paper_setter_bill_fetch namesDAO = new Paper_setter_bill_fetch();
     List<Bill_paperSetters> all_names = namesDAO.getDetails(); 
Collections.reverse(all_names);
String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2;
SimpleDateFormat sdf2 = new  SimpleDateFormat("dd/MM/yyyy");
%>

 <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                       
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Paper Setters Bill Records </strong>
                        </div>
                        <div class="card-body"><a href="print_papersetter_bill.jsp">Click here to print paper setters bill records</a>
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>  
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
 </tbody>
                  </table>
                        </div>
                    </div>
                </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->




 <script src="assets/js/lib/data-table/datatables.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/pdfmake.min.js"></script> 
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
   <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
  <script src="assets/js/lib/data-table/datatables-init.js"></script>


    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
        } );
    </script>

<%@include  file="footer.jsp" %>

<%}%>