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
<%@page import="tables.Bill_paperSetters;"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>
<%    Paper_setter_bill_fetch namesDAO = new Paper_setter_bill_fetch();
    List<Bill_paperSetters> all_names = namesDAO.getDetails(); 
   
fetch_bill_details  bill = new fetch_bill_details();
    List<Bill_Details> amount=  bill.getDetails();  %>

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
    size: legal;
}
page[size="A4"] {  
  width: 21.0cm;
  height: 50.7cm; 
}

@media print {
  body, page {
     #printbtn{ display: none;}
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
                  <th>Moderator  Name</th>
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
                                 if(select2!=null){ 
                                   String chd= "modprof"+i ;
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
                                String chd= "modprof"+i ; 
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
                               String chd= "modprof"+i ; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                      //String ch4="moddate"+i;
                                      String ch55="d"+k;
String dd=request.getParameter(ch55);
                                 
                                    //String moddate = request.getParameter(ch4);
                                 
%>  
    
 <%=dd%><br>      <%  } } } %></td> 
      <td> 
                  <% 
                     Float  sum = 0f ;
                      for(int k=i;k<=all_names.size();k++)
           {
              
               String count2="count"+k;
                          
                           String select2 = request.getParameter(count2);
                                 
                                 if(select2 !=null){ 
                                String chd= "modprof"+i ; 
                                 String duplicate = request.getParameter(chd);
                               
                               if(names.equalsIgnoreCase(duplicate)) {
                                 String h6= "amount"+k;
                     String amtd = request.getParameter(h6);
                     Float amount2 = Float.valueOf(amtd);
                      sum = sum + amount2;
                           
%>  
          <%=amtd%> <br>      <%  } } } %> </td>
      <td class="count-me"><%=sum%>  </td>
      
      
      
      
      
      
      
      
      
      
      
      
      
                        
                        
                        
                  </tr>        
                    
             <% } %>
            
                <%     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");

                                     
                                 
                                 String ch4= "moddate"+i; 
                                 
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
              </tbody>
            </table>
     <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
          </div>
        </div>
                </div></div> 
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
        </script>
        
        
</html>
<%}%>
