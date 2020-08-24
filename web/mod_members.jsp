<%-- 
    Document   : professor_list
    Created on : Aug 23, 2018, 2:37:52 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@ include file = "header.jsp" %>

<form action="enter_modMembers.jsp"
  <div style="margin-left: 130px; margin-right: -700px; align-items: center; ">
                  <div class="col-lg-6">
                    <div class="card">
                      <div class="card-header"><strong>Change Moderation Committee Members</strong></div>
                      <div class="card-body card-block">
                        <div class="form-group"><label for="Professor Name" class=" form-control-label"> Professor Designation </label><select name="Post" id="select" class="form-control">     
                             
                             
                           
                                <option value="Principal">Principal </option>
                                <option value="COE">Controller Of Examination </option>
                                <option value="Secretary">Secretary of Moderation Committee </option>
                                <option value="Chairman">Chairman of Moderation Committee </option>
                               
                              </select></div>
                       <div class="form-group"><label for="Professor Name" class=" form-control-label"> Professor Name </label><input type="text" name="prof_name" placeholder="Enter your new professor name" class="form-control"required></div>
                       
                        <div class="form-group"><label for="Phone no" class=" form-control-label">Phone no</label><input type="text" name="ph_no" placeholder="Enter Phone no" pattern="[0-9]{10}"class="form-control"required="" oninvalid="this.setCustomValidity('Please enter  10 digits of phone no')"
 oninput="setCustomValidity('')"></div>
                        <div class="row form-group">
                         
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