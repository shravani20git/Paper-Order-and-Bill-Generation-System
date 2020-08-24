<%-- 
    Document   : modurator_bill_generated
    Created on : Sep 2, 2018, 9:55:29 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="hibernate_util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="tables.Bill_of_Modurators"%>
<%@page import="java.util.List"%>
<%@page import="dao.Paper_setter_bill_fetch"%>
<%@page import="tables.Bill_paperSetters;"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>
<%    Paper_setter_bill_fetch namesDAO = new Paper_setter_bill_fetch();
    List<Bill_paperSetters> all_names = namesDAO.getDetails(); 
   
fetch_bill_details  bill = new fetch_bill_details();
    List<Bill_Details> amount=  bill.getDetails(); 
 
   SessionFactory sf;
            Transaction tx;
                 Session s6;
                 sf=HibernateUtil.getSessionFactory();
                 s6=sf.openSession();
                 tx=s6.getTransaction();
                 tx.begin();

%>
<html>
    <head>
        
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
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
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->


        
        <style>
              /* <css for body> */
            body {
  background: rgb(204,204,204); 
}
             /* </css for Body> */
            
            /* <css for page> */
page {
  background: white;
  display: block;
  margin: 0 auto;
  margin-bottom: 0.5cm;
  padding-top: 0.3cm;
  box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);
    font-family: Arial;
    font-size: 14;
}
page[size="A4"] {  
  width: 21.0cm;
  height: 29.7cm; 
}

@media print {
  body, page {
    margin: 0;
    box-shadow: 0;
  }
}
           
            
             /* </css for page> */
            
            table{
                width: 1000px;
                margin: 0px;
                height: 200px;
            }
        </style>
            
        
    </head>
    <body>
        
       <page size="A4">
           
            <!--main div-->
        <div>
            
            <!--Header-->
            <div>
                <header>
                    
                     <center><font style="font-size:22;"><b>GOVERNMENT POLYTECHNIC,NASHIK</b></font></center>
                <center><font style="font-size:13;">(An Autonomous Institute of Govt. of Maharashtra)</font></center>
                <center><font style="font-size:19;"><b>Samangaon Road, Nashik-Road, Nashik-422101</b></font></center>
                    <hr>
                    
                </header>
            </div>
            <!--/Header-->
            <!--Order Table-->
            
                    <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
               <!-- <div class="col-lg-6">-->
                    <!--<div class="card">-->
                       
                          <table class="table table-bordered" id="dataTable" style="width:700px; margin-left: 50px;" cellspacing="0">
   
              <thead>
                <tr>
                  <th>Sr</th>
                  <th>Modurater  Name</th>
                  <th>Course Name</th>
         <th>Code Name</th>
         
         <th>Sets</th>
                  <th>Amount</th>
                   
                </tr>
              </thead>
         
              <tbody>  <% int j=0;
              Bill_of_Modurators modbill=new Bill_of_Modurators();
                      for(int i=0;i<=all_names.size();i++ ) {  
                           String count="count"+i;
                          
                           String select = request.getParameter(count);
                                 
                                 if(select !=null){ 
                                     String ch="modprof"+i;
                      String names = request.getParameter(ch);
                          modbill.setMod_name(names);
                        %>
                <tr>
                  <td><%=++j%></td>
                  <td><%=names%></td>
                  <td>
         <%     
            
                 String ch1="billcourse"+i; 
                  String course = request.getParameter(ch1);
                  if(course  !=null){ 
                      
                          modbill.setMod_name(names);
                  }
//String[] codes = request.getParameterValues("checkbox");
    //for (int i = 0; i <codes.length; i++) {		 
    //	out.println(codes[i] + "<br>");
    //}     
   %><%=course%></td>
                  
                  
                  <td> <%     

            String ch2="billcode"+i;
                  String code = request.getParameter(ch2);
                  if(code !=null){ 
                      
                          modbill.setCode(code);
                  }

   %><%=code%></td>
                    <td > <%     
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
 
       String    ch3="billsets"+i;
       String ch4="moddate"+i;
                  String  sets = request.getParameter(ch3);
                  String  moddate = request.getParameter(ch4);
                   Date Moduration_date = sdf.parse(moddate);
                  if(sets !=null && moddate!=null){
                      
                  modbill.setTdate( Moduration_date);                                       

   %><%=sets%> <%   }  %></td>
                    
                    <td class ="count-me"  > 
                     <%     

      String ch5="amount"+i;
                  String amt= request.getParameter(ch5);
                  if(amt !=null){  
                      
                      modbill.setAmount(Float.valueOf(amt));
                  }
                      
                                           

   %><%=amt%> 
                    
                    </td>
                    <%      s6.save(modbill);
                  if (!tx.wasCommitted()) 
                           tx.commit();   %>
                 
                </tr>
                 <%  } }  s6.close();  %>  
                                                </tbody>
            </table>
                      <script>
     
  var tds = document.getElementById('dataTable').getElementsByTagName('td');
                var sum = 0;
                for(var i = 1; i < tds.length; i ++) {
                    if(tds[i].className == 'count-me') {
                        sum += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                    }
                }
                document.getElementById('dataTable').innerHTML +=  '<tr><td><b>Total Amount</b> </td><td></td><td></td><td><td></td><td>'+ sum +'</td>' ;
        </script>
                 
     <div style="print">
    <input type="button" onClick="window.print()" class="hide"
value="Print"/>
    </div>
          </div>
        </div>
                </div></div> 
        </page>
    </body>




      
        
        </html>

        <%}%>