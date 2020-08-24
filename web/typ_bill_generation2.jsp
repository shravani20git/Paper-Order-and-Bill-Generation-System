<%-- 
    Document   : Typist_bill2
    Created on : Dec 2, 2018, 4:12:45 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="check_login.jsp" %>
<%@page import="tables.Bill_of_Typist"%>
<%@page import="java.util.HashSet"%>
<%@page import="hibernate_util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="tables.Bill_of_Modurators"%>
<%@page import="java.util.List"%>
<%@page import="dao.Paper_setter_bill_fetch"%>
<%@page import="tables.Bill_paperSetters"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>
<%    Paper_setter_bill_fetch namesDAO = new Paper_setter_bill_fetch();
    List<Bill_paperSetters> all_names = namesDAO.getDetails(); 
   
fetch_bill_details  bill = new fetch_bill_details();
    List<Bill_Details> amount=  bill.getDetails();  %>
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
            <b><font style="font-size:20px;">c&#41;</font> Question Paper Typing Remuneration:-  </b>
            </div>
   <!--Table-->
            <div style="margin-left:-85px; margin-top: 20px; margin-right: 55px">
            <table id="dataTable">
                <tr>
                <th>
                    Sr.<br>
                    No.
                </th>
                <th>
                Name of Typist
                </th>
                
                <th colspan="2">
               Q.p. Qty
                </th>
                <th colspan="2">
                Rate
                </th>
                   <!-- <th>
                    Ammount
                    </th>-->
               
                <th>
                    <b>Total Amount  </b>
                </th>
                <th>
                    Sign.
                    </th>
                </tr>    <tr><td></td><td></td><td>Q.p(Regular)</td><td>Q.p(Mathematical)</td><td>Rate(Regular)</td><td>Q.p(Mathematical)</td><td></td><td></td></tr>
                     <%    //String name=(String)  session.getAttribute("prof");
//String k=(String)session.getAttribute("billcode");
 //String m=(String)session.getAttribute("billcourse");
 //String n=(String)session.getAttribute("billamt");
   HashSet s2 = new HashSet();
   Float rpa=0f,mtr=0f;  
                                for(Bill_Details  amts  : amount ){
                             rpa= amts.getAmount_of_typist();
                                mtr =amts.getAmount_of_math();    }
   HashSet s3=new HashSet(); 
            Bill_of_Typist bill1 =new Bill_of_Typist();
               int j=0;  
           for(int i=0;i<=all_names.size();i++)
           {
                 SessionFactory sf;
            Transaction tx;
                 Session s5;
                 sf=HibernateUtil.getSessionFactory();
                 s5=sf.openSession();
                 tx=s5.getTransaction();
                 tx.begin();
               String count="count"+i;
                                                             Float perSetAmount=0f;
                           String select = request.getParameter(count);
                                 
                                 if(select!=null)  { 
   String ch="typprof"+i; 
                                 String names = request.getParameter(ch);
                                 if(names!=null) { 
                                                          

                                       bill1.setTyp_name(names);             // if(s.add(names)== true){
                                                          
                                 }                       
                                                     
                                   String ch1="billcourse"+i; 

                  String course= request.getParameter(ch1);
                            if(course!=null) { bill1.setCourse(course);      
                            }     
String ch2= "billcode"+i;                                                            
                                                                                                                
                          String code = request.getParameter(ch2);        
                          if(code!=null) { bill1.setCode(code);}
                          String ch9 = "get_ses"+i;
                        
                          String sess = request.getParameter(ch9);        
                          if(sess !=null) { bill1.setSes(sess);   ;}
                           String ch99="typ_form"+i;
                        String typist_format=request.getParameter(ch99);
                                 String h6= "billsets"+i;
                  String sets_no = request.getParameter(h6);
                    Integer set_val= Integer.valueOf(sets_no);   if(typist_format.equalsIgnoreCase("Mathematical")) { perSetAmount= set_val*mtr  ;   bill1.setAmount(perSetAmount);  }
                    else{ perSetAmount= set_val*rpa;    bill1.setAmount(perSetAmount); }
                  /*String ch6= "amount"+i;
                     String amt = request.getParameter(ch6);
                        if(amt!=null)
                         {   bill1.setAmount(Float.valueOf(amt)); } */%>

                        
                 
                  <%  
                      if( s2.add(names)== true)
                      {  %>
               <tr>
                     <td><%=++j%></td>
                   
                    <td><%=names%></td>
                   
                    
                    
                  <% 
                      Integer  set_sum = 0 ;  Integer math_set=0; Integer  et_sum = 0;
                      for(int k=i;k<=all_names.size();k++)
           {  
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                               String chd= "typprof"+k ; 
                                 String duplicate = request.getParameter(chd);
                               
                             if(names.equalsIgnoreCase(duplicate)) {
                                 String h5= "billsets"+k;
                  String setsd = request.getParameter(h5);
                    Integer set_amt= Integer.valueOf(setsd);  
              String ch_m="typ_form"+k;
               String set_m=request.getParameter(ch_m); if(set_m.equalsIgnoreCase("Mathematical"))
               {
               math_set=math_set+set_amt;
               
               }  if(set_m.equalsIgnoreCase("Regular"))
               {    set_sum =set_sum + set_amt;}
                              
                              
                              /*if(names.equalsIgnoreCase(duplicate)) {
                                 String h5= "billsets"+k;
                  String setsd = request.getParameter(h5);
                    Integer set_amt= Integer.valueOf(setsd);   set_sum =set_sum + set_amt; */
               
               
               
             
             
      }    } }          
%>  
  


<td class="count">  
    <%= set_sum%>  </td> <td class="count-to"><%=math_set%></td> 
                   
                    <td>
                   <% /*Float k=0f,mtr=0f;  
                                for(Bill_Details  amts  : amount ){
                             k= amts.getAmount_of_typist();
                                mtr =amts.getAmount_of_math();    }
                          */  %>
                            <%=rpa%> </td><td><%=mtr%></td>
                    <td class="count-me">
                   <%  Float total_amt=0f;
                  // total_amt=set_sum *k;
                    total_amt= (set_sum *rpa)+(math_set*mtr);
                   %><%=total_amt%>
                   </td>
                   <!-- <td>
                        <b><%=total_amt%></b>
                    </td> -->
                    <td>
                        <br><br>
                    </td>
                </tr>
                <% } %>
            
                <%     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                                     
                                 
                                 String ch4= "typdate"+i; 
                                 
                                    String moddate = request.getParameter(ch4);
                                 if(moddate!=null){   
                                    Date Moduration_date = sdf.parse(moddate);
                                   
                                   bill1.setTdate(Moduration_date );}
                                 
                                 
                  
                   
                   
                   s5.save(bill1);
                 if (!tx.wasCommitted())
                          tx.commit(); 
            s5.close();

                %>
                
                    <%  } }   %> 
                
                <!-- <tr>  
                    <td>
                    
                    </td>
                   
                    <td>
                  <b>  Total Q. Paper set </b>
                    </td>
                   
                    
                    <td>
                        
                    </td>
                   
                    <td>
                   
                    </td>
                   <td>
                   
                   </td>
                    <td>
                        <b>4</b>
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
                   
                   </td>
                    <td>
                        <b>500</b>
                    </td>
                    <td>
                    
                    </td>
                </tr>
                
                 -->
           
               
                
            </table>
            </div>
        <div style="margin-top: 10px;">
            <center><b>&#40;Total Amount in words : <b id="demo" >  </b> Only&#41;  </b></center>
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
     
  var tds = document.getElementById('dataTable').getElementsByTagName('td');
                var sum = 0 ,m_sets=0;
                var sum_sets = 0,total_sets=0;
                for(var i = 1; i < tds.length; i ++) {
                    if(tds[i].className == 'count-me') {
                        sum += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                    }
                   
                  }     
                    
                     for(var i = 1; i < tds.length; i ++) {
                    
                    if(tds[i].className == 'count') {
                        sum_sets += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                    }
                    
                    if(tds[i].className  == 'count-to') {
                        m_sets += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                    }
                    total_sets=m_sets +sum_sets;
                   
                  }
                document.getElementById('dataTable').innerHTML +=  '<tr><td><b>Total Q.paper Qty</b> </td><td></td><td colspan="2">'+ total_sets +'</td><td colspan="2"></td><td></td><td></td> </tr>';
                 document.getElementById('dataTable').innerHTML +=  '<tr><td><b>Total Amount</b> </td>  <td></td>  <td colspan="2" ></td>  <td colspan="2"></td>  <td>'+ sum +'</td><td></td> </tr>' ;
                 
                  var x = numberToEnglish(sum,",");
