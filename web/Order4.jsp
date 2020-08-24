<%-- 
    Document   : Order4
    Created on : Sep 13, 2018, 4:40:06 PM
    Author     : hp
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="tables.Mod_committee"%>
<%@page import="dao.Mod_committee_fetch"%>
<%@include file="check_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--Invitation Letter-->
<!--Note : only internal css is used for this page-->
<%@page import="hibernate_util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="dao.Course_fetch"%>

<%@page  import="tables.Course_Code" %>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="tables.Paper_order" %>
<%@page import="java.util.List"%>
<%@page import="dao.Professor_fetch"%>
<%@page import="tables.Professor_details"%>
<%@page import="tables.Bill_Details" %>
<%@page import="java.util.List"%>
<%@page import="dao.fetch_bill_details"%>
<%@page import="dao.Mod_committee_fetch"%>

<%@page import="tables.Mod_committee" %>
<%@page import="tables.Clg_details" %>
<%@page import="dao.Clg_details_fetch"%>
 
<html>
     <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head>
<%
          Clg_details_fetch det = new Clg_details_fetch();
    List<Clg_details> clg = det.getDetails();
        fetch_bill_details bill = new fetch_bill_details();
    List<Bill_Details> bill_names = bill.getDetails();  
    Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
     Paper_order p1= new Paper_order();
      Course_fetch courseDAO = new Course_fetch();
       Mod_committee_fetch mod_details = new Mod_committee_fetch();
    List<Mod_committee> comity_names = mod_details.getDetails(); 

    List<Course_Code> course_names =  courseDAO.getDetails();
    Mod_committee_fetch n = new Mod_committee_fetch();
   List<Mod_committee> COE_no= n.get_Comity_Ph(2);
        
        List<Mod_committee> COE= n.get_Comity(2);
       
    String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
    
        
   int j;
   
                               
                              
                                   
                               
                                   
                                   

           %>

    <!--Head Section-->
   
        <!--Css part-->
        <style>
            /* <css for Body> */
            body {
  background: gray ; 
page-break-inside: avoid;
page-break-before: avoid;
                    page-break-after: avoid;
}
             /* </css for Body> */
            
            /* <css for page> */
