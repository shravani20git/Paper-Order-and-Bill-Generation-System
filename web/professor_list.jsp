<%-- 
    Document   : professor_list
    Created on : Aug 23, 2018, 2:37:52 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@ include file = "header.jsp" %>

<form action="enter_professorDetails.jsp">
  <div style="margin-left: 130px; margin-right: -700px; align-items: center; ">
                  <div class="col-lg-6">
                    <div class="card">
                      <div class="card-header"><strong>New/Update Professor  Details</strong></div>
                      <div class="card-body card-block">
                        <div class="form-group"><label for="Professor Name" class=" form-control-label"> Professor Name </label><input type="text" name="prof_name" placeholder="Enter your new professor name" class="form-control"required></div>
                        <div class="form-group"><label for="College name" class=" form-control-label">College/Industry/Company name</label><input type="text" name="clg_name" placeholder="Enter College name of  professor " class="form-control"required></div>
                        <div class="form-group"><label for="Address" class=" form-control-label">Address</label><input type="textbox" name="address" placeholder="Enter  Address" class="form-control"required></div>
                        <div class="form-group"><label for="Phone no" class=" form-control-label">Phone no</label><input type="text" name="ph_no" placeholder="Enter Phone no"class="form-control"></div>
                        <div class="row form-group">
                          <div class="col-8">
                            <div class="form-group"><label for="city" class=" form-control-label">City</label><input type="text" name="city" placeholder="Enter your city" class="form-control"></div>
                          </div>
                          <div class="col-8">
                              <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">Department</label></div>
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
                                    <input type="radio" name="depart_name" name="radios" value="Electronics  and Telecommunication" class="form-check-input">Electronics  and Telecommunication
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Mechanical Department" class="form-check-input">Mechanical Department
                                  </label>
                                                                  </div>

                               
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Civil Engineering" class="form-check-input">Civil Engineering
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Plastic Engineering" class="form-check-input">Plastic Engineering
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Automobile Engineering" class="form-check-input">Automobile Engineering
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Interior Designing Department" class="form-check-input">Interior Designing Department
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Dress designing and Management Department" class="form-check-input">Dress designing and Management Department
                                  </label>
                                                                  </div>
                                   <div class="radio">
                                  <label for="radio1" class="form-check-label ">
                                    <input type="radio" name="depart_name" name="radios" value="Science and Humanities" class="form-check-input">Science and Humanities
                                  </label>
                                                                  </div>
                            </div>
                          </div>
                       <div class="form-group"> </div>                          </div>
                          </div></div>
                        <div class="form-group"><label for="country" class=" form-control-label">Email</label><input type="email" name="email" placeholder="Enter the professor email" class="form-control"></div>
                      </div>
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










<%@include file="footer.jsp" %>

<%}%>