<%-- 
    Document   : try2
    Created on : 7 Dec, 2018, 11:24:19 AM
    Author     : WIN 10
--%>

<%@page import="java.util.Enumeration"%>

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
    <page size="A4">
    <div style="margin-top: 30px;">
            <div style="margin-left: 40px;">
            <b><font style="font-size:20px;">D&#41;</font> Remuneation of Chairman / Member Secretary / Member / Supporting Staff of Question Paper Moderation Committee.  </b>
            </div>
   <!--Table-->
            <div style="margin-left: -20px; margin-top: 20px;">
            <table id="dataTable"> 
                
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
                   Total_amt
                    </th>
               
                
                <th>
                     Receiver Sign.
                    </th>
                    </tr>
        <%  Enumeration<String> al=request.getParameterNames();
        
        int i=0;
        
        while(al.hasMoreElements()){
        
        
        i=i+1;
       
        al.nextElement();
        }
      
        int k=i/5;
     
        %>    
      
      
        
            
        <%
            
            
for(int m=1;m<=k;m++){
               
    String ch7,ch8,ch9,ch10;
    
    ch7="Prof_name"+m;
         ch8="post"+m;
         ch9="sets"+m; ch10="remu_rate"+m;
         
         %>
        
         
         
         
        
         <tr><td><%=m%></td>  <td>
        
            <%=request.getParameter(ch7)%>  <br>
       ( <%=request.getParameter(ch8)%>)</td><td>
      <% String sets=request.getParameter(ch9);
          int set=Integer.parseInt(sets);
          
          %><%=sets%></td>
        <td>  <%String rates=request.getParameter(ch10);
            int remu=Integer.parseInt(rates);
        %><%=remu%></td>
        <td class="count-me"><%int total=set*remu; %><%=total%> </td>
        <td>
            
        </td>
    </tr>
       <%

   




}
%>
 </table>
      </div>
        <div style="margin-top: 10px;">
            <center><b>&#40;Total Amount in words :  <b id="fefo"> </b> Only &#41;</b></center>
        </div>
        </div>
        </page>
         <footer>
           
     
    </footer> 
    <%-- 
    Document   : foot2
    Created on : Dec 6, 2018, 11:10:35 PM
    Author     : hp
--%>

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
                    
     
                     
         document.getElementById('dataTable').innerHTML +=  '<tr><td><b>Total Amount</b> </td>  <td></td>  <td></td>  <td></td>  <td>'+ sum +'</td><td></td> </tr>' ;       
                
               
           
                  var x = convertNumberToWords(sum);
document.getElementById("fefo").innerHTML = x;

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
        </script>
        
       
       </body> 
    <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
</html>