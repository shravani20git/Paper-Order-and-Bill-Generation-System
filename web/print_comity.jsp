<%-- 
    Document   : print_comity
    Created on : Dec 6, 2018, 3:36:42 PM
    Author     : hp
--%>



<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        
        
            
            
            
        //  Enumeration<String>  names = request.getAttributeNames();
        Map m=request.getParameterMap();

        Set s = m.entrySet();

        Iterator it = s.iterator();

int j=0;
            while(it.hasNext())
            {  
            
            j=j+1;


                Map.Entry<String,String[]> entry = (Map.Entry<String,String[]>)it.next();


                String key             = entry.getKey();
                String[] value         = entry.getValue();

               // out.println("Key is "+key+"<br>");

                    if(value.length>1){    
                        for (int i = 0; i < value.length; i++) {
                            out.println("<li>" + value[i].toString() + "</li><br>");
                        }
                    }else
                            out.println("Value is "+value[0].toString()+"<br>");

                    out.println("-------------------<br>");
    
            
    
            }
        
        
        out.println(j);
        
        
        
        
        
        
        
        
        
        %>
        
        
        
        
        
    </body>
</html>
