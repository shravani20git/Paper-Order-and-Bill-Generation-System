<%-- 
    Document   : view_course_code
    Created on : Aug 26, 2018, 8:03:38 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="check_login.jsp" %>
<%@include  file="header.jsp" %>

<%@page import="java.util.List"%>
<%@page import="tables.Course_Code"%>
<%@page import="dao.Course_fetch"%>
<%    Course_fetch namesDAO = new Course_fetch();
    List<Course_Code> all_names = namesDAO.getDetails();  %>
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
                            <strong class="card-title">Course and Code Details </strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>  
                              <tr>
                        <th>Sr</th>
                        <th> Course Name</th>
                        <th>Code No</th>
                        <th>Department</th>
                   
                      
            </tr>
                    </thead>
                    <tbody>
                           <% int i=0;
                             for(Course_Code name  : all_names ) {%>
                             <tr>
                    <td><%=++i%></td>
                    <td><%=name.getCourse_name()%></td>
                    <td><%=name.getDepart_name()%></td>
                    <td><%=name.getCode()%></td>
                        

                             </tr>
                             <% }%>
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
