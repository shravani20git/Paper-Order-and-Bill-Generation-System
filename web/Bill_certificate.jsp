<%-- 
    Document   : Bill_certificate
    Created on : Dec 5, 2018, 12:15:40 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.Mod_committee_fetch"%>
<%@page import="java.util.*" %>
<%@page import="tables.Mod_committee" %>
<% Mod_committee_fetch namesDAO = new Mod_committee_fetch();
    List<Mod_committee> all_names = namesDAO.getDetails(); 
        
        List<Mod_committee> j= namesDAO.get_Comity(2);
     //   out.println(j) ;
        
        
        %>
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
                
                <td class="count-me" >
            <%=request.getParameter("B")%>
                           </td>
               
                </tr>
               
                    
               <tr>
                    <th>
                    C
                    </th>
                   
                    <td>
                    Q.P. Typing Remuneration
                    </td>
                   
                    
                    <td class="count-me" >
            <%=request.getParameter("C")%>
                        
                    </td>
                   
                   
                </tr>
                
                
                 <tr>
                    <th>
                    D
                    </th>
                   
                    <td>
                  Mod. Commitee Member Remu.
                    </td>
                   
                    
                    <td class="count-me" >
            <%=request.getParameter("D")%>
                        
                    </td>
                   
                   
                </tr>
                
                
                 
                 <tr>
                    <th>
                    E
                    </th>
                   
                    <td>
                        <B>Grand Total &#40;B+C+D&#41;</B>
                    </td>
                   
                    
                    <td  >
            <%=request.getParameter("E")%>
                    </td>
                   
                   
                </tr> 
       
               
                
            </table>
            </div>
       <!-- Certificate-->
        <center><h3><U>CERTIFICATE</U></h3></center>
        <div style="margin-left: 40px;"><p>This to certify that the Rs/<b id="amount"></b>-&#40;<b id="demo" >  </b> Only&#41;</b><br>should paid as remuneration towards the Question paper moderation, Typing and members of Moderation committee<br> as stated above at<b>&#40;E&#41;</b></p></div>
       
          <div>
                  <div style="margin-left:60px; margin-top:30px;">
                     
                    
                      <br>
                      <br>
                    &emsp;&emsp;&emsp; Prof.  <%=namesDAO.get_Comity(3)%><br>
                      Secretary Mod. Commitee W-2018<br>
                     &emsp;&emsp;Govt.Polytechnic, Nashik
                      
                  </div>
                  
              </div>
              <div style="margin-left:60px; margin-top:20px;">
                  Recommended for payment of Rs.<b id="amt"></b>/-<br>
                  (<b id="memo"> </b> Only)
              </div>
              <br>
              <br>
              <br>
              
              <div style="margin-left: 510px; margin-top:-150px;">
                  &emsp;&emsp;&emsp; Prof. <%=namesDAO.get_Comity(4)%><br>
                  Chairman Mod. Committee W-2018<br>
                  &emsp;&emsp; Govt. Polytechnic, Nashik.
              </div>
        <div style="margin-left: 510px;margin-top:100px; ">
                     &emsp;&emsp;&emsp; Prof. <%=j%><br>
                  Controller of Examinations
                  <br> &emsp;&emsp;Govt. Polytechnic, Nashik. 
              </div>
              <br>
              <div style="margin-left:60px; ">
                 <b> Bill passed for payment of Rs.<b id="amo"></b>/- </b><br>
                  
                 ( <b id="kemo">        </b> Only)
                     
                     
                     
                 </div>
              </div>
              <br>
              <br>
              <br>
              <br>
              <div style="margin-left: 510px; margin-top:10px;">
                  Prof. <%=namesDAO.get_Comity(1)%><br>
                <b>  &emsp;&emsp;&emsp; Principle<br>
                  Govt. Polytechnic, nashik.</b>
              </div>
              <br>
              <div style="margin-left:60px; ">
              <font size="2px;"> Copy to :-<br>
              1&#41; Cashier, Govt. Polytechnic, Nashik with originals vouchers and individual rem. Bills.
                  </font></div>
        </div>
        </page>
         <footer>
     <script>
                  function print_page() {
            var ButtonControl = document.getElementById("printbtn");
            ButtonControl.style.visibility = "hidden";
            window.print();
        }
     
    
     var tds = document.getElementById('dataTable').getElementsByTagName('td');
                var sum = 0;
             
                for(var i = 1; i < tds.length; i ++) {
                    if(tds[i].className == 'count-me') {
                        sum += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                    }
                   
                  }     
                    
     
                     
               
                
               
  document.getElementById("amount").innerHTML = sum;    document.getElementById("amt").innerHTML = sum; document.getElementById("amo").innerHTML = sum;         
                  var x = convertNumberToWords(sum);
