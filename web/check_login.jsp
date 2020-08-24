<%-- 
    Document   : check_login
    Created on : Sep 16, 2018, 5:45:36 PM
    Author     : hp
--%>
       <%
       
      response.setHeader("Cache-Control","no-cache");
            response.setHeader("Cache-Control","no-store");
            response.setDateHeader("Expires", 0);
            response.setHeader("Pragma","no-cache");
 
        String userid=(String)session.getAttribute("username");
            if(userid==null)
            {
                 out.println("You have been logged out <a href=\"index.html\">Login</a>");
            }
              
                 
                
            
            else
            {
             
            
       
       
       %>
   
