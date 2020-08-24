<%-- 
    Document   : view_professor
    Created on : Aug 26, 2018, 7:50:12 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="java.util.List"%>
<%@page import="dao.Professor_fetch"%>
<%@page import="tables.Professor_details"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%
    Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
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
                            <strong class="card-title">Professor Details </strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>      
            <tr>
                        <th>Sr</th>
                        <th>Name</th>
                        <th>Phone.no</th>
                        <th>College Name</th>
                        <th>Email id</th>
                        <th>Address</th>
                        <th>Department</th>
                      
            </tr>
                    </thead>
                    <tbody>
                           <% int i=0;
                           for( Professor_details name  : all_names )  {   %>
                           <tr>
                               
                               <td><%=++i%></td>
                               <td><%=name.getName()%></td>
                                  <td><%=name.getPh_no()%></td>
                                    <td><%=name.getClg_name()%></td>
                                      <td><%=name.getEmail()%></td>
                                        <td><%=name.getAddress() %></td>
                                          <td><%=name.getDepartment() %></td>
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
  