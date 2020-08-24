<%-- 
    Document   : print_recomended
    Created on : Dec 19, 2018, 10:37:25 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="hibernate_util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>

<!DOCTYPE html>
<%@page import="dao.Course_fetch"%>
<%@page import="java.util.List"%>
<%@page import="tables.Course_Code"%>
 <%
              Course_fetch courseDAO = new Course_fetch();

    List<Course_Code> course_names =  courseDAO.getDetails();
   
                                       %>
                                       <%
                       Label:               for(int i=0;  i<=course_names.size();++i )
                                 {
                                     
                                     SessionFactory sf;
            Transaction t;
                 Session s3;
                 sf=HibernateUtil.getSessionFactory();
                 s3=sf.openSession();
                 t=s3.getTransaction();
                 t.begin();
       
             String count="count"+i;
    	  String select = request.getParameter(count);
          if(select!=null){
              
              String  ch="Course"+i;
                                 String course = request.getParameter(ch);
              
                                 String ch2="Code"+i;
                                  String code = request.getParameter(ch2);
                                  
                                        for(Course_Code name  : course_names) {
                               
                                            
           String  course2 =name.getCourse_name();
           String code2=name.getCode();
           
           if(course.equalsIgnoreCase(course2) &&  code.equalsIgnoreCase(code2))
           {  String dept=name.getDepart_name();
               
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style> 
                      body {
  background: rgb(204,204,204); 
}
            page {
  background: white;
  display: block;
  margin: 0 auto;
  margin-bottom: 0.5cm;
  padding-top: 0.3cm;
  box-shadow: 0 ;
    
}
page[size="A4"] {  
  width: 21.0cm;
  height: 29.7cm;
     page-break-inside: avoid;
}
          
            
            @media print {
    /*div,li,br,hr,ol,li,tr,td,th {
    page-break-inside: avoid;}*/
  header ,body ,font,center,div,br,b,li,hr,ol,tr,td,th {
       page-break-inside: avoid;  
    }
  body, page {
    margin: 0;
    box-shadow: 0;
  }
}
             /* </css for page> */
            
       
@media print  {
    footer {page-break-after: always;}
}
 
        </style>
    </head>
    <body>
    <page size="A4">
        <div>
        <div style="margin-left: 40px; margin-top: 20px;">
            <b style='font-size: 20px;'> Course code - </b><%=code%>
           
            <br><br>
            <b style='font-size: 20px;'> Course name - </b><%=course %>
        </div>
        <div style="margin-left: 410px; margin-top: -60px;">
            <b style='font-size: 20px;'>  Programme - </b><%=dept%>
        </div>
        </div>
        <hr style='margin-top: 60px;'>
            <div style="margin-left:50px; margin-right: 0px;">
                <img src="blankformat.png" style="height:800px; width: 700px;";>
            </div>
        <div style='margin-top: 50px; margin-left: 580px;'>
            <b> ______________________</b><br><br>
            <b style='font-size: 20px;'>Head of Department </b>
        </div>
    </page>
</body>
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
    
</html><%}}}}
%>