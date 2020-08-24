<%-- 
    Document   : try
    Created on : Sep 16, 2018, 1:28:48 PM
    Author     : hp
--%>

<%@page import="tables.Professor_details"%>
<%@page import="dao.Professor_fetch"%>
<%@page import="tables.Course_Code"%>
<%@page import="java.util.List"%>
<%@page import="dao.Course_fetch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
    Course_fetch courseDAO = new Course_fetch();
 
    List<Course_Code> all = courseDAO .getDetails();
     
    
    Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
     

                   for(int i=0;i<=all.size();++i) {
                               
                               
                                String count="count"+i;
                                String select=request.getParameter(count);
                                if( select==null)
                                {continue;}
                                else {
                                    %>
                                    <input type="checkbox" name="<%=count%>" value="<%=select%>">  <%=select%> 
                                 <%   String ch="Course"+i;
                         String course=request.getParameter(ch);%>
                                 <!-- session.setAttribute(ch, course);-->
                               <input type="checkbox" name="<%=ch%>" value="<%=course%>"><%=course%>
                                   <% String  ch2="Code"+i;
                                    String code=request.getParameter(ch2);%>
                                  <!-- session.setAttribute(ch2,code);-->
                                    
                                   <input type="checkbox" name="<%=ch2%>" value="<%=code%>"><%=code%> 
                                    
                                    
                             <% 
                          }
                            
}                %>
    </body>
</html>
