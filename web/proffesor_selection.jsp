<%@ include file = "header.jsp" %>

 
      <form action="Order.jsp">
          
          
          <input type="radio"  name="Semister1" value="Winter" />Winter
          
              
            <input type="radio" name="Semister1" value="Summer" />Summer</br></br>
			
           
           <h4>Term:</h4>
           <!-- <input class="submit_form"  value="Term" name="submit" type="submit"  tabindex="4" />-->
          
            <input type="radio"  name="Term1" value="ODD" />ODD

            
            <input type="radio" id="" name="Term1" value="EVEN" />EVEN </br> </br> 
 <table class="table table-striped table-dark">
 <thread>
    <tr>
      <th >Sr.No</th>
      <th >Professer Name</th>
      <th >Course</th>
      <th>Course Code</th>
       <th>College Name</th>
    </tr>
 </thread>
 <tbody>
 
    <tr>
      <th >1</th>
      <td><input type="radio" name="Professer" value="P.B.Mali">P.B.Mali</td>
      <td><!--<select>                       <option disabled selected>--Choose City--</option>


    <option>Data Structure Using 'C'</option>
    <option>Data Communication and Networking</option>
    <option>Java Programming</option>
    <option>Advanced Java</option>-->
     
<input type="checkbox" name="Course" value="Data Structure Using 'C'">Data Structure Using 'C'
<br>
<input type="checkbox" name="Course" value="Advanced Java">Advanced Java
<br>
<input type="checkbox" name="Course" value="Data Communication and Networking">Data Communication and Networking
<br>
<input type="checkbox" name="Course" value="Java Programming">Java Programming
<br><br>
  
    
</select>
      <td><input type="checkbox" name="Code" value="6245">6245
<br>
<input type="checkbox" name="Code" value="6235">6235
<br>
<input type="checkbox" name="Code" value="6636">6636
<br>
<input type="checkbox" name="Code" value="6325">6325
<br><br></td>
       <td>Government Polytechnic ,Nashik</td>
    </tr>
   



</table>
  
   <button type="submit"> submit</button>    
  <!--
  <footer>I am a footer</footer>-->
</form>
 </div>
<%@ include file = "footer.jsp" %>