document.getElementById("demo").innerHTML = x;
document.getElementById("memo").innerHTML = x;
document.getElementById("kemo").innerHTML = x;
//document.getElementById("dem").innerHTML = x;
function convertNumberToWords(amount) {
    var words = new Array();
    words[0] = '';
    words[1] = 'One';
    words[2] = 'Two';
    words[3] = 'Three';
    words[4] = 'Four';
    words[5] = 'Five';
    words[6] = 'Six';
    words[7] = 'Seven';
    words[8] = 'Eight';
    words[9] = 'Nine';
    words[10] = 'Ten';
    words[11] = 'Eleven';
    words[12] = 'Twelve';
    words[13] = 'Thirteen';
    words[14] = 'Fourteen';
    words[15] = 'Fifteen';
    words[16] = 'Sixteen';
    words[17] = 'Seventeen';
    words[18] = 'Eighteen';
    words[19] = 'Nineteen';
    words[20] = 'Twenty';
    words[30] = 'Thirty';
    words[40] = 'Forty';
    words[50] = 'Fifty';
    words[60] = 'Sixty';
    words[70] = 'Seventy';
    words[80] = 'Eighty';
    words[90] = 'Ninety';
    amount = amount.toString();
    var atemp = amount.split(".");
    var number = atemp[0].split(",").join("");
    var n_length = number.length;
    var words_string = "";
    if (n_length <= 9) {
        var n_array = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0);
        var received_n_array = new Array();
        for (var i = 0; i < n_length; i++) {
            received_n_array[i] = number.substr(i, 1);
        }
        for (var i = 9 - n_length, j = 0; i < 9; i++, j++) {
            n_array[i] = received_n_array[j];
        }
        for (var i = 0, j = 1; i < 9; i++, j++) {
            if (i == 0 || i == 2 || i == 4 || i == 7) {
                if (n_array[i] == 1) {
                    n_array[j] = 10 + parseInt(n_array[j]);
                    n_array[i] = 0;
                }
            }
        }
        value = "";
        for (var i = 0; i < 9; i++) {
            if (i == 0 || i == 2 || i == 4 || i == 7) {
                value = n_array[i] * 10;
            } else {
                value = n_array[i];
            }
            if (value != 0) {
                words_string += words[value] + " ";
            }
            if ((i == 1 && value != 0) || (i == 0 && value != 0 && n_array[i + 1] == 0)) {
                words_string += "Crores ";
            }
            if ((i == 3 && value != 0) || (i == 2 && value != 0 && n_array[i + 1] == 0)) {
                words_string += "Lakhs ";
            }
            if ((i == 5 && value != 0) || (i == 4 && value != 0 && n_array[i + 1] == 0)) {
                words_string += "Thousand ";
            }
            if (i == 6 && value != 0 && (n_array[i + 1] != 0 && n_array[i + 2] != 0)) {
                words_string += "Hundred and ";
            } else if (i == 6 && value != 0) {
                words_string += "Hundred ";
            }
        }
        words_string = words_string.split("  ").join(" ");
    }
    return words_string;
}
      $(document).ready(function() {
    //this calculates values automatically 
    sum();
});


                 
                 
                 
                 
                 
  
        </script>
    </footer> 
    </body>
    <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
</html>