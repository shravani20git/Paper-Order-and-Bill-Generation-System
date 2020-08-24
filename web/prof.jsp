<%-- 
    Document   : prof
    Created on : Aug 25, 2018, 9:44:17 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="tables.Professor_details"%>
<%@page import="java.util.List"%>
<%@page import="dao.Professor_fetch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%
    Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
    
    
    
    
    
    %>
 <form action="cd.jsp">
          <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1></h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                           
                        </ol>
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
                            <strong class="card-title">Select Following Details For Paper Order</strong>
                        </div>
                       
                        
 <div class="row form-group">
     <div class="col col-md-1"><label class=" form-control-label">Semister</label></div>
                            <div class="">
                              <div class="form-check">
                                <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" id="radio1" name="Semister1" value="Winter" class="form-check-input">Winter
                                  </label>
                                </div>
                                <div class="radio">
                                  <label for="radio2" class="form-check-label ">
                                    <input type="radio" id="radio2" name="Semister1" value="Summer" class="form-check-input">Summer
                                  </label>
                                </div>
                                
                              </div>
                            </div>
 
                            

                           <div class="col col-md-3" align="right"><label class=" form-control-label">Term</label></div>
                            <div class="">
                              <div class="form-check">
                                <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" id="radio1" name="Term1" value="Odd" class="form-check-input">Odd
                                  </label>
                                </div>
                                <div class="radio">
                                  <label for="radio2" class="form-check-label ">
                                    <input type="radio" id="radio2" name="Term1" value="Even" class="form-check-input">Even
                                  </label>
                                </div>
                                
                             </div>
                            </div>
                            
                           
                           <div class="col col-md-8" align="right"><label class=" form-control-label">Year</label></div>
                            <div class="">
                              <div class="form-check">
                                <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio"  name="Year" value="First" class="form-check-input">First
                                  </label>
                                </div>
                                <div class="radio">
                                  <label for="radio2" class="form-check-label ">
                                    <input type="radio"  name="Year" value="Second" class="form-check-input">Second
                                  </label>
                                </div>
                                
                              </div>
                            </div>
                           <div class="col col-md-10" align="right"><label class=" form-control-label">Date</label></div>
                            <div class="">
                              <div class="form-check">
                                <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                       <input type="Date" id="radio1" name="date"  class="">
                                  </label>
                                </div>
                              </div></div>
                           
                           
                           
                           
      </div>
                        <div class="card-body">
                            
                                
                           
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Sr.No</th>
                        <th>Professor_Name</th>
                       
                        <th>College</th>
                      </tr>
                    </thead>
                    <tbody>
                       <% int i=0;
                           for( Professor_details name  : all_names ){   %>
                         <tr>
                             <th><%=++i%></th>
                      
      <td> <input type="radio" name="Professer" value="P.B.Mali"><%=name.getName()%></td>
  
       <td><%=name.getClg_name() %></td>
    </tr>
    <% }%>
                  

                     
       
                 </tbody>
                  </table>
                            
                            <button type="submit">next</button>
                            
                       
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









 </form>
 <%@include file="footer.jsp" %>
 <%}%>