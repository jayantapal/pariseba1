<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/jsp/common/header.jsp" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Internet Dreams</title>
<link rel="stylesheet" href="<%=contextPath%>/css/screen.css" type="text/css" media="screen" title="default" />
<!--[if IE]>
<link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
<![endif]-->

<!--  styled select box script version 2 -->
<script src="<%=contextPath%>/js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
});
</script>

<!--  styled select box script version 3 -->
<script src="<%=contextPath%>/js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
});
</script>

<!--  styled file upload script -->
<script src="<%=contextPath%>/js/jquery/jquery.filestyle.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
$(function() {
	$("input.file_1").filestyle({
	image: "images/forms/upload_file.gif",
	imageheight : 29,
	imagewidth : 78,
	width : 300
	});
});
</script>

<!--  date picker script -->
<link rel="stylesheet" href="<%=contextPath%>/css/datePicker.css" type="text/css" />
<script src="<%=contextPath%>/js/jquery/date.js" type="text/javascript"></script>
<script src="<%=contextPath%>/js/jquery/jquery.datePicker.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
        $(function()
{

// initialise the "Select date" link
$('#date-pick')
	.datePicker(
		// associate the link with a date picker
		{
			createButton:false,
			startDate:'01/01/2005',
			endDate:'31/12/2020'
		}
	).bind(
		// when the link is clicked display the date picker
		'click',
		function()
		{
			updateSelects($(this).dpGetSelected()[0]);
			$(this).dpDisplay();
			return false;
		}
	).bind(
		// when a date is selected update the SELECTs
		'dateSelected',
		function(e, selectedDate, $td, state)
		{
			updateSelects(selectedDate);
		}
	).bind(
		'dpClosed',
		function(e, selected)
		{
			updateSelects(selected[0]);
		}
	);

var updateSelects = function (selectedDate)
{
	var selectedDate = new Date(selectedDate);
	$('#d option[value=' + selectedDate.getDate() + ']').attr('selected', 'selected');
	$('#m option[value=' + (selectedDate.getMonth()+1) + ']').attr('selected', 'selected');
	$('#y option[value=' + (selectedDate.getFullYear()) + ']').attr('selected', 'selected');
}
// listen for when the selects are changed and update the picker
$('#d, #m, #y')
	.bind(
		'change',
		function()
		{
			var d = new Date(
						$('#y').val(),
						$('#m').val()-1,
						$('#d').val()
					);
			$('#date-pick').dpSetSelected(d.asString());
		}
	);

// default the position of the selects to today
var today = new Date();
updateSelects(today.getTime());

// and update the datePicker to reflect it...
$('#d').trigger('change');
});
</script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="<%=contextPath%>/js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>
</head>
<body>

 <div class="clear"></div>

<!-- start content-outer -->
<div id="content-outer">
<!-- start content -->
<div id="content">


<div id="page-heading"><h1>Test booking for patient</h1></div>


<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<!--  1st content-table-start  -->
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
			<div class="step-dark-left">Patient Details</div>
			<div class="step-dark-right">&nbsp;</div>
			<div class="clear"></div>
		</div>
		<!--  end step-holder -->

		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
		<tr>
			<th valign="top">Patient Name :</th>
			<td><input type="text" class="inp-form"   /></td>

            <th valign="top">Gender :</th>

        <td>
		<select  class="styledselect_form_1">
			<option value="">Male</option>
			<option value="">Female</option>
			<option value="">Other</option>
		</select>
		</td>
       </tr>

        <tr>
			<th valign="top">Age :</th>
			<td><input type="text" class="inp-form"   /></td>

            <th valign="top">Contact :</th>
			<td><input type="text" class="inp-form"   /></td>
		</tr>

		<tr>
         <th valign="top">Email :</th>
		<td><input type="text" class="inp-form"   /></td>
        </tr>


	<tr>
		<th valign="top">Address :</th>
		<td><textarea rows="" cols="" class="form-textarea"></textarea></td>

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
<!--  end 1st content-table  -->
<!--  2nd content-table-start  -->
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
			<div class="step-no">2</div>
			<div class="step-dark-left">Test Details</div>
			<div class="step-dark-right">&nbsp;</div>
			<div class="clear"></div>
		</div>
		<!--  end step-holder -->

		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
		<tr>
			<th valign="top">Doctor Name :</th>
			<td><input type="text" class="inp-form"   /></td>
           
                </tr>
                <tr>
                        <th valign="top">Test Name :</th>
                        <td><input type="text" class="inp-form"   /></td>
                        <td>&nbsp;&nbsp;</td>
                        <td valign="center">
			<input type="button" value="Add Field"  />
                        </td>
                </tr>

                <tr>
			<th valign="top">Agent Name :</th>
			<td><input type="text" class="inp-form"   /></td>
                </tr>

                <tr>
                        <th valign="top">Booking Date :</th>
			<td><input type="text" class="inp-form"   /></td>
                </tr>

                <tr>
                        <th valign="top">Delivery Date :</th>
                        <td><input type="text" class="inp-form"   /></td>
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
<!--  end 2nd content-table  -->
<!--  3rd content-table-start  -->
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
			<div class="step-no">3</div>
			<div class="step-dark-left">Payment Details</div>
			<div class="step-dark-right">&nbsp;</div>
			<div class="clear"></div>
		</div>
		<!--  end step-holder -->

		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
		<tr>
			<th valign="top">Total Amount :</th>
			<td><input type="text" class="inp-form"   /></td>
            
            </tr>

            <tr>
			<th valign="top">Advance Amount :</th>
			<td><input type="text" class="inp-form"   /></td>
             </tr>

		<tr>
            <th valign="top">Discount Amount :</th>
			<td><input type="text" class="inp-form"   /></td>
		</tr>

		<tr>
         <th valign="top">Due Amount :</th>
		<td><input type="text" class="inp-form"   /></td>
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



<div class="clear">&nbsp;</div>

<!-- start footer -->
<div id="footer">
	<!--  start footer-left -->
	<div id="footer-left">
	Admin Skin
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
</div>
<!-- end footer -->

</body>
</html>