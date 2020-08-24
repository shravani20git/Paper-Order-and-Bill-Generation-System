<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="hibernate_util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="dao.Course_fetch"%>
<%@page import="tables.Course_Code"%>
<%@page import="java.util.Enumeration"%>
<style>
            /* <css for Body> */
            body {
  background: white; 
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
    font-size: 14pt;
}
page[size="A4"] {  
  width: 21.0cm;
  height: 33.7cm; 
}

@media print {
             div,li,br,hr,ol,li,tr,td,th {
    page-break-inside: avoid;}
  body, page {
    margin: 0;
    box-shadow: 0;
  }
}
             /* </css for page> */
            
            /* <css for list>*/
            li {
                padding-left: 20px;
            }
            /* </css for list> */
            
            /* <css for table of sub. date> */
           table {
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
}
@media print {
    footer {page-break-after: always;}
}
             /* </css for table of sub. date> */
            
        </style>
        <!--/css-->
        <Title>Invitation Letter</Title>
        
    <%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="tables.Paper_order" %>

<%@page import="java.util.List"%>
<%@page import="dao.Professor_fetch"%>
<%@page import="tables.Professor_details"%>
<%
    Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
     Paper_order p1= new Paper_order();
      Course_fetch courseDAO = new Course_fetch();

    List<Course_Code> course_names =  courseDAO.getDetails();
   
                           for( int j=1; j<=all_names.size();++j )  {
                               
                               String ch3=  "Professer"+j;
                               String  name = request.getParameter(ch3);
                               if (name!=null) {
                                   
                                   
                               
    

           %>
<html>

   
    <!--/head section-->
    <!--Body Section-->
    <body>
        <%
          
            String term = request.getParameter("Term1");
            String sem =request.getParameter("Semister1");
             String year =request.getParameter("year");
            
          String date  =request.getParameter("date");
          
           
            
     //Enumeration e = (Enumeration) (session.getAttributeNames());
     /*  for (int m=0 ; m <=course_names.size(); ++m )
       {
           String ch="Course"+m;
                   
                   String  course=(String)session.getAttribute(ch);
                   if( course!=null){
                       
                   }
       

        /*while ( e.hasMoreElements())
        {
            Object tring;
            if((tring = e.nextElement())!=null)
            { 
                out.println(session.getAttribute((String) tring));
                out.println("<br/>");
            }

        }*/
     //  }     
            
            %>
            
            
        <!--Page-->
        <page size="A4">
            <!--main div-->
            <div style="margin-left: 50px; margin-right: 45px;">
                <!--Header-->
            <header >
                <center><font style="font-size:22px;"><b>GOVERNMENT POLYTECHNIC,NASHIK</b></font></center>
                <center><font style="font-size:13px;">(An Autonomous Institute of Govt. of Maharashtra)</font></center>
                <center><font style="font-size:19px;"><b>Samangaon Road, Nashik-Road, Nashik-422101</b></font></center>
                
                <br>
                                  
                <div style="padding-bottom:30px">
                    <div style="float:left; padding-left:5px;"
                    Tel. -0253-2461221<br>
                    Fax.-0253-2450236
                    </div>
                    
                    <div style="float: right; padding-right:65px;">
                    Direct Tel.-0253-2452912<br>
                    email -info@gpnashik.com
                    </div>
                </div>
                
                <hr>
                
            </header>
            <!--/header-->
                
            <div style="margin-left: 5px; margin-right: 150px; padding-bottom: 20px">
                <div style="float:left;">
                   <b><u> Confidential</u></b>
                    <br>
                    Office Order
                </div>
                
                <div style="float:right;">
                    No.GPN/COE/Qpset/
                    <br>
                    Date :-
                </div>
            </div>
           
                <!--Letter Address block-->
                <div style="margin-top:20px;">
                    To,
                    <div style="margin-left:50px; margin-top:20px;">
                        <b><%=name%></b>
                        <br><%
                              for( Professor_details professors  : all_names )  {
                                  String k=professors.getName();
                                  if(k.equalsIgnoreCase(name)){%>
                                  <%=professors.getAddress()%><br>
                            Phone :-  <%= professors.getPh_no() %>       
                                <%  } }
                           %> 
                      <!--  C/o. P.S. Landage 6 Mayuri Apartment<br>
                        Near Atul Dairy Ahead Burkule Mangal Kayalay<br>
                        Ambad Link Road nashik<br>-->
                  
                        
                    </div>
                </div>
                <!--/Letter Address block--> 
                
                <!--Salutation-->
                <div style="margin-top:10px;">
                    Sir/Madam,
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
                    <table    style= "font-family: Arial;
    font-size: 14px;">
 
    <tr>
      <th>Sr.No</th>
     
      <th>Name of Course</th>
      <th>Course Code</th>
      <th>Name of Program</th>
      <th>term</th>
      <th>Examination</th>

    </tr>
     <%  
          for (int m=1 ; m <=course_names.size(); ++m )
       {
          String ch="Course"+m;
                   
                   String  course=(String)session.getAttribute(ch);
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
                     p1.setSemister(sem);
            p1.setTerm(term);
            p1.setYear(year);
            
       
             /* String[] courses= request.getParameterValues("Course");
                
 //   for (int i = 0; i < courses.length; i++){	
      
       p1.setCourse(courses[i]);
       out.println(courses[i] + "<br>");
    }  
  */
    
               
               
               %><tr>
        <td><%int i=0;%> <%=++i%></td>
     
      <td> <%=course%></td>
      <td> <%  
         String ch2="Code"+i;
         String  code=(String)session.getAttribute(ch2);
          //    String[] codes = request.getParameterValues("Code");
  //  for (int i = 0; i <codes.length; i++) {		 
    	   p1.setCode(code);

       

      //  out.println(codes[i] + "<br>");
        
        
    %>  <%=code%> </td> 
      <td>Computer Technology</td>
      <td><%=term  %></td>
      <td><%=sem%></td>

    </tr>
      
<%   s.save(p1);
 
t.commit();   
}

  s.close(); }
catch( Exception e){

out.println("e");


}




%>
    
     
      
    
    <% }  %> 
    
                    </table>
                 <!--<div style="margin-top:-10;">
                        <div style="float: left; margin-top:0;">
                            <!--Course Attributes-->
                       <!-- <ol type="i">
                            <li>Code No. of Question Paper </li>
                            <li>Name of Course</li>
                            <li>Term-Program</li>
                            <li>Examination</li>
                            <!--/Course Attributes-->
                  <!--      </ol>
     
                        </div>
                        <!-- colon-->
                      <!--  <div style="float:left; margin-top:15; margin-left: 40;">
                            <b>:&emsp;&ensp;</b><br>
                            <b>:&emsp;&ensp;</b><br>
                            <b>:&emsp;&ensp;</b><br>
                            <b>:&emsp;&ensp;</b><br>
                        </div>
                        <!--/colon-->
                        
                        <!--course info-->
                <!--        <div style="float:left; margin-top:15; ">
                            <b>AE0405</b><br>
                            <b>ELECT.TECH.&amp;APP.ELECTR</b><br>
                            <b>ODD&emsp;&ensp;AUTOMOBILE ENGINEERING</b><br>
                            <b>Winter 2005</b>
                        </div>
                        <!--course info-->
                    </div>
                    <!--/course Detail.-->
                    <!--Instruction To Paper Setters-->
                   <!-- <div style="float:left; margin-left:-240;">
                       --> <ol type="1">
                            <!-- 1st instruction-->
                            <li>The last date for submitting the manuscript of question paper set is
                                <!--Date Table-->
                                <div style="float:right; padding-left: 10px">
                                    <table>
                                        <tr>
                                            <td>5</td>
                                            <td>8</td> 
                                            <td>2018</td>
                                            
                                        </tr>
                                        <tr>
                                            <th>dd</th>
                                            <th>mm</th>
                                            <th>yy</th>
                                        </tr>
                                    </table>
                                </div>
                               <!--/Date Table-->
                            </li>
                            <!--/1st instruction-->
                            
                            <!-- 2nd instruction-->
                            <li>You are requested to prepare two different question paper sets <br>(set I &amp; set II)and send it to the undersigned before the last date of submission.
                            </li>
                            <!-- /2rd instruction-->
                            
                            <!-- 3rd instruction-->
                            <li>
                                The following documents are attached along with this letter.
                                <!-- Document list-->
                                <ol type="i">
                                    <li>
                                        Instuction to paper setters.(To be followed strictly)
                                    </li>
                                    <li>
                                        Curriculum of the subject.
                                    </li>
                                    <li>
                                        Blank formats for writing the manuscript of Question Paper.          
                                    </li>
                                    <li>
                                        Two forms of "Certificate from Paper Setter".(To be returned duly signed)
                                    </li>
                                    <li>
                                        Two forms of :specification Table" (To be returned duly signed)
                                    </li>
                                    <li>
                                        Two printed envelopes for question paper manuscript. Each envelope shall contain only<br> one manuscript. Each envelope is to be sealed &amp; signed by the Paper Setter.
                                    </li>
                                    <li>
                                        Two printed envelopes for inserting the certificate from the paper setter, specification<br> Table, model Answer &amp; Solution for set I &amp; set II.
                                    </li>
                                    <li>
                                        One large size envelope on which the address of this office is printed. In this envelope,<br> the two envelopes containing manuscript question papers &amp; two envelopes containing <br>certificate, SP-Table, etc.(total four envelopes shall be inserted).
                                    </li>
                                    <li>
                                    Previous Examination Question paper (For reference only)
                                    </li>
                                </ol>
                                <!--/document list-->
                                <p>
                                   &emsp;&nbsp;Both the envelopes (vi &amp; vii) shall be inserted in the large envelope. This large envelope shall  <br>be carefully submitted or posted to the undersigned.
                                </p>
                                <p>
                                    If you do not accept the assignment, kindly return all the documents immediately to the <br>undersigned.
                                </p>
                                <p>
                                    You are entitled for honorarium as per the norms of this institute.
                                </p>
                            </li>
                            <!--/3rd instruction-->
                        </ol>
                    <!--</div>
                    <!--/Instruction To Paper Setters-->
               <!-- </div>
                <!--/Letter body-->
                
                <!--closing-->
                <div style="float:right; text-align:center;">
                    Yours Faithfully,
                    <!-- Space for Signature-->
                    <br>
                    <br>
                    <br>
                    <!--/space for Signature-->
                    <b>
                        (R. G. Sonone)<br>
                    Controller of examinations<br>
                    Goverment Polytechnic Nashik<br>
                    </b>
                </div>
                <!--/closing-->
                <!--Note-->
                <div style="float:left; text-align:left; padding-top: 15px;padding-left: 15px">
                    Note : All the documents attached here with should be returned to this Institute, if you are under any of the disqualification's mentioned below OR if you do not accept thr letter of appointment as a paper setter.
                    <!--List of notes-->
                    <ol type="I">
                        <li>
                            If he/she has been disqualified for appointment as paper setter and/or examiner by any statutory university or any Examination Board.
                        </li>
                        <li>
                            If his/her near relative is appearing for any examination conducted by this institute. Relative includes wife, husband, son, daughter, grand son, grand daughter, sister, nephew, niece, grand nephew, grand niece, uncle, aunt, first cousin, son in law, daughter in law. 
                        </li>
                    </ol>
                     <!--/List of notes-->
                </div>
                
                <!--/Note-->
            </div>
       
            <!--/Main Div-->
        </page>
 
    
   
    <div style="print">
    <input type="button" onClick="window.print()" class="hide"
value="Print"/>
    </div>
        <!--/Page-->
    </body>
    <!--/Body section-->
    <footer> </footer>   
</html>
 <% } } %>
