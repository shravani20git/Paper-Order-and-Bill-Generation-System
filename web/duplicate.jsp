<%-- 
    Document   : duplicate
    Created on : Sep 8, 2018, 7:53:10 PM
    Author     : hp
--%>

<%@page import="tables.Course_Code"%>
<%@page import="dao.Course_fetch"%>
<%@page import="tables.Paper_order"%>
<%@page import="tables.Professor_details"%>
<%@page import="dao.Professor_fetch"%>
<%@page import="java.util.Vector"%>
<%@page import="dao.Receive_order_fetch"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="tables.Receive_paper_order"%>
<%@page import="dao.Paper_setter_bill_fetch"%>
<%@page import="tables.Bill_paperSetters;"%>
<%@page import="dao.Modurator_details_fetch"%>
<%@page import="tables.Bill_Details"%>
<%@page import="dao.fetch_bill_details"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%   //  Receive_order_fetch  namesDAO = new Receive_order_fetch();
   // List<Receive_paper_order> all_names = namesDAO.getDetails(); 

 //
 
String term = request.getParameter("Term1");
            String sem =request.getParameter("Semister1");
             String year =request.getParameter("year");
  Professor_fetch namesDAO = new Professor_fetch();
    List<Professor_details> all_names = namesDAO.getDetails();
     
      Course_fetch courseDAO = new Course_fetch();
      
      out.println(term);
        out.println(sem);
          out.println(year);
      

    List<Course_Code> all =  courseDAO.getDetails();
   
                           for( int j=1; j<=all_names.size();++j )  {
                               
                               String ch3=  "Professer"+j;
                               String  name = request.getParameter(ch3);
                               if (name!=null) {   
                                   
                                   
                                  out.println(name);
                               
                               }}
                             
                               
                                for(int i=1;i<=all.size();++i){
                               
                               
                                String count="count"+i;
                                String select=request.getParameter(count);
                                if(!select.isEmpty())  {
                                   
                                   
                                   String ch="Course"+i;
                                    String course=request.getParameter(ch);
                                 //   session.setAttribute(ch, course);
                                 out.println(course);
                           
                                   String  ch2="Code"+i;
                                    String code=request.getParameter( ch2);
                                  //  session.setAttribute(ch2,code)
                                    out.println(code);
                                    
                                    
                                    
                              }
                           }
             /* String[] courses= request.getParameterValues("Course");
                          
 //   for (int i = 0; i < courses.length; i++){	
      
       p1.setCourse(courses[i]);
       out.println(courses[i] + "<br>");
    }  
  */
    
               
               
               
  

 
 
// ArrayList<String> n=new ArrayList();
  /*n.add("Shravani");
  n.add("Shreyash");
  n.add("shravani");
 */
  
  
  
  
 //Object []h3=  all_names.toArray();
  
  
     
   /*HashSet s = new HashSet();
 

          for( Receive_paper_order n2  :all_names) { 
       
       
       String ch= n2.getProf_name();
       
        if(s.add(ch)==true) {
            out.println(ch);
        for( Receive_paper_order n3  :all_names){
            
            
            String k =n3.getProf_name();
            if(ch.equalsIgnoreCase(k))
            {
                
              
              out.println(n3.getCode());
              out.println(n3.getCourse());
            }
        }
        } 
        
     */   
       
       
       //String name=names.getProf_name(); 
     //  if(s.add(n2.getProf_name())== true)
      // {
          // out.println(n2.getProf_name());
       //}                                            
      /*  n.add(n2.getProf_name());
        out.println(n2.getProf_name());
   }
    Object [] h4 =  n.toArray();
    
    for(int  i=0;i<h4.length ; i++)
    {
        out.println(h4[i]);
    }
    
for( Receive_paper_order n2  :all_names) { 
     for(int  i=0;i<h4.length ; i++){
         
    if(h4[i]==h4[i])
    {
        
    }
    
        }  
}*/
   
   

%>


    </body>
</html>
