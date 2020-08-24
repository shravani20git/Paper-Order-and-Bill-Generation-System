<%-- 
    Document   : modurator_list
    Created on : Aug 30, 2018, 2:27:40 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>

<form action="enter_typistDetails.jsp"
  <div style="margin-left: 130px; margin-right: -700px; align-items: center; ">
                  <div class="col-lg-6">
                    <div class="card">
                      <div class="card-header"><strong>New/Update Typist Details</strong></div>
                      <div class="card-body card-block">
                        <div class="form-group"><label for="Typist  Name" class=" form-control-label">Typist Name </label><input type="text" name="typ_name" placeholder="Enter your new professor name" class="form-control" required></div>
                     
                        <div class="form-group"><label for="Address" class=" form-control-label">Address</label><input type="textbox" name="typ_address" placeholder="Enter  Address" class="form-control"></div>
                        <div class="form-group"><label for="Phone no" class=" form-control-label">Phone no</label><input type="text" name="typ_ph_no" pattern="[0-9]{10}"placeholder="Enter Phone no" class="form-control"></div>
                       
                        <div class="form-group"><label for="Email" class=" form-control-label">Email</label><input type="email" name="typ_email" placeholder="Enter the professor email" class="form-control"></div>
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