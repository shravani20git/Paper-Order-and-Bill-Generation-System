<%-- 
    Document   : course_code
    Created on : Aug 23, 2018, 4:51:51 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<form action="enter_courseDetails.jsp">
  <div style="margin-left: 130px; margin-right: -700px; align-items: center; ">
                  <div class="col-lg-6">
                    <div class="card">
                      <div class="card-header"><strong>New Course and Code Details</strong></div>
                      <div class="card-body card-block">
                        <div class="col-8">
                              <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">Program Name</label></div>
                            <div class="col col-md-9">
                              <div class="form-check">
                                <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Information Technology" class="form-check-input"required>Information Technology
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Electrical Engineering" class="form-check-input">Electrical Engineering
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Computer Department" class="form-check-input">Computer Department
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name"  value="Electronics  and Telecommunication" class="form-check-input">Electronics  and Telecommunication
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name"  value="Mechanical Department" class="form-check-input">Mechanical Department
                                  </label>
                                                                  </div>

                               
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" value="Civil Engineering" class="form-check-input">Civil Engineering
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name"  value="Plastic Engineering" class="form-check-input">Plastic Engineering
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" value="Automobile Engineering" class="form-check-input">Automobile Engineering
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name"  value="Interior Designing Department" class="form-check-input">Interior Designing Department
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name"  value="Dress designing and Management Department" class="form-check-input">Dress designing and Management Department
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  
                                                                  </div>
                            </div>
                          </div>
                       <div class="form-group"> </div>                          </div>
                        </div></div>
                      <div class="col col-md-3"><label class=" form-control-label">Course name</label></div>
                        <div class="form-group"><input type="text" name="course_name" placeholder="Enter course name " class="form-control"required> </div>
                         <div class="col col-md-3"><label class=" form-control-label">Course code</label></div>
                          <div class="form-group"><input type="text" name="course_code" placeholder="Enter course code " class="form-control" required  oninvalid="this.setCustomValidity('Please enter 4 digits of code')"
></div>
                         <!--<div class="col col-md-3"><label class=" form-control-label">Course Term </label></div>
                          <div class="radio">
                              <div style="margin-left: 40px"
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio"  name="term" value="Even" class="form-check-input">Even
                                  </label>           </div>
                              <div style="margin-left: 40px"
                       <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="term"  value="Odd" class="form-check-input">Odd
                                  </label>  </div>  -->
                       
                            
                          
                       
                            
                       <div class="card-footer">
                        <button type="submit" class="btn btn-primary btn-sm">
                          <i class="fa fa-dot-circle-o"></i> Save
                        </button>
                       
                      </div>

                    </div>
       </div></div>
       

                    
                 
                  


            </div><!-- .animated -->
        </div><!-- .content -->

    
    
    </div><!-- /#right-panel -->

    <!-- Right Panel -->


</form>









<%@include file="footer.jsp"%>
<%}%>