page {
    page-break-before: avoid;
                    page-break-after: avoid;
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
page[size="legal"] {  
    width: 21.6cm;
    height: 38.6cm; 
    
 page-break-inside: avoid;
 page-break-before: avoid;
                    page-break-after: avoid;

}

@media print {
    /*div,li,br,hr,ol,li,tr,td,th {
    page-break-inside: avoid;}*/
  header ,body ,font,center,div,br,b,li,hr,ol,tr,td,th {
       page-break-inside: avoid;  
       page-break-before: avoid;
                    page-break-after: avoid;
    }
  body, page {
    margin: 0;
    box-shadow: 0;
    page-break-before: avoid;
                    page-break-after: avoid;
  }
}
             /* </css for page> */
            
            /* <css for list>*/
            li {
                padding-left: 20px;
                page-break-inside: avoid;
                    page-break-before: avoid;
                    page-break-after: avoid;
            }
            /* </css for list> */
            
            /* <css for table of sub. date> */
            table {
    border-collapse: collapse;
    page-break-inside: avoid;
    page-break-before: avoid;
                    page-break-after: avoid;
}
@media print  {
    footer {page-break-after: always;}
}
 

table, td, th {
    border: 1px solid black;
    page-break-inside: avoid;
    page-break-before: avoid;
                    page-break-after: avoid;
}
             /* </css for table of sub. date> */
            
        </style>
        <!--/css-->
        <Title>Order Letter</Title>
    
    </head>
    <!--/head section-->
    <!--Body Section-->
    <body><%
        
        String term = request.getParameter("Term1");
            String sem =request.getParameter("Semister1");
             String year =request.getParameter("year");
            String today =request.getParameter("tdate");
            String due=request.getParameter("due_date"); 
  SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy");
String today_d=sdf2.format(sdf1.parse(today)); 
Date today_date = sdf2.parse(today_d);
SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");  SimpleDateFormat sdf3 = new SimpleDateFormat("dd/MM/yyyy"); String due_d=sdf2.format(sdf1.parse(due)); 
Date due_date = sdf2.parse(due_d);//(0253) 2461221, 2452912. gpnashik@dtemaharashtra.gov.in    2450236,2461219<br>   Web: www.gpnashik.ac.in
                   
    


        %>
        <!--Page-->
           <page size="legal">
            <!--main div-->
       <%   for(j=1;j<all_names.size();++j) {
                               String ch3=  "Professer"+j;
                               String name=request.getParameter(ch3);
                               //if (!name.isEmpty()) {
                    %>
        
            <%             
                           if(name!=null){ 
       %> 
            
            <div style="margin-left: 50px; margin-right: 45px;">
                <!--Header-->
            <header >
                
                <center><font style="font-size:20px;"><b>GOVERNMENT POLYTECHNIC,NASHIK</b></font></center>
                <center><font style="font-size:12px;">(An Autonomous Institute of Govt. of Maharashtra)</font></center>
                <center><font style="font-size:10px;"><b>Chehdi(Bk.),Samangaon Road, Nashik Road, Nashik -422 101</b></font></center>
                
                <br> <% for(Clg_details c :  clg){%>
                                  
                <div style="padding-bottom:30px">
                    <div style="float:left; padding-left:5px;">
                    Phone:<%=c.getPhone()  %> <br>
                    Email: <%=c.getEmail()  %>
                    </div>
                    
                    <div style="float: right; padding-right:65px;">
                    Fax:<%=c.getFax() %><br>
                    Web:<%=c.getWeb() %>
           <% }%>         </div>
                </div>
                
            </b>
                
            </header>
            <!--/header-->
             <div>--------------------------------------------------------------------------------------------------------------------------------------------------<br><b><center>EXAMINATION CELL</center></b>--------------------------------------------------------------------------------------------------------------------------------------------------<br></div>
                
            <div style="margin-left: 5px; margin-right: 150px; padding-bottom: 20px">
                <div style="float:left;">
                  <b> No.GPN/EC/</b><br>
                   <b><u> Confidential</u></b>
                    <br>
                   <b> Office Order</b>
                </div>
                
                <div style="float:right;">
                    Date :-<%=today_d%>
                </div>
            </div><br>
           
                <!--Letter Address block-->
                <div style="margin-top:20px;">
                    To,
                    <div style="margin-left:50px; margin-top:-20px;">
                        <b><%=name%></b>
                        <br><%
                              for( Professor_details professors  : all_names )  {
                                  String k =professors.getName();
                                  if(k.equalsIgnoreCase(name)){%>
                                  <%=professors.getClg_name() %><br>
                            Phone :-  <%= professors.getPh_no() %>  <br>    E-mail :<%=professors.getEmail() %>     
                                <%  } }
%> 

                        
                    </div>
                </div>
                <!--/Letter Address block--> 
                
                <!--Salutation-->
                <div style="margin-top:10px;">
                    Sir/Madam,</b>
                </div>
                <!--/Salutation-->
                <!--Letter Body-->
                <div style="margin-top:05;">
                    <!--Message-->
                    <div>
                    On behalf of the Institute, I have pleasure in inviting you to work as a Paper Setter for the course (subject) mentioned below for the Examinations to be conducted by Government Polytechnic Nashik, provide you are not coming under disqualification mentioned below.
                    </div>
                    <!--/Message-->
                    <!--course Detail.-->
                    <!--<div style="margin-top:-10px;">-->
                         <table    style= "font-family: Arial;  font-size: 14px;">
                          <tr>
      <th>Sr.No</th>
     
      <th>Name of Course</th>
      <th>Course Code</th>
      <th>Name of Program</th>
      <th>term</th>
      <th>Examination</th>

    </tr>

             <%  int z=0 ;
          for (int m=1 ; m <=course_names.size(); ++m )
       {
          String ch="Course"+m;
          String course=request.getParameter(ch);
         
                   
                  // String  course=(String)session.getAttribute(ch);
         try 
         {
             SessionFactory sf;
         
            Transaction t;
                 Session s;
                 sf=HibernateUtil.getSessionFactory();
                 s=sf.openSession();
                 t=s.getTransaction();
                 t.begin();
                
                   if( !course.isEmpty()) {
                       
                    p1.setProf_name(name); 
                    p1.setCourse(course);
                   
            p1.setTerm(term);  
            %>
            
         <tr>
        <td> <%=++z%></td>
     
      <td> <%=course%></td>
      <td> <%  
         String ch2="Code"+m;
         String  code=request.getParameter(ch2);
                 //(String)session.getAttribute(ch2);
          //    String[] codes = request.getParameterValues("Code");
  //  for (int i = 0; i <codes.length; i++) {		 
    
       p1.setCode(code);  p1.setTdate(today_date ); p1.setDue_date(due_date);
  String se3=se1+"-"+se2;
    p1.setSes(se3);
      //  out.println(codes[i] + "<br>");
        String ch9="Depart"+m;
                         String dep =request.getParameter(ch9);
        
    %>  <%=code%> </td> 
      <td>     <%=dep%></td>
      <td><%=term  %></td>
      <td><%=se1%></td>

    </tr>
      
<% s.save(p1);
 
t.commit(); 
s.close();
System.out.println("data entered");
}

  
}
catch( Exception e){

// out.println(e);


}%>
    <% }  %> 
                            
                  
                        </table>
                        
                        
                        
                    </div>
                    <!--/course Detail.-->
                    <!--Instruction To Paper Setters-->
                   <!-- <div style="float:left; margin-left:-240px;">-->
                        <ol type="1">
                            <!-- 1st instruction-->
                            <li><b>The specification table shall be prepared first. The topic wise course outcome shall be mentioned in first column. Once the specification table is ready the question paper shall be set as per specification table only. In the question paper, the concerned course outcomes number must be mentioned before every bit of question as per sample question paper provided along with this letter.
                                </b>
                               <!--/Date Table-->
                            </li>
                            <!--/1st instruction-->
                            
                            <!-- 2nd instruction-->
                            <li><b>The last date for submitting the manuscript of question paper set is</b>&ensp;&ensp;&ensp; <u><b><%=due_d%></b></u>
                            </li>
                            <!-- /2rd instruction-->
                            
                            <!-- 3rd instruction-->
                            <li><b>You are requested to prepare two different question paper sets (set I &amp; set II)and send it to the undersigned before the last date of submission either in CD format (Provided with order) or in manuscript (preferably in CD). The CD should be Password Protected and write the password at the top of specification table.
                                </b></li>
                            <li>
                                The following documents are attached along with this letter.
                                <!-- Document list-->
                                <ol type="a">
                                    <li>
                                        Instuction to paper setters.(To be followed strictly)
                                    </li>
                                    <li>
                                        Curriculum of the subject.
                                    </li>
                                     <li>
                                        Sample question paper format with course outcome.       
                                    </li>
                                    <li>
                                        Blank formats for writing the manuscript of Question Paper.       
                                    </li>
                                    <li>
                                        Two forms of "Certificate from Paper Setter".(To be returned duly signed)
                                    </li>
                                    <li>
                                        Two forms of specification Table based on course outcome. (To be returned duly filled &amp; signed)
                                    </li>
                                    <li>
                                        Two printed envelopes for question paper manuscript, certificate from paper setter and specification table. Each envelope is to be sealed and signed by the paper setter.
                                    </li>
                                    <li>
                                        One large size envelope on which the address of this office is printed. In this envelope, the envelope for manuscript of question papers, certificate and specification table etc. shall be inserted.
                                    </li>
                                    <li>                                 
                                        Previous Examination Question paper (For reference only)
                                    </li>
                                     <li>                                 
                                        Two CDs containing question paper format is enclosed herewith.
                                    </li>
                                </ol></li>
                                <li>                                  
                                        Any diagram difficult to draw on pc can be prepared separately on white paper.</font>
                                    </li>
                              <!--/5th instruction-->
                             <!--6th instruction--> <li>                              
                                        <b>You have to delete the question paper related data from your own personal computer and in the certificate from paper setter (below specification table) write in the handwriting, statement, that "I have deleted all questions and question paper related data from my own personal computer."</b></font>
                                    </li>
                             <!--/6th instruction-->
                             <!--7th instruction-->
                            <li>                                 
                                Both the envelopes &amp; CDs shall be inserted in the large envelope. This large envelope shall be carefully submitted or posted to the undersigned.  <b><u>If you do not accept the assignment, kindly return all the documents immediately to the undersigned.</u></b> You are entitled for honorarium as per the norms of this institute.</font>
                                    </li>
                             <!--/7th instruction-->
                        </ol>
                    
                    <!--/Instruction To Paper Setters-->
                
                                <!--/document list-->
                                
                            <!--/3rd instruction-->
                       
                  <!--  </div>
                    <!--/Instruction To Paper Setters-->
              <!---  </div>
                <!--/Letter body-->
                <%  %>
                <!--closing-->
                 <div style="float:right; text-align:center;">
                    Yours Faithfully,
                    <!-- Space for Signature-->
                    <br>
                    <br>
                    <br>
                    <!--/space for Signature-->
                   <b>  ( <%= COE%>  )<br>
                       <%=COE_no  %><br>
                    Controller of examinations<br>
                    Goverment Polytechnic Nashik<br>
                    </b>
                </div>
                <!--/closing-->
                <!--Note-->
               <div style="float:left; text-align:left; padding-top: 15px;">
                    <font size="1px;">  
                       <b> Note :</b>
                         <!--List of notes-->
                        <ol type="I">
                            <li><b>Remuneration</b>
                                <ol type="a">
                                   <% for( Bill_Details  b  : bill_names )  {
                                       
                                       
                                       %>
                                    <li><u>for manuscript format. Rs. <%=b.getManuscript() %>/- per set of setting questioner paper</u></li>
                                    <li><u>for CD format. Rs.<%=b.getCd()%> per set of question paper.</u></li><% }%>
                                </ol>
                            </li>
                       <li> All the documents attached here with should be returned to this Institute, if you are under any of the disqualification's mentioned below OR if you do not accept the letter of appointment as a paper setter.</li>
                   
                    
                        <li>
                            If he/she has been disqualified for appointment as paper setter and/or examiner by any statutory university or any Examination Board.
                        </li>
                        <li>
                            If his/her near relative is appearing for any examination conducted by this institute. Relative includes wife, husband, son, daughter, grand son, grand daughter, sister, nephew, niece, grand nephew, grand niece, uncle, aunt, first cousin, son in law, daughter in law. 
                        </li>
                    </ol>
                        <!--/List of notes--></font>
                </div>
                
                <!--/Note-->
         </div>
                <!--/Main Div-->
          <%  } }  %>     
          
            
          <footer> </footer>

        <!--/Page-->
        </page>
    </body>
        <!--/Page-->

    <!--/Body section-->
        
    <!--/Body section-->
    <footer>
     <script>
          function print_page() {
            var ButtonControl = document.getElementById("printbtn");
            ButtonControl.style.visibility = "hidden";
            window.print();
        }
        </script>
    </footer> 
    <div style="print">
    <input type="button" onClick="print_page()" class="hide" id="printbtn" value="Print"/>
    </div>
</html>
<%  }  %>