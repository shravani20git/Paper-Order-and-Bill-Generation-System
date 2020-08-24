<%-- 
    Document   : professor_list
    Created on : Aug 23, 2018, 2:37:52 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@ include file = "header.jsp" %>

<form action="enter_clDetails.jsp">
  <div style="margin-left: 130px; margin-right: -700px; align-items: center; ">
                  <div class="col-lg-6">
                    <div class="card">
                      <div class="card-header"><strong>New/Update College  Details</strong></div>
                      <div class="card-body card-block">
                        <div class="form-group"><label for="Professor Name" class=" form-control-label"> College fax </label><input type="text" name="fax" placeholder="Enter College fax" class="form-control"required></div>
                        <div class="form-group"><label for="College name" class=" form-control-label">College website</label><input type="text" name="web" placeholder="Enter  College website " class="form-control"required></div>
                       
                        <div class="form-group"><label for="Phone no" class=" form-control-label">  College Phone no</label><input type="text" name="ph_no" placeholder="Enter  College Phone no" class="form-control"required="" "></div>
                       
                        <div class="form-group"><label for="country" class=" form-control-label">Email</label><input type="email" name="email" placeholder="Enter the  College email" class="form-control"required></div>
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