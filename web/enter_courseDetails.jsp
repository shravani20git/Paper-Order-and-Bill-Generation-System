<%-- 
    Document   : enter_courseDetails
    Created on : Aug 25, 2018, 5:42:25 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="java.util.ArrayList"%>

<%@include file="open_session.jsp" %> 
<%@page import="tables.Course_Code" %>
<%
    String course_name = request.getParameter("course_name");
     String department_name = request.getParameter("depart_name");
   String  course_code= request.getParameter("course_code");
   String term=request.getParameter("term");
   
Course_Code c1=new Course_Code();
   c1.setCode(course_code);
   c1.setCourse_name( course_name);
   c1.setDepart_name(department_name);
   c1.setTerm(term);
 s.save(c1);  
t.commit();
s.close();
System.out.print("data entered");
 response.sendRedirect("course_code.jsp");
    %>



    </body>
</html>
<% } %>