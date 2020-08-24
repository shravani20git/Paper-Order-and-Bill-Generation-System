<%-- 
    Document   : bill
    Created on : Dec 5, 2018, 1:27:53 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <style>
            /* <css for Body> */
            body {
  background: rgb(204,204,204); 
page-break-inside: avoid;
}
             /* </css for Body> */
            
            /* <css for page> */
page {
  background: white;
  display: block;
  margin: 0 auto;
  margin-bottom: 0.5cm;
  padding-top: 0.3cm;
  box-shadow: 0;
    font-family: Arial;
    font-size: 10pt;
  /* page-break-inside: avoid;*/
}
page[size="A4"] {  
  width: 21.0cm;
  height: 29.7cm; 
 page-break-inside: avoid;

}

@media print {
    /*div,li,br,hr,ol,li,td,td,th {
    page-break-inside: avoid;}*/
  header ,body ,font,center,div,br,b,li,hr,ol,tr,td,th {
       page-break-inside: avoid;  
    }
  body, page {
    margin: 0;
    box-shadow: 0;
  }
}
               
               @media print  {
    footer {page-break-after: always;}
}
               p.solid {border-style: solid;}
               table {
    border-collapse: collapse;
}

               table,td,th {
    border: 1px solid black;
                   padding: 8px;
                   margin-left: 150px;
}
                 @media print  {
    footer {page-break-after: always;}
}
               p.solid {border-style: solid;}
               table {
    border-collapse: collapse;
}

               table,td,th {
    border: 1px solid black;
                   padding: 4px;
}
               @media print {
    /*div,li,br,hr,ol,li,tr,td,th {
    page-break-inside: avoid;}*/
  header ,body ,font,center,div,br,b,li,hr,ol,tr,td,th {
       page-break-inside: avoid;  
    }
                   @media print  {
    footer {page-break-after: always;}
}
        </style>
    
    </head>
   
    <body> <form action="Bill_certificate.jsp">
        <page size="A4">
    <div style="margin-top: 30px;">
            <div style="margin-left: 40px;">
            <b>Total Remuneation Paid Against Question Paper Moderation Works.  </b>
            </div>
   <!--Table-->
  
   <div style="margin-left: -100px; margin-top: 20px;">
            <table id="dataTable">
                <tr>
                    
                <th>
                    B
                </th>
                
                <td>
                Q.P. Moderation Remuneration
                </td>
                
                <td >
             <input type="number" class="form-control" id="B" placeholder="Enter the ammount" name="B" onkeyup="sum();">
                           </td>
               
                </tr>
               
                    
               <tr>
                    <th>
                    C
                    </th>
                   
                    <td>
                    Q.P. Typing Remuneration
                    </td>
                   
                    
                    <td> 
                        <input type="number" class="form-control" id="C" placeholder="Enter the ammount" name="C" onkeyup="sum();">
                        
                    </td>
                   
                   
                </tr>
                
                
                 <tr>
                    <th>
                    D
                    </th>
                   
                    <td>
                  Mod. Commitee Member Remu.
                    </td>
                   
                    
                    <td >
                         <input type="number" class="form-control" id="D" placeholder="Enter the ammount" name="D"onkeyup="sum();" >
                        
                    </td>
                   
                   
                </tr>
                
                
                 
                 <tr>
                    <th>
                    E
                    </th>
                   
                    <td>
                        <B>Grand Total &#40;B+C+D&#41;</B>
                    </td>
                   
                    
                    <td >
                        <input type="number" class="form-control" id="E" placeholder="" name="E" readonly onkeyup="sum();"/>
                    </td>
                   
                   
                </tr> 
           
               
                
            </table>
            </div>
        </div>
           
<button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Submit</button> 
    </page>  </form>
         <footer>
              <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
      
    
    </footer>
         <script>
               $(document).ready(function() {
    //this calculates values automatically 
    sum();
    $("#B, #C ,#D").on("onkeydown onkeyup", function() {
        sum();
    });
});

function sum() {
            var num1 = document.getElementById('B').value;
            var num2 = document.getElementById('C').value;
            var num3 = document.getElementById('D').value;
			var result = parseInt(num1) + parseInt(num2) + parseInt(num3);
			
            if (!isNaN(result)) {
                document.getElementById('E').value = result;
				
            }
        }
        </script>
    </body>
   
</html>
