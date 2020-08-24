<%-- 
    Document   : prof
    Created on : Aug 25, 2018, 9:44:17 PM
    Author     : hp
--%>

<%@include file="check_login.jsp" %>
<%@page import="tables.Course_Code"%>
<%@page import="dao.Course_fetch"%>
<%@page import="tables.Professor_details"%>
<%@page import="java.util.List"%>
<%@page import="dao.Professor_fetch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<form action="values.jsp" method="post">
<%
    Course_fetch courseDAO = new Course_fetch();
 
    List<Course_Code> all = courseDAO .getDetails();
     
    
    Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
     
                          for(int i=1;i<=all.size();++i) {
                               
                               
                                String count="count"+i;
                                String select=request.getParameter(count);
                                if( select!=null) {
                                    %><input type="hidden" name="<%=count%>" value="<%=select%>">   
                                 <%   String ch="Course"+i;
                         String course=request.getParameter(ch);%>
                                 <!-- session.setAttribute(ch, course);-->
                               <input type="hidden" name="<%=ch%>" value="<%=course%>">
                                   <% String  ch2="Code"+i;
                                    String code=request.getParameter(ch2);%>
                                  <!-- session.setAttribute(ch2,code);-->
                                    
                                   <input type="hidden" name="<%=ch2%>" value="<%=code%>"> 
                                   <%   String ch3="Depart"+i;
                         String dep =request.getParameter(ch3);%>
                                 <!-- session.setAttribute(ch, course);-->
                               <input type="hidden" name="<%=ch3%>" value="<%=dep%>">
                                    
                                    
                             <% }
                          }%>
    
    
    
    
    
    
 
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
     
 
                            

                           <div class="col col-md-1" align="right"><label class=" form-control-label">Term</label></div>
                            <div class="">
                              <div class="form-check">
                                <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                      <input type="radio" id="radio1" name="Term1" value="Odd" class="form-check-input" required>Odd
                                  </label>
                                </div>
                                <div class="radio">
                                  <label for="radio2" class="form-check-label ">
                                    <input type="radio" id="radio2" name="Term1" value="Even" class="form-check-input">Even
                                  </label>
                                </div>
                                
                             </div>
                            </div>
                            
                           
                        <!--   <div class="col col-md-8" align="right"><label class=" form-control-label">Year</label></div>
                            <div class="">
                              <div class="form-check">
                                <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                      <input type="radio"  name="year" value="First" class="form-check-input" required="">First
                                  </label>
                                </div>
                                <div class="radio">
                                  <label for="radio2" class="form-check-label ">
                                    <input type="radio"  name="year" value="Second" class="form-check-input">Second
                                  </label>
                                </div>
                                  <div class="radio">
                                  <label for="radio2" class="form-check-label ">
                                    <input type="radio"  name="year" value="Third" class="form-check-input">Third
                                  </label>
                                </div>
                                
                              </div>
                            </div>-->
                           <div class="col col-md-5" align="right"><label class=" form-control-label" required> Today's Date</label>
                           <input type="Date" name="tdate"  class="" required="">
                           </div>
                            <div class="">
                              <div class="form-check">
                                  <div class="col col-md-55" align="left"><label class=" form-control-label" required><font style='color: red' > Due Date for submitting set</font></label>
                           <input type="Date" name="due_date"  class="" required="">
                           </div>  
                              
                                  <div class="col col-md-75" align="right"> <a href="professor_list.jsp" style="color: blue">Click here to EDIT  Professor Details</a>
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
                       <% int j=0;
                           for( Professor_details name  : all_names ){   %>
                         <tr>
                             <th><%=++j%></th>
                      
                             <%String ch3="Professer";%>
                             
      <td> <input type="checkbox" name="<%=ch3%>" value="<%=name.getName()%>"><%=name.getName()%></td>
  
       <td><%=name.getClg_name() %></td>
    </tr>
    <% }%>
                  

                     
       
                 </tbody>
                  </table>
    <button type="submit" class="btn btn-success" id="checkBtn"><i class="fa fa-magic"></i>&nbsp; Submit</button>
                            
                           <!-- <button type="submit">next</button>-->
                            
                       
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
 <%@include file="footer.jsp"%>
 <%   }  %>