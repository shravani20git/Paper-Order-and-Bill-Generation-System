<%-- 
    Document   : receive_order
    Created on : Aug 23, 2018, 2:33:26 PM
    Author     : hp
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Collections"%>
<%@include file="check_login.jsp" %>
<%@ include file = "header.jsp" %>
<%@page import="tables.Professor_details"%>
<%@page import="dao.Professor_fetch"%>
<%@page import="java.util.List"%>
<%@page import="tables.Paper_order"%>
<%@page import="dao.Paper_Order_fetch"%>
<%    Paper_Order_fetch namesDAO = new Paper_Order_fetch();
    List<Paper_order> all_names = namesDAO.getDetails(); //Collections.reverse(all_names);
  Professor_fetch  namesProfessor  = new  Professor_fetch();
    List<Professor_details> prof_name = namesProfessor.getDetails();  String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2; SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy");
%>

<form action="insert_receive_order.jsp">
        <div class="breadcrumbs">
            <div class="col-sm-4">
            
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
                            <strong class="card-title"> Paper Order Received Format</strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                         
                          
                          <th>Sr.No</th>
                          <th>Select</th>
                        <th>Professor_Name</th>
                       
  <th>Course </th>
                        <th>Code </th>
                          <th>Date of Order</th>
                          <th> Receive Date</th>
                          <th> Due Date of Order</th><th>Session</th>
                      </tr>
                    </thead>
                    <tbody>
                        <% int i=0;
                             for(Paper_order name  : all_names ) { if(se3.equalsIgnoreCase(name.getSes())  ) { %>
                             <tr>
                    <td><%=++i%></td>
                     <%    String count="count"+i;%>
                         
                          <td><input type="checkbox" name="<%=count%>" value="<%=count%>"></td>
                        
                     
                        <%  String  ch ="prof_name"+i ;%> 
                      
                    <td><input type="hidden" name="<%=ch%>" value="<%=name.getProf_name() %>"> <%=name.getProf_name() %></td>
                        
                          
                        <td>
                            <% String ch2="receive_course_name"+i;%>
                            <input type="hidden" name="<%=ch2%>" value="<%=name.getCourse()%>"><%=name.getCourse()%></td>
                         <td>
                              <% String ch3="receive_code"+i;%>                            
                              <input type="hidden" name="<%=ch3%>" value="<%=name.getCode() %>"><%=name.getCode() %></td> 
                         <td>
                              <% String ch39="order_date"+i;%> <% Date d =name.getTdate();
                   String  dt= sdf2.format(d); %>                           
                              <input type="hidden" name="<%=ch39%>" value="<%=dt%>"><%=dt %></td> 
                         
                                           
                        <td>
                            <% String ch5="receive_date"+i;%> 
                               <input type="date" name="<%=ch5%>" >
                               
                     
   
                         </td>
                         <td>
                              <% String ch40="due_order"+i;%> <% Date d2 =name.getDue_date();    ;
                   String  dt2= sdf2.format(d2);  %>                           
                              <input type="hidden" name="<%=ch40%>" value="<%=dt2  %>"><%=dt2 %></td> 
                         <td>
                              <% String ch41="get_session"+i;%>                            
                              <input type="hidden" name="<%=ch41%>" value="<%=name.getSes() %>"><%=name.getSes() %></td> 
                         
                        </tr>
                        <%} }%>
         
                        
                       
                     
                    </tbody>
                  </table>
                            <div class="" style="margin-left: 1000px;">
                        <button type="submit" class="btn btn-primary btn-sm" id="checkBtn">
                            <i class="fa fa-dot-circle-o"></i> Save
                        </button>
                        
                      </div>
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










