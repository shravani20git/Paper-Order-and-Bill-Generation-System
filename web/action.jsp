<%-- 
    Document   : action
    Created on : Aug 17, 2018, 11:05:09 PM
    Author     : hp
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    
    <table  border="1px solid black" width="0">
 
    <tr>
      <th>Sr.No</th>
     
      <th>Name of Course</th>
      <th>Course Code</th>
      <th>Name of Program</th>
      <th>term</th>
      <th>Examination</th>

    </tr>
    <tr>
      <td>1</td>
      <td> 
 <%  
              String[] courses= request.getParameterValues("Course");
    for (int i = 0; i < courses.length; i++) {		 
    	out.println(courses[i] + "<br>");
    }     
               
               
               %></td>
       <td> 
 <%  
              String[] codes = request.getParameterValues("Code");
    for (int i = 0; i <codes.length; i++) {		 
    	out.println(codes[i] + "<br>");
    }     
               
               
               %></td>
      
      <td>Computer Technology <td>
          <td><%=request.getParameter("Term1")%></td> 
      <td><%=request.getParameter("Semister1")%></td>
      
      
      
    </tr>
      
      
    </table>
    
</html>
