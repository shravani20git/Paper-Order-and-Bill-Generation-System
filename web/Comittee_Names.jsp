<%-- 
    Document   : Comittee_Names
    Created on : Dec 7, 2018, 11:48:25 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
   <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
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


 
    <form action ="print_comity_bill.jsp">
    <table id="myTable" >
    <thead>
        <tr>
                         
                          
                          <th>Sr.No</th>
                          <th>Name of Staff</th>
                        <th>No of Papers</th>
                       
                        <th>Remu.Rate Rs</th>
                        
                       
                         
                      </tr>
    </thead>
    <tbody>
        <tr> <td> <%int i =1;%><%=i%></td>
            <td class="col-sm-4">
               <%String ch="Prof_name"+i;%>
                                <input type="text" name="<%=ch%>" placeholder="Enter Staff name"><br>
                                <%String ch1="post"+i;%>
                                <input type="text" name="<%=ch1%>" placeholder="Enter Post of Staff(Member/Chairperson/Secretary)"
            </td>
            <td class="col-sm-4"><%String ch2="sets"+i;%><input type="number" name="<%=ch2%>" ></td>
            
            <td class="col-sm-3"><%String ch3="remu_rate"+i; %><input type="number" name="<%=ch3%>"></td>
            
            <td class="col-sm-2"><a class="deleteRow"></a>

            </td>
        </tr>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="5" style="text-align: left;">
                <input type="button" class="btn btn-lg btn-block " onclick="myFunction()" value="add" />
            </td>
        </tr>
        <tr>
        </tr>
    </tfoot> 
</table>
        <button type="submit" class="btn btn-primary btn-sm" id="checkBtn">
                            <i class="fa fa-dot-circle-o"></i> Submit
                        </button>
            
<p id="me"> </p> 
</body>  </form>
</html>
<script>
   
    var sum=0+<%=i%>;
    
    
    function myFunction(){
        sum=sum+1;
        var ch8,ch9,ch10; var ch7=" Prof_name"+sum;
      ch8="post"+sum;ch9="sets"+sum;ch10="remu_rate"+sum;
        var table=document.getElementById("myTable");
        var row=table.insertRow(1);
        var cell1=row.inserCell(0);
        var cell2=row.inserCell(1);
        var cell3=row.inserCell(2);
        var cell4=row.inserCell(3);
        cell1.innerHTML='<td>'+ sum+'</td> ';
        cell2.innerHTML='<td class="col-sm-4"><input type="text" name="'+ch7+'" placeholder="Enter Staff name"><br><input type="text" name="'+ch8+'" placeholder="Enter Post of Staff(Member/Chairperson/Secretary)"</td> ';
        cell3.innerHTML='<td class="col-sm-4"><input type="number" name=" '+ch9+'" ></td> ';
        cell4.innerHTML='<td class="col-sm-3"><input type="number" name="'+ch10+'"></td> ';
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    </script>
    
    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
    
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