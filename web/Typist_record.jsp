<%-- 
    Document   : paper_modurators_record
    Created on : Aug 30, 2018, 3:05:36 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="tables.Typist_details"%>
<%@page import="dao.Typist_details_fetch"%>
<%-- 
    Document   : view_professor
    Created on : Aug 26, 2018, 7:50:12 PM
    Author     : hp
--%>

<%@page import="java.util.List"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Modurator_details"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%
    Typist_details_fetch namesDAO = new Typist_details_fetch();
    List<Typist_details> all_names = namesDAO.getDetails();
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
                            <strong class="card-title">Paper Modurators  Details </strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>      
            <tr>
                        <th>Sr</th>
                        <th>Modurators Name</th>
                        <th>Phone.no</th>
                       
                        <th>Email id</th>
                        <th>Address</th>
                       
                      
            </tr>
                    </thead>
                    <tbody>
                           <% int i=0;
                           for( Typist_details name  : all_names )  {   %>
                           <tr>
                               
                               <td><%=++i%></td>
                               <td><%=name.getTyp_name() %></td>
                                  <td><%=name.getPhoneno() %></td>
                                 
                                      <td><%=name.getTyp_email() %></td>
                                        <td><%=name.getTyp_address() %></td>
                                        
                           </tr>
           
           
           <%}%>
           
   











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



   <%@include  file ="footer.jsp"%>
   <%}%>
   