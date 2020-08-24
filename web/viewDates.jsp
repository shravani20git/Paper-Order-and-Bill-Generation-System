<%-- 
    Document   : viewDates
    Created on : Dec 25, 2018, 6:23:54 PM
    Author     : hp
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Collections"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="tables.Receive_paper_format"%>
<%@page import="dao.Receive_format_fetch"%>
<%    Receive_format_fetch  namesDAO = new Receive_format_fetch();
    List<Receive_paper_format> all_names = namesDAO.getDetails();  
Collections.reverse(all_names);
String se1=(String) session.getAttribute("exam_sess");
    String se2 =(String) session.getAttribute("year");
      String se3=se1+"-"+ se2;   SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy");
//String today_d=sdf2.format(sdf1.parse(today)); 
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr><th>Dates</th></tr>
          <%     for(Receive_paper_format  name  : all_names ) { %>    <tr> 
              <td>  <% Date d =name.getTdate();
                   String  dt= sdf2.format(d);
                  
                  
                  %> <%=dt%> </td>
            </tr>
            <% }%>
            
        </table>
    </body>
</html>
