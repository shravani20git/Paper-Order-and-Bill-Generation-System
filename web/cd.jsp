<%-- 
    Document   : cd
    Created on : Aug 25, 2018, 10:00:55 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="java.util.List"%>
<%@page import="tables.Course_Code"%>
<%@page import="dao.Course_fetch"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : prof
    Created on : Aug 25, 2018, 9:44:17 PM
    Author     : hp
--%>


<%@include file="header.jsp" %>
<form action="professor_selection.jsp"  method="post" >     
<%
 /*String Professor_name=request.getParameter("Professer");
 String Term =request.getParameter("Term1");
 String Semister =request.getParameter("Semister1");
 String Year=request.getParameter("year");*/
 Course_fetch namesDAO = new Course_fetch();

    List<Course_Code> all_names = namesDAO.getDetails();
    
 
/*
session.setAttribute("Professer",Professor_name);
session.setAttribute("Term1",Term);
session.setAttribute("Semister1",Semister);
session.setAttribute("Year",Year);
session.setAttribute("date",date);*/


%>   


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
                  
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Select Course and Code</strong>
                        </div>
                        
                            
                            
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                          <th>Sr</th>
                          <th>Select</th>
                          <th>Course name</th>
                        <th>Course Code</th>
                        <th>Program Name</th> 
                      
                      </tr>
                    </thead>
                    <tbody>
                        <% 
                           // for (int i=0 ; i < all_names.size(); i++)
                                 int i=0;
                           for(Course_Code name  : all_names ) {
                             
          
            
                                                     	
      
            
             
    	 
    	
    
                            
                       
                        %>
                        <tr>
                            <td><%=++i%></td>
                            <%    String count="count"+i;%>
                         
                          <td><input type="checkbox" name="<%=count%>" value="<%=count%>"></td>
     
      <td>

   <%String ch="Course"+i;%>
<input type="hidden" name="<%=ch%>" value="<%=name.getCourse_name()%>"><%String p =name.getCourse_name();%><%=p%>
</td>
      <td>
          <%String ch2="Code"+i;%>
          <input type="hidden" name="<%=ch2%>" value="<%=name.getCode()%>"><%=name.getCode()%><br><br></td>
      <td>

   <%String ch3="Depart"+i;%>
<input type="hidden" name="<%=ch3%>" value="<%=name.getDepart_name() %>"><%=name.getDepart_name()  %>
</td>

   
   
   
      
    </tr>
    <% }%>
                      
       
                
       
                 </tbody>
                  </table>
    <div class="col-sm-4">
        
    <button type="submit" class="btn btn-success" id="checkBtn"><i class="fa fa-magic"></i>&nbsp; Next</button>
    
    
    </div>
                          <!--  <button type="submit">next</button>-->
                            
                       
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
        $(document).ready(function () {
    $('#checkBtn').click(function() {
      checked = $("input[type=checkbox]:checked").length;

      if(!checked) {
        alert("You must check at least one checkbox.");
        return false;
      }

    });
});
    </script>





     















 </form>
 <%@include file="footer.jsp" %>
<% }  %>