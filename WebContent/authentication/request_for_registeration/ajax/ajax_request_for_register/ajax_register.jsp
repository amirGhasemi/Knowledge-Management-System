<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<script type="text/javascript">
	$(function() {
		$("#actionErrorContainer").hide();
		$("#actionSuccessContainer").hide();
		$(".register").on("click", function() {
			ajaxlogin().done(function(data) {
				$("body").append(data);
			}).fail(function(xhr, status, errorThrow) {
				allert("Ajax Error :" + errorThrow);
			}).always(function(xhr, status) {
				//alert("Ajax Finished -> press f12 -> go to console tab");
			});
		})
	});

	function ajaxlogin() {
		var dynamicdata = {};
		dynamicdata["request_content"] = $("#request_content").val();
		dynamicdata["request_user_name"] = $("#requst_user_name").val();
		dynamicdata["request_user_email"] = $("#request_user_email").val();
		return $.ajax({
			url : "registerRequest",
			type : "post",
			data : dynamicdata
		});
	}

	
</script>