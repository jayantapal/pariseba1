<%@ include file="/jsp/common/header.jsp" %>
        <form action="<%=contextPath%>" method="post" id="booking-form">
         <fieldset>
            <div class="clear"></div>

<!--  styled select box script version 2 -->
<script src="<%=contextPath%>/js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
});
</script>

<!-- start content-outer -->
<div id="content-outer">
<!-- start content -->
<div id="content">


<div id="page-heading"><h1>Agent Entry</h1></div>

<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
	<th rowspan="3" class="sized"><img src="<%=contextPath%>/images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
	<th class="topleft"></th>
	<td id="tbl-border-top">&nbsp;</td>
	<th class="topright"></th>
	<th rowspan="3" class="sized"><img src="<%=contextPath%>/images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
	<td id="tbl-border-left"></td>
	<td>
	<!--  start content-table-inner -->
	<div id="content-table-inner">

	<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr valign="top">
	<td>


		<!--  start step-holder -->
		<div id="step-holder">
			<div class="step-no">1</div>
			<div class="step-dark-left">Fill the form </div>
			<div class="step-dark-right">&nbsp;</div>
			<div class="clear"></div>
		</div>
		<!--  end step-holder -->

		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
		<tr>
			<th valign="top">Agent Name:</th>
			<td><input type="text" name="patientname" class="inp-form"   /></td>

            <th valign="top">Gender:</th>

        <td>
		<select  class="styledselect_form_1">
			<option name="gender" value="Male">Male</option>
			<option name="gender" value="Female">Female</option>
			<option name="gender" value="Other">Other</option>
		</select>
		</td>
       </tr>

        <tr>
			<th valign="top">Age :</th>
			<td><input type="text" name="age" class="inp-form"   /></td>

            <th valign="top">Contact :</th>
			<td><input type="text" name="contactno" class="inp-form"   /></td>
		</tr>

		<tr>
         <th valign="top">Email :</th>
		<td><input type="text" name="email" class="inp-form"   /></td>
        </tr>


	<tr>
		<th valign="top">Address :</th>
		<td><textarea rows="" cols="" name="address" class="form-textarea"></textarea></td>

	</tr>

	<tr>
		<th>&nbsp;</th>
		<td valign="top">
			<input type="button" value="" class="form-submit" />
			<input type="reset" value="" class="form-reset"  />
		</td>


	</tr>
	</table>
	<!-- end id-form  -->

	</td>
	<td>



</td>
</tr>
<tr>
<td><img src="<%=contextPath%>/images/shared/blank.gif" width="695" height="1" alt="blank" /></td>
<td></td>
</tr>
</table>

<div class="clear"></div>


</div>
<!--  end content-table-inner  -->
</td>
<td id="tbl-border-right"></td>
</tr>
<tr>
	<th class="sized bottomleft"></th>
	<td id="tbl-border-bottom">&nbsp;</td>
	<th class="sized bottomright"></th>
</tr>
</table>







<div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer -->

  </fieldset>
</form>