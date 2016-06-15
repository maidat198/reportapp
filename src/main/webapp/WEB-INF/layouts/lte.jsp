<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib tagdir="/WEB-INF/tags/util" prefix="util" %>

<html>  		
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=8" />		
		<%-- <util:load-scripts /> --%>
		<spring:message code="application_name" var="app_name" htmlEscape="false"/>
		<title><spring:message code="welcome_h3" arguments="${app_name}" /></title>
		
		<!-- lte -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	    <!-- Bootstrap 3.3.5 -->
	    <spring:url value="/resources/lte/bootstrap/css/bootstrap.min.css" var="bootstrap_min_css"></spring:url>
	    <link rel="stylesheet" href="${bootstrap_min_css}">
	    <!-- Font Awesome -->
	    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"> -->
	    <!-- Ionicons -->
	    <!-- <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->
	    <spring:url value="/resources/font-awesome-4.4.0/css/font-awesome.min.css" var="font_awesome_min_css"/>
	    <link rel="stylesheet" href="${font_awesome_min_css}" />
	    <spring:url value="/resources/iconicons/css/ionicons.min.css" var="ionicons_min_css"/>
	    <link rel="stylesheet" href="${ionicons_min_css}" />
	    
	    <!-- Theme style -->
	    <spring:url value="/resources/lte/dist/css/AdminLTE.min.css" var="AdminLTE_min_css"></spring:url>
	    <link rel="stylesheet" href="${AdminLTE_min_css}">
	    <!-- AdminLTE Skins. Choose a skin from the css/skins
	         folder instead of downloading all of them to reduce the load. -->
	    <spring:url value="/resources/lte/dist/css/skins/_all-skins.min.css" var="_all_skins_min_css"></spring:url>     
	    <link rel="stylesheet" href="${_all_skins_min_css}">
			<spring:url value="/resources/lte/plugins/jQuery/jQuery-2.1.4.min.js" var="jQuery_2_1_4_min_js"></spring:url>	  
    	<script src="${jQuery_2_1_4_min_js}"></script>
		<!-- datepicker -->
		 <spring:url value="/resources/lte/plugins/datepicker/datepicker3.css" var="datepicker3_css"></spring:url>     
	    <link rel="stylesheet" href="${datepicker3_css}">
	    <!-- DataTables -->
	    <spring:url value="/resources/lte/plugins/datatables/dataTables.bootstrap.css" var="datatable_bootstrap_css"></spring:url>     
	    <link rel="stylesheet" href="${datatable_bootstrap_css}">
		<!-- select2 -->
		<!-- Select2 -->
    	<spring:url value="/resources/lte/plugins/select2/select2.min.css" var="select2_css"></spring:url>     
	    <link rel="stylesheet" href="${select2_css}">
	</head>
	
  	<body class="hold-transition skin-blue sidebar-mini">
   		<div id="wrapper">
		    <tiles:insertAttribute name="header" ignore="true" />
		    <tiles:insertAttribute name="menu" ignore="true" />   
		    <div id="main">
	    		<tiles:insertAttribute name="body"/> 
		    	<tiles:insertAttribute name="footer" ignore="true"/>
		    </div>
		</div>
		
		
		  <!-- jQuery 2.1.4 -->
	<spring:url value="/resources/lte/plugins/jQuery/jQuery-2.1.4.min.js" var="jQuery_2_1_4_min_js"></spring:url>	  
    <script src="${jQuery_2_1_4_min_js}"></script>
    <!-- Bootstrap 3.3.5 -->
    <spring:url value="/resources/lte/bootstrap/js/bootstrap.min.js" var="bootstrap_min_js"></spring:url>
    <script src="${bootstrap_min_js}"></script>
    <!-- SlimScroll -->
    <spring:url value="/resources/lte/plugins/slimScroll/jquery.slimscroll.min.js" var="jquery_slimscroll_min_js"></spring:url>
    <script src="${jquery_slimscroll_min_js}"></script>
    <!-- FastClick -->
    <spring:url value="/resources/lte/plugins/fastclick/fastclick.min.js" var="fastclick_min_js"></spring:url>
    <script src="${fastclick_min_js}"></script>
    <!-- AdminLTE App -->
    <spring:url value="/resources/lte/dist/js/app.min.js" var="app_min_js"></spring:url>
    <script src="${app_min_js}"></script>
    <!-- AdminLTE for demo purposes -->
    <spring:url value="/resources/lte/dist/js/demo.js" var="demo_js"></spring:url>
    <script src="${demo_js}"></script>
    <!-- datepicker -->
    <spring:url value="/resources/lte/plugins/datepicker/bootstrap-datepicker.js" var="datepicker_js"></spring:url>
	<script src="${datepicker_js}"></script>
	<!-- select2 -->
	<spring:url value="/resources/lte/plugins/select2/select2.full.min.js" var="select2_full_min_js"></spring:url>
    <script src="${select2_full_min_js}"></script>
    <!-- DataTables -->
    <spring:url value="/resources/lte/plugins/datatables/jquery.dataTables.min.js" var="datatable_min_js"></spring:url>
    <script src="${datatable_min_js}"></script>
    <spring:url value="/resources/lte/plugins/datatables/dataTables.bootstrap.min.js" var="datatable_boostrap_min_js"></spring:url>
    <script src="${datatable_boostrap_min_js}"></script>
	<script>
	$(function () {
        $(".select2").select2();
        $("#example1").DataTable();
	});
		function getdate(){
			var curdate = new Date();
			var curmonth = curdate.getMonth() + 1;
			if(curmonth < 10){ curmonth = '0'+curmonth; };
			var date_now = curdate.getDate();
			if(date_now < 10){date_now = '0'+date_now;};
			return date_now +'/'+ curmonth +'/'+ curdate.getFullYear();
			
		}
		$('.datepicker').datepicker({
			autoclose: true,
			todayHighlight: true,
			format: 'dd/mm/yyyy',
			language: 'vn'
			
			
		});
		$('.monthformat').datepicker({
			autoclose: true,
			todayHighlight: true,
			format: 'mm/yyyy',
			language: 'vn'
			
			
		});
		$('.date_now').val(getdate());
		
		
	</script>
	
	
	</body>
</html>
