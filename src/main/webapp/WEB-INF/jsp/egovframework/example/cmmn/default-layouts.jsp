<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html>
	<head>
  		<tiles:insertAttribute name="header"/>
  	</head>
  	<body>
  		<div class="wrapper">
	  		<tiles:insertAttribute name="left"/>	
	  		<div class="main-panel">
	  			<tiles:insertAttribute name="nav"/>
	  			<div class="content">
	  				<div class="container-fluid">
			  			<tiles:insertAttribute name="content"/>
			  		</div>
			  	</div>	
			  	<tiles:insertAttribute name="footer"/>
		  	</div>
  		</div>
  	</body>
<!--   Core JS Files and PerfectScrollbar library inside jquery.ui   -->
<script type="text/javascript">
	$(document).ready(function(){	

	});
</script>

<script src="js/bootstrap/jquery-ui.min.js" type="text/javascript"></script>
<script src="js/bootstrap/bootstrap.min.js" type="text/javascript"></script>

<!--  Forms Validations Plugin -->
<script src="js/bootstrap/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="js/bootstrap/moment.min.js"></script>

<!--  Date Time Picker Plugin is included in this js file -->
<script src="js/bootstrap/bootstrap-datetimepicker.js"></script>

<!--  Select Picker Plugin -->
<script src="js/bootstrap/bootstrap-selectpicker.js"></script>

<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
<script src="js/bootstrap/bootstrap-checkbox-radio-switch-tags.js"></script>

<!--  Charts Plugin -->
<script src="js/bootstrap/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="js/bootstrap/bootstrap-notify.js"></script>

<!-- Sweet Alert 2 plugin -->
<script src="js/bootstrap/sweetalert2.js"></script>

<!-- Vector Map plugin -->
<script src="js/bootstrap/jquery-jvectormap.js"></script>

<!-- Wizard Plugin    -->
<script src="js/bootstrap/jquery.bootstrap.wizard.min.js"></script>

<!--  Bootstrap Table Plugin    -->
<script src="js/bootstrap/bootstrap-table.js"></script>

<!--  Plugin for DataTables.net  -->
<script src="js/bootstrap/jquery.datatables.js"></script>

<!--  Full Calendar Plugin    -->
<script src="js/bootstrap/fullcalendar.min.js"></script>

<!-- Light Bootstrap Dashboard Core javascript and methods -->
<script src="js/bootstrap/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="js/bootstrap/demo.js"></script>
</html>