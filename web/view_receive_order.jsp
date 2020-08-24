<%-- 
    Document   : view_paper_order
    Created on : Aug 26, 2018, 10:01:35 PM
    Author     : hp
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Collections"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="check_login.jsp" %>

<%@include  file="header.jsp" %>

<%@page import="java.util.List"%>
<%@page import="tables.Receive_paper_order"%>
<%@page import="dao.Receive_order_fetch"%>
<%    Receive_order_fetch  namesDAO = new Receive_order_fetch();
    List<Receive_paper_order> all_names = namesDAO.getDetails();  
Collections.reverse(all_names);
String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2;
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
                            <strong class="card-title">Receive Paper Orders</strong>
                        </div>
                        <div class="card-body"> <a href="print_receive_order.jsp">Click here to print paper order  receive records</a>
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>  
                              <tr>
                        <th>Sr</th>
                        <th> Professor Name</th>
                        <th>Course Name</th>
                        <th>Code no</th>
                         <th>Session</th>
                          <th>Date of receiving order</th>
               
            </tr>
                    </thead>
                    <tbody>
                           <% int i=0; SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy");
                             for(Receive_paper_order  name  : all_names ) {   if(se3.equalsIgnoreCase(name.getSession())){%>  
                             <tr>
                    <td><%=++i%></td>
                    <td><%=name.getProf_name() %></td>
                    <td><%=name.getCourse() %></td>
                    <td><%=name.getCode() %></td>
                      <td><%=name.getSession()    %></td><%Date d =name.getTdate();
                   String  dt= sdf2.format(d);%>
                    <td><%=dt%></td>
                        

                             </tr>
                             <% } }%>
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

<% }%>