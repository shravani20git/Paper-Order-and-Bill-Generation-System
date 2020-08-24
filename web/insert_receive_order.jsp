<%-- 
    Document   : insert_receive_order
    Created on : Aug 30, 2018, 6:39:07 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.SessionFactory" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="java.util.List" %>
 <%@page import="hibernate_util.HibernateUtil" %>
  <%@page import="tables.Receive_paper_order" %>
 <%@page import="java.util.List"%>
<%@page import="tables.Paper_order"%>
<%@page import="dao.Paper_Order_fetch"%>
<%
    Paper_Order_fetch namesDAO = new Paper_Order_fetch();
    List<Paper_order> all_names = namesDAO.getDetails(); 
    

   
              
                               
                 Label:               for(int i=0;  i<=all_names.size();++i )
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
                               
                                 if(select !=null)  { 
                                           Receive_paper_order  r  = new Receive_paper_order();
                                    String  ch="prof_name"+i;
                                 String names = request.getParameter(ch);
                                 if(names  !=null) { 
                                   r.setProf_name(names);
                                   r.setReceive_prof_name(names);}
                                        //out.println(names);
                                    
                                   // String ch6="receive_profname"+i;
                                 //String recieve = request.getParameter(ch6);
                                 //if(recieve !=null){
                                     
                                     
                                        //out.println(recieve);
                                   // }
                                 String ch2="receive_course_name"+i;
                                 String course = request.getParameter(ch2);
                                 if( course !=null){ 
                                        r.setCourse(course);
                                      //  out.println(course);
                                    }
                                  String ch3="receive_code"+i;;
                                 String code = request.getParameter(ch3);
                                 if(code !=null){ 
                                    r.setCode(code);
                                    //    out.println(code);
                                    }
                                  String ch4="receive_setse"+i;
                                 String sets = request.getParameter(ch4);
                                 
                                 String ch5="receive_date"+i;;
                                 String date = request.getParameter(ch5);
                                 
                                  String ch6="get_session"+i;
                                 String ses = request.getParameter(ch6);
                                 if(ses!=null){
                                 
                                  r.setSession(ses);
                                 }
                                 
                                 
                                 
                                 if(date  !=null){ 
                                   
                                     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                                          Date receiveDate = sdf.parse(date); 
                                    r.setTdate(receiveDate);
                                 
                                        //out.println(date);
                                    }
                                 
                                 s3.save(r);
                                  
                                  // if (!t.wasCommitted()) {
                                  t.commit();                             
                                 
                                   
                                 
                             }
                                  
                                   
                                                                 
     s3.close();                            
                                 
 }  
   
  
System.out.print("data entered");
 response.sendRedirect("receive_order.jsp");
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
/*String professor_name = request.getParameter("prof_name");
 String[] receive_professor_name = request.getParameterValues("receive_profname");
 String[] receive_course_name = request.getParameterValues("receive_course_name");
 String[] receive_code = request.getParameterValues("receive_code");
 String[] receive_sets = request.getParameterValues("receive_sets");
 
 
 //if (professor_name != null) 
   //{
     //  int i=0;
 
   out.println( professor_name);
          //   out.println ("<b>"+receive_professor_name[i]+"<b>"); 
         //}
      //   i++;
       
    //  }while( i<professor_name.length  && i<receive_professor_name.length );
              
       
  // }
   //else out.println ("<b>none<b>");
 /*if (professor_name != null) 
   {
      for (int i = 0; i < receive_professor_name.length; i++) 
      {
         out.println ("<b>"+receive_professor_name[i]+"<b>");
       
      }
   *
   else out.println ("<b>none<b>");*/
// String [] receive_dates = request.getParameterValues("receive_date");


  /*  */
 
 // for (int i = 0; i <professor_name.length; i++) {
 /*String professor_name = request.getParameter("prof_name");
 String receive_professor_name = request.getParameter("receive_profname");
 String receive_course_name = request.getParameter("receive_course_name");
 String receive_code = request.getParameter("receive_code");
 String receive_sets = request.getParameter("receive_sets");
  String receive_date = request.getParameter("receive_date");

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
Date receiveDate = sdf.parse(receive_date); 


        

 
  SessionFactory sf;
            Transaction t;
                 Session s;
                 sf=HibernateUtil.getSessionFactory();
                 s=sf.openSession();
                 t=s.getTransaction();
                 t.begin();*/
 /*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
Date receiveDate = sdf.parse(receive_dates[i]); 
      Receive_paper_order r1 = new Receive_paper_order();
      r1.setProf_name(professor_name[i]);
     r1.setReceive_prof_name(receive_professor_name[i]);
      r1.setCourse(receive_course_name[i]);
      r1.setCode(receive_code[i]);
      r1.setPapersets(Integer.parseInt(receive_sets[i]));
      r1.setTdate(receiveDate);
      s.save(r1);  
t.commit();

      */
 /*String dateStr =  request.getParameter("receive_date");
 if(dateStr.isEmpty() || dateStr=="")
 {
     out.println("parameter is empty");
 }
//DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd",Locale.ENGLISH);
//DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
//Date date = (Date)formatter.parse(dateStr);
//System.out.println(date);        

//Calendar cal = Calendar.getInstance();
//cal.setTime(date);
//String formatedDate = cal.get(Calendar.DATE) + "/" + (cal.get(Calendar.MONTH) + 1) + "/" +         cal.get(Calendar.YEAR);
//out.println("formatedDate : " + formatedDate); 
//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
//Date Moduration_date = sdf.parse( receive_dates[i]);
// out.println(professor_name[i]);
 //out.println(Moduration_date);
 // out.println(receive_course_name[i]);
   //        out.println(receive_code[i]);
     //               out.println(Integer.parseInt(receive_sets[i]));
       //             out.println(receive_professor_name[i]);
                            
      
  //}
      
      
  
 s.close();
System.out.print("data entered");
 response.sendRedirect("course_code.jsp");


*/







%>
<%}%>