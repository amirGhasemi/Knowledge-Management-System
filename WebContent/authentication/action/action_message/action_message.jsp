<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<br />
<!-- this area for show error message on log page or register page -->
<div class="alert panel" id="actionErrorContainer" role="alert">
	<button type="button" class="close" id="closeErrorMessage"
		aria-hidden="false">×</button>
	<i class="fa fa-bug"></i> :
	<div id="errorMessageDiv">
		<s:actionerror theme="simple" escape="true" name="actionError"
			cssClass="actionError" />
	</div>
	<!-- end received error text are dive -->
</div>
<!-- end action dive -->
<br />

<!-- this area for show the Success message on register page -->
<div class="alert panel" id="actionSuccessContainer" role="alert">
	<button type="button" class="close" id="closeSuccessDive"
		aria-hidden="true">×</button>
	<i class="glyphicon glyphicon-saved"></i>
	<div id="successMessageDiv">
		<s:actionerror theme="simple" escape="true" name="actionMessage"
			cssClass="actionMessage" />
		<br />
	</div>
	<!-- end received error text are dive -->
</div>
<!-- end action dive -->


<script>
	$(document).ready(function() {
		$("#closeErrorMessage").click(function() {
			$("#actionErrorContainer").hide();
		});
	});

	$(document).ready(function() {
		$("#closeSuccessDive").click(function() {
			$("#actionSuccessContainer").hide();
		});
	});
</script>
