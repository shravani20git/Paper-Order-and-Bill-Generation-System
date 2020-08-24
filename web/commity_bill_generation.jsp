<%-- 
    Document   : Commity_bill
    Created on : Dec 2, 2018, 5:46:36 PM
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
    
    <body>
        <page size="A4">
    <div style="margin-top: 30px;">
            <div style="margin-left: 40px;">
            <b><font style="font-size:20px;">D&#41;</font> Remuneation of Chairman / Member Secretary / Member / Supporting Staff of Question Paper Moderation Committee.  </b>
            </div>
   <!--Table-->
            <div style="margin-left: -20px; margin-top: 20px;">
            <table>
                <tr>
                <th>
                    Sr.<br>
                    No.
                </th>
                <th>
                Name of Staff
                </th>
                
                <th>
            No. of Papers
                </th>
                <th>
                Remu Rate RS.
                </th>
                    <th>
                    Total Ammount
                    </th>
               
                
                <th>
                    Sign.
                    </th>
                    </tr>
               <tr>
                    <td>
                    1
                    </td>
                   
                    <td>
                    S.P.Muley
                    </td>
                   
                    
                    <td>
                        4
                    </td>
                   
                    <td>
                    150
                    </td>
                   <td>
                   900
                   </td>
                    <td>
                        
                    </td>
                   
                </tr>
                
                
                 <tr>
                    <td>
                    
                    </td>
                   
                    <td>
                  <b>  Total Ammount</b>
                    </td>
                   
                    
                    <td>
                        
                    </td>
                   
                    <td>
                   
                    </td>
                   <td>
                   <b>900</b>
                   </td>
                    <td>
                        
                    </td>
                   
                </tr>
                
                 
           
               
                
            </table>
            </div>
        <div style="margin-top: 10px;">
        <center><b>&#40;Total Amount in words : &#41;</b></center>
        </div>
        </div>
        </page>
         <footer>
     <script>
          function print_page() {
            var ButtonControl = document.getElementById("printbtn");
            ButtonControl.style.visibility = "hidden";
            window.print();
        }
        </script>
    </footer> 
    </body>
    <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
</html>
