<%@include file="check_login.jsp" %>
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
<html>
    <head>
           <style>
            /* <css for Body> */
            body {
  background: white; 
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
    <%
        String m=(String) session.getAttribute("exam_sess");
    String n=(String) session.getAttribute("year");
    
    
    %>
    </head>
    
    <body>
        <page size="A4">
    
    <!--Header-->
        <div>
       <center><h1>Government Polytechnic, Nashik
            </h1></center><hr>
            <div>
                <div style="margin-left: 40px;">
                    No.GPN/EC/Renum./<%=m%>-<%=n%>/
                </div>
                <div style="margin-left: 550px; margin-top:-15px;">
                    Date : 
                </div>
                
            </div>
            </div>
            
            <div style="border-bottom:2px; margin-top: 5px;">
           <center> <p class="solid" style="padding: 5px; margin-left: 40px; margin-right: 40px; font-size: 15px;"><b>Bill and Acquitance Cum Receipt of Remuneation of Moderators WIN Exam-2018</b></p></center>
            </div>
            <div>
                <center><b>Sub:- Question Paper Moderation <%=m%> Exam-<%=n%>  Remuneration Bill.</b></center>
            </div>
            <div style="margin-left: 40px;">
            <b><font style="font-size:20px;">A&#41;</font> Total Question Papers Moderated:- <font style="font-size:15px;">328</font> </b>
            </div>
            <div style="margin-left: 40px;">
            <b><font style="font-size:20px;">B&#41;</font> Question Paper Moderation Remuneration:-  </b>
            </div>
   <!--Table-->
            <div style="margin-left: 40px;">
            <table id="dataTable">
                <tr>
                <th>
                    Sr.<br>
                    No.
                </th>
                <th>
                Name of Moderator
                </th>
                <th>
                Date Of <br>
                    Mode.
                </th>
                <th>
                Course <br>
                    Code
                </th>
                <th>
                Cat<br>
                    A&amp;<br>
                    B
                </th>
                <th>
                Qty.
                </th>
                <th>
                Paper<br>Qty.
                </th>
                <th>
                Rate<br>
                    Q.P
                </th>
                <th>
                Incidental/<br>Conveyanc<br>e
                    Charges
                </th>
                <th>
                    <b>Total</b>
                </th>
                <th>
                Sign.
                </th>
                    </tr>  <%    //String name=(String)  session.getAttribute("prof");
//String k=(String)session.getAttribute("billcode");
 //String m=(String)session.getAttribute("billcourse");
 //String n=(String)session.getAttribute("billamt");
   HashSet s2 = new HashSet();
            Bill_of_Modurators bill1 =new Bill_of_Modurators();
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
                          
                           String select = request.getParameter(count);
                                 
                                 if(select !=null)  { 
   String ch="modprof"+i; 
                                 String names = request.getParameter(ch);
                                 if(names  !=null) { 
                                                          

                                       bill1.setMod_name(names);             // if(s.add(names)== true){
                                                          
                                 }                       
                                                     
                                   String ch1="billcourse"+i; 

                  String course= request.getParameter(ch1);
                            if(course!=null) { bill1.setCourse(course);      
                            }     
String ch2= "billcode"+i;
                        
                          String code = request.getParameter(ch2);        
                          if(code!=null) { bill1.setCode(code);}
                          
               String ch10="get_ses"+i; String sess=request.getParameter(ch10);if(ch10!=null){  bill1.setSession(sess); }
                  
                  String ch6= "amount"+i;
                     String amt = request.getParameter(ch6);
                        if(amt!=null)
                         {   bill1.setAmount(Float.valueOf(amt));}%>

                        
                 
                  <%  
                      if( s2.add(names)== true)
                      {  %>
               <tr>
                    <td>
                    <%=++j%>
                    </td>
                   
                    <td>
                   <%=names%>
                    </td>
                    <td>
                           
                            <% 
                     
                      for(int k=i ;k<=all_names.size();k++)
           {
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                                String chd= "modprof"+k ; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                 String ch77="moduration_date"+k;
                                // SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
                                    String moddate = request.getParameter(ch77);
                                 
%>  
    
 <%=moddate%><br>       <%  } } } %>
                    </td>
                    <td>
                     <% 
                     
                      for(int k=i;k<=all_names.size();k++)
           {
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                                String chd= "modprof"+k ; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                  String h2= "billcode"+k;
                               String coded = request.getParameter(h2);
                                 
%>  
    
 <%=coded %><br>       <%  } } } %> 
                    </td>
                    <td>
                        A
                    </td>
                    <td>
                            <% 
                       Integer  set_sum = 0 ;
                      for(int k=i;k<=all_names.size();k++)
           {
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                               String chd= "modprof"+k ; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                 String h5= "billsets"+k;
                  String setsd = request.getParameter(h5);
                     Integer   set_total = Integer.valueOf(setsd);
                      set_sum =set_sum+ set_total;            
%>  
    
 <%=setsd %><br>      <%  } } } %>
                    </td>
                    <td>
                    <%=set_sum%>
                    </td>
                    <td>
                        
                   <%    float mod_rate =0f;
                       for(Bill_Details amts : amount ){
                     mod_rate= amts.getAmount_of_modurator(); }
                   %>
                   <%=mod_rate%> </td>
                    <td>
                        <br><br>
                    </td>
                  
                  <% 
                     Float  sum = 0f ;
                      for(int k=i;k<=all_names.size();k++)
           {
              
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                                String chd= "modprof"+k ; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                 String h6= "amount"+k;
                     String amtd = request.getParameter(h6);
                     Float amount2 = Float.valueOf(amtd);
                      sum = sum + amount2;
                           
%>  
<%  } } } %>
 <td class="count-me"><%=sum%>  </td>
                    </td>
                    <td>
                 
                    </td>
                </tr>
                 <% } %>
            
                <%     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                                     
                                 
                                 String ch4= "d"+i; 
                                 
                                    String moddate = request.getParameter(ch4);
                                 if(moddate!=null){   
                                    Date Moduration_date = sdf.parse(moddate);
                                  
                                   bill1.setTdate(Moduration_date );}
                   
                   
                   
                   s5.save(bill1);
                 if (!tx.wasCommitted())
                          tx.commit(); 
            s5.close();

                %>
                
                    <% } }   %>  
            </table>
            <div style="margin-top: 10px;">
            <center>&#40;Total Amount in words : <b id="demo" >   </b>  Only &#41;</center>
        </div>
            <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
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
                var sum = 0;
                for(var i = 1; i < tds.length; i ++) {
                    if(tds[i].className == 'count-me') {
                        sum += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                    }
                }
                document.getElementById('dataTable').innerHTML +=  '<tr><td><b>Total Amount</b> </td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>'+ sum +'</td><td></td></tr>' ;
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
<% } %>