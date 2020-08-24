<%-- 
    Document   : bill_details
    Created on : Aug 30, 2018, 9:53:36 PM
    Author     : hp
--%>
<%@include file="check_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp"%>
<form action="insert_bill_details.jsp">
  <div style="margin-left: 130px; margin-right: -700px; align-items: center; ">
                  <div class="col-lg-6">
                    <div class="card">
                      <div class="card-header"><strong>Bill Details</strong></div>
                      <div class="card-body card-block">
                        
                          
                             
                       
                      <div class="col col-md-6"><label class=" form-control-label">Amount for Typist for Mathematical Papers</label></div>
                        <div class="form-group"><input type="number" name="amt_paper_setter" placeholder="Enter amount for paper setter" class="form-control" min="100.01" step="0.01" max="2500" required> </div>
                         <div class="col col-md-6"><label class=" form-control-label">Amount for Paper Moderators</label></div>
                          <div class="form-group"><input type="number" name="amt_modurator" placeholder="Enter amount for modurators " class="form-control" min="100.01" step="0.01" max="2500"required ></div>
                         <div class="col col-md-6"><label class=" form-control-label">Amount for Paper Typist</label></div>
                          <div class="form-group"><input type="number" name="amt_typist" placeholder="Enter amount for Typist " class="form-control" min="100.01" step="0.01" max="2500"required ></div> 
                       <div class="col col-md-6"><label class=" form-control-label">Amount for Cd format</label></div>
                          <div class="form-group"><input type="number" name="amt_cd" placeholder="Enter amount for Cd format " class="form-control" min="100.01" step="0.01" max="2500"required ></div> 
                       <div class="col col-md-6"><label class=" form-control-label">Amount for Manuscript format</label></div>
                          <div class="form-group"><input type="number" name="amt_manu" placeholder="Enter amount for Manuscript " class="form-control" min="100.01" step="0.01" max="2500"required ></div> 
                       
                            
                          
                       
                            
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