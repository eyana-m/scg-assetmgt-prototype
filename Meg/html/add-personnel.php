<!DOCTYPE HTML>
<html lang="en">
<head>

    <!--*************************-->
	<!--******* META TAGS *******-->
    <!--*************************-->

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>PBI IT Asset Inventory System - Add Assets</title>
	<meta name="description" content="width=device-width, initial-scale=1.0"/>
	<!-- Mobile Specifics -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="HandheldFrendly" content="true"/>
	<meta name="MobileOptimized" content=320/>

    <!--***********************-->
    <!--********* CSS *********-->
    <!--***********************-->

	<!-- Bootstrap 
	<link rel="stylesheet" href="../css/bootstrap/bootstrap.css"> -->

	<!-- Style -->
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<!-- Tabslet -->
	<link rel="stylesheet" type="text/css" href="../css/tabslet/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/tabslet/typography.css">
	<link rel="stylesheet" type="text/css" href="../css/tabslet/styles.css">
	<!-- SelectBox -->
    <link href="../css/jquery.selectbox.css" type="text/css" rel="stylesheet" />

	<!--***************************-->
    <!--********* FAVICON *********-->
    <!--***************************-->

	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="apple-touch-icon" href="#">
	<link rel="apple-touch-icon" sizes="114x114" href="#">
	<link rel="apple-touch-icon" sizes="72x72" href="#">
	<link rel="apple-touch-icon" sizes="144x144" href="#">

</head>
<body>

<!--******************************-->
<!--******* NAVIGATION BAR *******-->
<!--******************************-->


<!--*****************************-->
<!--******* ADD PERSONNEL *******-->
<!--*****************************-->

<section>
	<article>
		<h2>Add Personnel</h2>
		<div class='tabs tabs_default'>
			<div id='tab-1'>
				<form id="add-asset-form" action="#" method="POST" enctype="multipart/form-data" role="form" onsubmit="#">
					<table width="100%" height="75%" align="left">
						<tr>
							<td>Personnel Number</td>
							<td><input id="personnel-number" type="text" required autofocus></td>
							
						</tr>
						<tr>
							<td>Personnel Name</td>
							<td><input type="text" required></td>
						</tr>
						<tr>
							<td>Email Address</td>
							<td><input type="text" value="" required></td>
						</tr>
						<tr>
							<td>Job Department</td>
							<td>
								<select class="selectbox" required>
									<option value="it">Information Technology</option>
									<option value="hr">Human Resources</option>
									<option value="fin">Finance</option>
									<option value="orgdev">Organizational Development</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Level</td>
							<td>
								<select class="selectbox">
									<option value="mgr">MGR</option>
									<option value="mgr">MGR</option>
									<option value="mgr">MGR</option>
									<option value="mgr">MGR</option>
									<option value="mgr">MGR</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Position</td>
							<td><input type="text" required></td>
						</tr>
						<tr><td colspan="2">
							<a class="form-button" href="#submit-personnel" role="button" data-toggle="modal">Submit</a>
						</td></tr>
					</table>
				</form>
				<div id="submit-personnel" class="modal fade">
				<div class = "modal-dialog">
				<div class = "modal-content">
					<div class = "modal-header">
						<h3>Review Personnel Information</h3>
					</div>
					<div class = "modal-body">
						<p>Personnel Number</p>
						<input type="text" name="personnelNumber" readonly="true">
					</div>
					<div class = "modal-footer">
						
					</div>
				</div>
			</div>
		</div>

			</div>
		</div>
	</article>
</section>



<!--**********************-->
<!--******* FOOTER *******-->
<!--**********************-->

<!--
<footer style="margin-top: -50px;"><p class="credits">© PBI IT Asset Inventory System 2014. By Summit Consulting Group, Ateneo de Manila University.</p></footer>
-->

<!--***********************-->
<!--******* SCRIPTS *******-->
<!--***********************-->

<!-- jQuery Core -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
<!-- Modernizr -->
<script type="text/javascript" src="../js/vendor/modernizr.custom.js"></script>
<!-- Waypoints -->
<script type="text/javascript" src="../js/vendor/waypoints.min.js"></script>
<script type="text/javascript" src="../js/vendor/waypoints-sticky.min.js"></script>
<!-- Tabslet -->
<script type="text/javascript" src="../js/vendor/jquery.tabslet.min.js"></script>
<script type="text/javascript">
	$('.tabs').tabslet({
		mouseevent: 'click',
		attribute: 'href',
		animation: true
	});
</script>
<script type="text/javascript" src="../js/vendor/rainbow-custom.min.js"></script>
<script type="text/javascript" src="../js/vendor/jquery.anchor.js"></script>
<!-- Initializer -->
<script src="../js/initializers.js"></script>
<!-- SelectBox -->
<script type="text/javascript" src="../js/jquery.selectbox-0.2.js"></script>
<script type="text/javascript">
$(function () {
    $(".selectbox").selectbox();
});
</script>
<!-- Modal -->

<!-- Modal 
<script type="text/javascript" src="../js/jquery.paulund_modal_box.js"></script>
<script>
$(document).ready(function(){
	$('.paulund_modal').paulund_modal_box();
});
</script> -->
<!-- Bootstrap -->
<script src="../js/bootstrap.min.js"></script>


</body>
</html>