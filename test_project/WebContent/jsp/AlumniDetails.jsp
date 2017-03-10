<%@ page import="java.util.*" %>

<script>

<%
ArrayList alumni = (ArrayList)request.getAttribute("alumni");
if(alumni != null && !alumni.isEmpty()){
	for(int i=0; i<alumni.size(); i++){
		   HashMap row = (HashMap)alumni.get(i);
		   int id = (int)row.get("id");
		   String name = (String)row.get("name");
		   String batchyear = (String)row.get("batchyear");
		   String passoutyear = (String)row.get("passoutyear");
		   String dobStr = (String)row.get("dobStr");
		   String degree = (String)row.get("degree");
		   String currentposition = (String)row.get("currentposition");
		   long mobilenumber = (long)row.get("mobilenumber");
		   String email = (String)row.get("email");
%>
jQuery(document).ready(function(){
	jQuery('#name').text('<%=name%>');
	jQuery('#batch').text('<%=batchyear%>');
	jQuery('#yearofpassout').text('<%=passoutyear%>');
	jQuery('#dob').text('<%=dobStr%>');
	jQuery('#currentposition').text('<%=currentposition%>');
	jQuery('#degree').text('<%=degree%>');
	jQuery('#mobile').text('<%=mobilenumber%>');
	jQuery('#email').text('<%=email%>');

});
<%}
}%>
</script>
<div class="form-sec">
<h2>Alumni Details</h2>
        <form id="alumni-form"  method="post">
       	<input type="hidden" name="alumniid" id="alumniid" value="">
        <table>
        	<tr><td><label for="name">Name :</label></td><td><span id="name"></span></td></tr>
             <tr><td><label for="batch">Batch :</label></td><td><span id="batchyear"></span></td></tr>
             <tr><td> <label for="yearofpassout">Year of PassOut :</label></td><td><span id="passoutyear"></span></td></tr>
        	<tr><td><label for="dob">Date of Birth :</label></td> <td><span id="dobStr"></span></td></tr>
        	<tr><td><label for="currentposition">Current Position :</label></td><td><span id="currentposition"></span></td></tr>
        	<tr><td><label for="degree">Degree :</label></td><td><span id="degree"></span></td></tr>
        	<tr><td><label for="mobile">Mobile Number :</label></td><td><span id="mobilenumber"></span></td></tr>
        	<tr><td> <label for="email">Email :</label></td><td><span id="email"></span></td></tr>
        </table>
        </form>
</div>