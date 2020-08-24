<%-- 
    Document   : final_bill
    Created on : Aug 23, 2018, 2:36:43 PM
    Author     : hp
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Collections"%>
<%@include file="check_login.jsp" %>
<%@ include file = "header.jsp" %>
<%@page import="java.util.List"%>
<%@page import="tables.Receive_paper_order"%>
<%@page import="dao.Paper_setter_bill_fetch"%>
<%@page import="tables.Bill_paperSetters"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>
<%    Paper_setter_bill_fetch namesDAO = new Paper_setter_bill_fetch();
    List<Bill_paperSetters> all_names = namesDAO.getDetails(); 
      SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy");
fetch_bill_details  bill = new fetch_bill_details();
    List<Bill_Details> amount=  bill.getDetails(); 
Collections.reverse(all_names );
String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2;

%>
<form action="Renumeration_bill.jsp" method="post">


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
                         
                          <th>Moderator Name</th>
                          <th>Courses Moderated</th>
                          <th>Codes Moderated</th>
                          <th>No of Sets</th>
                        <th>Date of bill </th>  
                         <th> Moderation Date  </th>  
                         <th>Amount </th>
                         <th>Session</th>
                      </tr>
                    </thead>
                    <tbody>
                        <% int i=0;
                      for(Bill_paperSetters  name  : all_names ) { if(se3.equalsIgnoreCase(name.getSes())) { 
                            %>
                      <tr>
                      
                        <td><%=++i%></td>
                        <%    String count="count"+i;%>
                         
                          <td><input type="checkbox" name="<%=count%>" value="<%=count%>"></td>
                        <%String ch="modprof"+i;%>
                        <td><input type="hidden"  name="<%=ch%>" value="<%=name.getMod_name() %>"><%=name.getMod_name() %></td>
                        <td> 
                       <!-- <div class="row form-group">
                            <div class="col col-md-2"><label class=" form-control-label"></label></div>
                            <div class="col col-md-6">
                              <div class="form-check">
                                <div class="checkbox">
                                  <label for="checkbox1" class="form-check-label ">-->
                                      <%String ch1="billcourse"+i; %>
                                      <input type="hidden" id="checkbox1" name="<%=ch1%>" value="<%=name.getCourse_name() %>" class="form-check-input"><%=name.getCourse_name() %>
                                     
                               <!-- </div>
                       </div>
                            </div>
                              </div>--></td>
                              <td> 
                      <!--  <div class="row form-group">
                            <div class="col col-md-2"><label class=" form-control-label"></label></div>
                            <div class="col col-md-6">
                              <div class="form-check">
                                <div class="checkbox">
                                  <label for="checkbox1" class="form-check-label ">-->
                                       <%String ch2="billcode"+i; %>
                                      <input type="hidden" id="checkbox1" name="<%=ch2%>" value="<%=name.getCode() %>" class="form-check-input"><%=name.getCode() %>
                                     
                              <!--  </div>
                       </div>
                            </div>
                              </div>--></td>
                              <td> 
                        <!--<div class="row form-group">
                            <div class="col col-md-0"><label class=" form-control-label"></label></div>
                            <div class="col col-md-0">
                              <div class="form-check">
                                <div class="checkbox">
                                  <label for="checkbox1" class="form-check-label ">-->
                                      <%String ch3="billsets"+i; %>
                                      <input type="hidden" id="checkbox1" name="<%=ch3%>" value="<%=name.getSets() %>" class="form-check-input"><%=name.getSets() %>
                                     
                               <!-- </div>
                       </div>
                            </div>
                              </div>--></td>
                              
                       <!--<td>-->
                         
                     
                      
                    
                         <td>
                              <% //String ch4="moddate"+i; 
                              String ch55="d"+i;%>
<input type=Date value="" name="<%=ch55%>">

                               
                               
                               
                            </td> 
                            <td> 
                       <!-- <div class="row form-group">
                            <div class="col col-md-0"><label class=" form-control-label"></label></div>
                            <div class="col col-md-0">
                              <div class="form-check">
                                <div class="checkbox">
                                  <label for="checkbox1" class="form-check-label ">-->
                                      <%String ch77="moduration_date"+i;    Date d=name.getTdate();   String  dt= sdf2.format(d);  %>
                                      <input type="hidden" id="checkbox1" name="<%=ch77%>" value="<%=dt %>" class="form-check-input"><%=dt %>
                                     
                               <!-- </div>
                       </div>
                            </div>
                              </div>--></td>
                            <td> <% 
                                
                                Float perSetAmount;  
                                for(Bill_Details amt  : amount ){
                            Float k=amt.getAmount_of_modurator();
                            int j=name.getSets();
                             perSetAmount=j*k;%>
                               <%String ch5="amount"+i; %>
                             <input type="hidden"  name="<%=ch5%>" value="<%=perSetAmount%>"><%=perSetAmount%>
                      
                          
                        
                          
                             
                          <%  } String ch6="get_ses"+i;
                            %> 
                             
                            </td>  <td><input type="hidden"  name="<%=ch6%>" value="<%=name.getSes() %>"><%=name.getSes()       %>  </td>
                         </tr><% } } %>
                           
                      
                  </table>
                            <right>
                            <div class="" style="margin-left: 1000px;">
                                 <button type="submit" class="btn btn-primary btn-sm"id="checkBtn">
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