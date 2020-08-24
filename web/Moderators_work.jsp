<%-- 
    Document   : final_bill
    Created on : Aug 23, 2018, 2:36:43 PM
    Author     : hp
--%>
<%@page import="java.util.Collections"%>

<%@include file="check_login.jsp" %>
<%@page import="dao.Typist_details_fetch"%>
<%@page import="tables.Typist_details"%>
<%@ include file = "header.jsp" %>
<%@page import="java.util.List"%>
<%@page import="tables.Receive_paper_order"%>
<%@page import="dao.Receive_order_fetch"%>
<%@page import="tables.Modurator_details"%>
<%@page import="dao.Modurator_details_fetch"%>

<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>

<%    Receive_order_fetch  namesDAO = new Receive_order_fetch();
    List<Receive_paper_order> all_names = namesDAO.getDetails(); 
     Modurator_details_fetch  modurator = new Modurator_details_fetch();
    List<Modurator_details> mod_names =  modurator.getDetails(); 
     Typist_details_fetch  typer = new Typist_details_fetch();
    List<Typist_details> typ_names =  typer.getDetails(); 
fetch_bill_details  bill = new fetch_bill_details();
    List<Bill_Details> amount=  bill.getDetails(); 
Collections.reverse(all_names );String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2;

%>
<!--<form action="bill_generated.jsp">-->
    <form action="insert_receive_format.jsp">
  <div class="breadcrumbs">
            <div class="col-sm-4">
               
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                          
                            <li class=""></li>
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
                            <strong class="card-title">Select Professor whose Paper has been Modulated </strong>
                        </div>
                        <div class="card-body">
                     
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                          <th>Sr.No</th>
                          <th>Select</th>
                          <th>Professor Name</th>
                          <th>Courses Name</th>
                          <th>Code </th>
                        <th>Sets Submitted</th>
                        <th>Submitted Format</th>
                        <th>Session</th>
                        <th>Date </th>
                        
                       
                      </tr>
                    </thead>
                    <tbody>
                        <% int i=0;
                      for(Receive_paper_order name  : all_names ) {       if(se3.equalsIgnoreCase(name.getSession())){                    
                            %> 
                      <tr>
                         
                        <td><%=++i%></td>
                        <%    String count="count"+i;%>
                         
                          <td><input type="checkbox" name="<%=count%>" value="<%=count%>"></td>
                        <%String ch="prof"+i; %>
                        <td><input type="hidden"  name="<%=ch%>" value="<%=name.getReceive_prof_name() %>"><%=name.getReceive_prof_name() %></td>
                        <td> 
                        <!--<div class="row form-group">
                           <!-- <div class="col col-md-2"><label class=" form-control-label"></label></div>
                            <div class="col col-md-4">
                              <div class="form-check">
                                <div class="checkbox">
                                  <label for="checkbox1" class="form-check-label ">-->
                                        <%String ch1= "receive_course_name"+i; %>
                                      <input type="hidden" id="checkbox1" name="<%=ch1%>" value="<%=name.getCourse() %>" class="form-check-input"><%=name.getCourse() %>
                                     
                               <!-- </div>
                       </div>
                            </div>
                              </div>--></td>
                              <td> 
                       <!-- <div class="row form-group">
                          <!--  <div class="col col-md-2"><label class=" form-control-label"></label></div>
                            <div class="col col-md-6">
                              <div class="form-check">
                                <div class="checkbox">
                                  <label for="checkbox1" class="form-check-label ">-->
                                       <%String ch2= "receive_code"+i; %>
                                      <input type="hidden" id="checkbox1" name="<%=ch2%>" value="<%=name.getCode() %>" class="form-check-input"><%=name.getCode() %>
                                     
                               <!-- </div>
                       </div>
                            </div>
                              </div>
                       <!--<td>-->
                         
                              </td>  <td>
                                 
                            
                             <% String ch9="receive_setse"+i;%> 
                             <input  name="<%=ch9%>" type="number" class="form-control" aria-required="true" aria-invalid="false" value="" >
     
                              </td>
                      
                        <td><!--<div class="row form-group">
                            <div class="col col-md-12"><label for="select" class=" form-control-label"></label></div>
                            <div class="col-12 col-md-12">-->
                                 <%String ch11= "recieve_format"+i; %>
                                 <select name="<%=ch11%>" id="select" class="form-control">     
                                 
                             
                             
                           
                                <option value="cd">Cd </option>
                                <option value="manuscript">Manuscript</option>
                               
                              </select>
                           <!-- </div>
                          </div>-->
                         </td>
                         <td>
                              <%String ch5= "get_ses"+i; %>
                               <input type="hidden" name="<%=ch5%>" value="<%=name.getSession() %>"><%=name.getSession() %>
                               
                               
                            </td> 
                         
                         <td>
                              <%String ch4= "receive_date"+i; %>
                               <input type="Date" name="<%=ch4%>">
                               
                               
                            </td> 
                            
                           
                         </tr>
                           
                      <% } }%>
                  </table>
                            <right>
                            <div class="" style="margin-left: 1000px;">
                                 <button type="submit" class="btn btn-primary btn-sm" id="checkBtn">
                            <i class="fa fa-dot-circle-o"></i>  Submit 
                        </button>
                               
                            </div></right>
                        </div>
                    </div>
                </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->
</form>










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

<%@include file="footer.jsp" %>
<%}%>