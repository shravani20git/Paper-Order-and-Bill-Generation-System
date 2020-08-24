<%@page import="java.util.HashSet"%>
<%@page import="hibernate_util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="tables.Bill_paperSetters"%>
<%@page import="java.util.List"%>
<%@page import="tables.Receive_paper_order"%>
<%@page import="dao.Receive_order_fetch"%>
<%@page import="tables.Modurator_details"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>

<%    Receive_order_fetch  namesDAO = new Receive_order_fetch();
    List<Receive_paper_order> all_names = namesDAO.getDetails(); 
     Modurator_details_fetch  modurator = new Modurator_details_fetch();
    List<Modurator_details> mod_names =  modurator.getDetails();
     String m=(String) session.getAttribute("exam_sess");
    String n=(String) session.getAttribute("year");
    

%>

<html>
    <head>
        
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edg
   
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
  <!--  <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->


        
                   <style>
            /* <css for Body> */
            body {
                  background: white ;
      /*rgb(204,204,204); */
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
            
        
    </head>
    <body>
        <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
         
       <page size="A4">
           
            <!--main div-->
        <div>
            
            <!--Header-->
          <div style="margin-left:5px; margin-top: 2px;">
                <header>
                    
                     <center><font style="font-size:22;"><b>GOVERNMENT POLYTECHNIC,NASHIK</b></font></center>
                <center><font style="font-size:13;">(An Autonomous Institute of Govt. of Maharashtra)</font></center>
                <hr>
                    No.GPN/EC/paperSet/<%=m%>-<%=n%> 
                    <br>
                    <font size="3px;"> Bill cum Receipt of Remuneration for paper setter Examination <font> <b> <%=m%>-<%=n%> </b>
                </header>
            </div>
            <!--/Header-->
            <!--Order Table-->
            
                    <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
               <!-- <div class="col-lg-6">-->
                    <!--<div class="card">-->
                       
                          <table class="table table-bordered" id="dataTable" style="width:700px; margin-left: 50px; margin-top: 50px" cellspacing="0">
                           
              <thead>
                <tr>
                  <th>Sr</th>
                  <th>Professor Name</th>
                  <th>Course Name</th>
         <th>Code Name</th>
         <th>Sets</th>
                  <th>Amount</th>
                   <th>Total Amount</th>
            
                </tr>
              </thead>
              
              <tbody>
                  
                     <%    //String name=(String)  session.getAttribute("prof");
//String k=(String)session.getAttribute("billcode");
 //String m=(String)session.getAttribute("billcourse");
 //String n=(String)session.getAttribute("billamt");
   HashSet s2 = new HashSet();
           Bill_paperSetters bill1=new Bill_paperSetters();
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
          String ch="prof"+i; 
                                 String names = request.getParameter(ch);
                                 if(names  !=null) { 
                                                          

                                       bill1.setProf_name(names);             // if(s.add(names)== true){
                                                          
                                 }                       
                                                      
                                 String ch1= "billcourse"+i;
                  String course= request.getParameter(ch1);
                            if(course!=null) { bill1.setCourse_name(course);      
                            }     
String ch2= "billcode"+i;
                        
                          String code = request.getParameter(ch2);
                          if(code!=null) { bill1.setCode(code);}
                          
                              String ch5= "sets"+i;
                  String sets = request.getParameter(ch5);
                  if(sets!=null) { bill1.setSets(Integer.parseInt(sets));}  
                  
                  String ch10= "get_ses"+i;
                  String ses = request.getParameter(ch10);
                  if(ses!=null) { bill1.setSes(ses); }//bill1.setSets(Integer.parseInt(sets));}
                  
                  String ch6= "amount"+i;
                     String amt = request.getParameter(ch6);
                        if(amt!=null)
                         {   bill1.setAmount(Float.valueOf(amt));}%>

                        
                 
                  <%  
                      if( s2.add(names)== true)
                      {  %>
                      <tr>
                       <td><%=++j%></td>
                  <td><%=names%></td> <td>
                  <% for(int k=i;k<=all_names.size();k++)
           {
                                   String count2="count"+k;
                                  String select2 = request.getParameter(count2);
                                 if(select2 !=null){ 
                                   String chd="prof"+k; 
                                 String duplicate = request.getParameter(chd);
                                if(names.equalsIgnoreCase(duplicate)) {
                             String h1= "billcourse"+k;
                  String coursed= request.getParameter(h1);  %>  
    
    <%=coursed%><br>   <%  } } } %>
      </td>
                  
                  
      <td>
                  <% 
                     
                      for(int k=i;k<=all_names.size();k++)
           {
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                                 String chd="prof"+k; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                  String h2= "billcode"+k;
                               String coded = request.getParameter(h2);
                                 
%>  
    
 <%=coded %><br>       <%  } } } %> </td>
                  
     <td>
                  <% 
                     
                      for(int k=i;k<=all_names.size();k++)
           {
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                                 String chd="prof"+k; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                 String h5= "sets"+k;
                  String setsd = request.getParameter(h5);
                                 
%>  
    
 <%=setsd %><br>      <%  } } } %></td> 
      <td> 
                  <% 
                     Float  sum = 0f ;
                      for(int k=i;k<=all_names.size();k++)
           {
              
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                                 String chd="prof"+k; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                 String h6= "amount"+k;
                     String amtd = request.getParameter(h6);
                     Float amount = Float.valueOf(amtd);
                      sum = sum + amount;
                           
%>  
          <%=amtd%> <br>      <%  } } } %> </td>
      <td class="count-me"><%=sum%>  </td>
      
      
      
      
      
      
      
      
      
      
      
      
      
                        
                        
                        
                  </tr>        
                    
             <% } %>
            
                <%     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                                     
                                 String ch3= "modurator_name"+i;
                                   String modname= request.getParameter(ch3);
                                   if(modname!=null){ bill1.setMod_name(modname);  }
                                 String ch4= "moddate"+i; 
                                 
                                    String moddate = request.getParameter(ch4);
                                 if(moddate!=null){   
                                    Date Moduration_date = sdf.parse(moddate);
                                   
                                   bill1.setTdate(Moduration_date );}
                                 
                                  String ch11= "bill_date"+i; 
                                 
                                    String billdate = request.getParameter(ch11);
                                 if(billdate!=null){   
                                    Date Bill_date = sdf.parse(billdate);
                                   bill1.setBillDate(Bill_date);
                                   //bill1.setTdate(Moduration_date );
                                 }
                                 
                                 String ch9= "typer_name"+i;
                                 String typname= request.getParameter(ch9);
                                 if(typname!=null){ bill1.setTyp_name(typname);  }
                                 
                                 
                   
                   
                   
                   s5.save(bill1);
                 if (!tx.wasCommitted())
                          tx.commit(); 
            s5.close();

                %>
                
                    <% } }   %>  
              </tbody>
            </table>
    
          </div>
        </div>
                </div></div> 
                    </b>
              <div>
                  <div style="margin-left:60px; margin-top:300px;">
                      Prepared by
                      <br>
                      <br>
                      <br>
                      Jr. Clerk (Exam Cell)
                  </div>
                  
              </div>
              <div style="margin-left:60px; margin-top:20px;">
                  Recommended for payment of Rs.<b></b>
                  <br> ( <b id="demo"></b> Only ) 
              </div>
              <br>
              <br>
              <br>
              <div style="margin-left:60px; ">
                  Controller of Examinations
                  <br>Government Polytechnic, Nashik. 
              </div>
              <div style="margin-left: 510px; margin-top:-50px;">
                   Administrative Officer<br>
                  Government Polytechnic, Nashik.
              </div>
              <br>
              <div style="margin-left:60px; ">
                  Bill passed for payment of Rs. <b></b>
                  <br>
                 ( <b id="memo">  </b>Only  )
              </div>
              <br>
              <br>
              <br>
              <br>
              <div style="margin-left: 510px; margin-top:-50px;">
                  Principle<br>
                  Government Polytechnic, nashik.
              </div>
              <br>
              <div style="margin-left:60px; ">
              <font size="2px;">  Copy for information &amp; necessary action to :- Cashier, Government Polytechnic Nashik
              </div>
              
              </page>
    
    </body>
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
             
    document.getElementById('dataTable').innerHTML +=  '<tr><td><b>Total Amount</b> </td><td></td><td></td><td><td></td><td></td><td>'+ sum +'</td>' ;
    var x = numberToEnglish(sum,",");
document.getElementById("demo").innerHTML = x;
document.getElementById("memo").innerHTML = x;
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
        
        
</html>
