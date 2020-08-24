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
<%@page import="tables.Receive_paper_format"%>
<%@page import="dao.Receive_format_fetch"%>
<%@page import="tables.Modurator_details"%>
<%@page import="dao.Modurator_details_fetch"%>

<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>

<%    Receive_format_fetch  namesDAO = new Receive_format_fetch();
    List<Receive_paper_format> all_names = namesDAO.getDetails(); 
     Modurator_details_fetch  modurator = new Modurator_details_fetch();
    List<Modurator_details> mod_names =  modurator.getDetails(); 
     Typist_details_fetch  typer = new Typist_details_fetch();
    List<Typist_details> typ_names =  typer.getDetails(); 
fetch_bill_details  bill = new fetch_bill_details();
    List<Bill_Details> amount=  bill.getDetails();  
    Collections.reverse(all_names );
String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2;

%>
<!--<form action="bill_generated.jsp">-->
    <form action="papersetter.jsp">
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
                            <strong class="card-title">Select Professor whose Paper has been Modulated  and generate bill of Paper-setters</strong>
                        </div>
                        <div class="card-body">
                     
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                          <th>Sr.No</th>
                          <th>Select</th>
                          <th>Professor Name</th>
                          <th>Courses Moderator</th>
                          <th>Codes Moderated</th>
                        <th>Moderated_By</th>
                        <th>Typed_By</th>
                        
                        <th>Date of Moderation</th>
                        <th>Date of bill Generation</th>
                        <th>Sets of Paper</th>
                        <th>Amount  </th>
                        <th>Session</th>
                       
                      </tr>
                    </thead>
                    <tbody>
                        <% int i=0;
                      for(Receive_paper_format name  : all_names ) {   if(se3.equalsIgnoreCase(name.getSes())){                      
                            %>
                      <tr>
                         
                        <td><%=++i%></td>
                        <%    String count="count"+i;%>
                         
                          <td><input type="checkbox" name="<%=count%>" value="<%=count%>"></td>
                        <%String ch="prof"+i; %>
                        <td><input type="hidden"  name="<%=ch%>" value="<%=name.getProf_name() %>"><%=name.getProf_name()%></td>
                        <td> 
                        <!--<div class="row form-group">
                           <!-- <div class="col col-md-2"><label class=" form-control-label"></label></div>
                            <div class="col col-md-4">
                              <div class="form-check">
                                <div class="checkbox">
                                  <label for="checkbox1" class="form-check-label ">-->
                                        <%String ch1= "billcourse"+i; %>
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
                                       <%String ch2= "billcode"+i; %>
                                      <input type="hidden" id="checkbox1" name="<%=ch2%>" value="<%=name.getCode() %>" class="form-check-input"><%=name.getCode() %>
                                     
                               <!-- </div>
                       </div>
                            </div>
                              </div>
                       <!--<td>-->
                         
                     </td>
                      
                        <td><!--<div class="row form-group">
                            <div class="col col-md-12"><label for="select" class=" form-control-label"></label></div>
                            <div class="col-12 col-md-12">-->
                                 <%String ch3= "modurator_name"+i; %>
                                 <select name="<%=ch3%>" id="select" class="form-control">     
                                    <% 
                             for(Modurator_details modname  : mod_names ) {%>
                             
                           
                                <option value="<%=modname.getModu_name() %>  "><%=modname.getModu_name() %> </option>
                                <% } %>
                              </select>
                           <!-- </div>
                          </div>-->
                         </td>
                         <td><!--<div class="row form-group">
                                 <div class="col col-md-15"><label for="select" class=" form-control-label"></label></div>-->
                          <!--  <div class="col col-md-20">-->
                                 <%String ch9= "typer_name"+i; %>
                                 <select name="<%=ch9%>" id="select" class="form-control">     
                                    <% 
                             for(Typist_details typname  : typ_names ) {%>
                             
                           
                                <option value="<%=typname.getTyp_name() %>  "><%=typname.getTyp_name() %> </option>
                                <% } %>
                              </select>
                        <!--                              </div>
</div>-->
                         </td>
                         <td>
                              <%String ch4= "moddate"+i; %>
                               <input type="Date" name="<%=ch4%>">
                               
                               
                            </td><td>
                              <%String ch7= "bill_date"+i; %>
                               <input type="Date" name="<%=ch7%>">
                               
                               
                            </td>  
                            <td> <% 
                                
                              
                                Float perSetAmount;  
                                for(Bill_Details amt  : amount ){  int j=name.getPapersets()   ;%>
                                                              <%String ch5= "sets"+i; %>
                                <input  type="hidden" name="<%=ch5%>"  value="<%=j%>"  >   <%=j%></td> 
                            <td>     
                          <%  
                              String format= name.getFormat();
                              Float k=0.0f;
                              if(format.equalsIgnoreCase("cd"))
                              {   k=amt.getCd();}
                              else{
                                      if(format.equalsIgnoreCase("manuscript"))
                                      {   k=amt.getManuscript();
                                      }
                              }
                           String ch6= "amount"+i;
                             perSetAmount=j*k ;%><input type="hidden"  name="<%=ch6%>" value="<%=perSetAmount%>"><%=perSetAmount%>
                      
                          
                        
                          
                             
                          <%  } String ch10="get_ses"+i;
                            %>
                             
                            </td>  <td><input type="hidden"  name="<%=ch10%>" value="<%=name.getSes() %>"><%=name.getSes() %> </td>
                         </tr><% } } %>
                           
                      
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