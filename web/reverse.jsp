<%-- 
    Document   : reverse
    Created on : Dec 8, 2018, 3:28:00 PM
    Author     : hp
--%>

<%@page import="java.util.*  "%>
<%@page import="java.util.ListIterator"%>

<%@page import="tables.Receive_paper_format"%>
<%@page import="java.util.List"%>
<%@page import="dao.Receive_format_fetch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    
     Receive_format_fetch  namesDAO = new Receive_format_fetch();
   // List<Bill_paperSetters> all_names = namesDAO.getDetails(); 
    
    
    

		//ListIterator<Bill_paperSetters> itr =all_names.listIterator(all_names.size());

		// hasPrevious() returns true if the list has previous element
		List<Receive_paper_format>  temp = new ArrayList(namesDAO.getDetails());
Collections.reverse(temp);
for( Receive_paper_format b :   temp ){



     out.println(b.getFormat());%>
    
     <br>
        
        <%

}
    %>
    </body>
</html>