document.getElementById("demo").innerHTML = x;
function numberToEnglish(n, custom_join_character) {

    var string = n.toString(),
        units, tens, scales, start, end, chunks, chunksLen, chunk, ints, i, word, words;

    var and = custom_join_character || 'and';

    /* Is number zero? */
    if (parseInt(string) === 0) {
        return 'zero';
    }

    /* Array of units as words */
    units = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];

    /* Array of tens as words */
    tens = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

    /* Array of scales as words */
    scales = ['', 'thousand', 'million', 'billion', 'trillion', 'quadrillion', 'quintillion', 'sextillion', 'septillion', 'octillion', 'nonillion', 'decillion', 'undecillion', 'duodecillion', 'tredecillion', 'quatttuor-decillion', 'quindecillion', 'sexdecillion', 'septen-decillion', 'octodecillion', 'novemdecillion', 'vigintillion', 'centillion'];

    /* Split user arguemnt into 3 digit chunks from right to left */
    start = string.length;
    chunks = [];
    while (start > 0) {
        end = start;
        chunks.push(string.slice((start = Math.max(0, start - 3)), end));
    }

    /* Check if function has enough scale words to be able to stringify the user argument */
    chunksLen = chunks.length;
    if (chunksLen > scales.length) {
        return '';
    }

    /* Stringify each integer in each chunk */
    words = [];
    for (i = 0; i < chunksLen; i++) {

        chunk = parseInt(chunks[i]);

        if (chunk) {

            /* Split chunk into array of individual integers */
            ints = chunks[i].split('').reverse().map(parseFloat);

            /* If tens integer is 1, i.e. 10, then add 10 to units integer */
            if (ints[1] === 1) {
                ints[0] += 10;
            }

            /* Add scale word if chunk is not zero and array item exists */
            if ((word = scales[i])) {
                words.push(word);
            }

            /* Add unit word if array item exists */
            if ((word = units[ints[0]])) {
                words.push(word);
            }

            /* Add tens word if array item exists */
            if ((word = tens[ints[1]])) {
                words.push(word);
            }

            /* Add 'and' string after units or tens integer if: */
            if (ints[0] || ints[1]) {

                /* Chunk has a hundreds integer or chunk is the first of multiple chunks */
                if (ints[2] || !i && chunksLen) {
                    words.push(and);
                }

            }

            /* Add hundreds word if array item exists */
            if ((word = units[ints[2]])) {
                words.push(word + ' hundred');
            }

        }

    }

    return words.reverse().join(' ');

}

                 
                 
                 
                 
                 
                 
                 
        </script>
    </footer> 
    </body>
    <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
</html>
<% }%>