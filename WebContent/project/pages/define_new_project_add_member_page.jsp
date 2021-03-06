<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project</title>

<!-- CSS includes files -->
<%@ include file="../includs/templates/css_include_files.jsp"%>

</head>
<body class="no-skin">

	<div id="wrapper">
		<!-- including navigation bar -->
		<%@ include file="../includs/nave_bar/project_nav_bar.jsp"%>

		<div class="main-container ace-save-state" id="main-container">


			<div class="col col-xs-4">

				<!-- include side bar -->
				<%@ include file="../includs/side_bar/project_side_bar.jsp"%>

			</div>

			<div class="main-content">
				<div class="main-content-inner">

					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<!-- ----------- page content -->

								<!-- heading -->
								<div class="page-header">
									<h1>Define new project</h1>
								</div>

								<!-- -------------- process stage -->

								<ul class="steps" style="margin-left: 0">
									<li data-step="1" class="active"><span class="step">1</span>
										<span class="title">Create project</span></li>

									<li data-step="2" class="active"><span class="step">2</span>
										<span class="title">Add members</span></li>

									<li data-step="3"><span class="step">3</span> <span
										class="title">Access level</span></li>

									<li data-step="4"><span class="step">4</span> <span
										class="title">Success</span></li>
								</ul>

								<!-- --------------/ process stage -->


								<div class="widget-box widget-color-blue">
									<div class="widget-header">
										<h5 class="widget-title bigger lighter">Define your
											project</h5>
									</div>

									<div class="widget-body">
										<div class="widget-main">
											<form action="addMember" method="post">
												<ul class="list-unstyled spaced2">

													<li>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Your member user name </label>

															<div class="col-sm-9">
																<input type="text" id="form-field-1"
																	placeholder="Complete user name ..." name="user_name"
																	class="col-xs-10 col-sm-5">
															</div>
														</div>
													</li>

													<br />
													<br />

													<li>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-1"> Your member role in project
															</label>

															<div class="col-sm-9">
																<div class="col col-xs-10">
																	<select name="user_role" class="form-control"
																		id="isAdmin">
																		<option></option>
																		<option>Lead</option>
																		<option>User</option>
																	</select>
																</div>
																<button class="btn btn-danger btn-sm">
																	Add <i class="glyphicon glyphicon-plus"></i>
																</button>

															</div>
														</div>
													</li>

													<li>

														<h3 class="header smaller lighter blue">Your members
														</h3> <!-- ---------------- show members table -->

														<div class="dataTable_wrapper">
															<table
																class="table table-striped table-bordered table-hover"
																id="dataTables-example">
																<thead>
																	<tr>
																		<th>User name</th>
																		<th>Role</th>
																	</tr>
																</thead>

																<tbody>

																	<s:iterator status="stat" value="users">
																		<tr class="list">
																			<td class="User name"><s:property
																					value="userName" /></td>
																			<td class=""><s:property value="memberRole" /></td>
																		</tr>
																	</s:iterator>

																</tbody>
															</table>

															<!-- ----------------/ show members table -->
													</li>

												</ul>
											</form>

											<hr>
											<div class="price">
												<i class="menu-icon glyphicon glyphicon-th-list"></i>
											</div>
										</div>
									</div>
									<div>
										<a href="#" class="btn btn-block btn-primary"> <span>Next</span>
											<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
										</a>
									</div>
								</div>


								<!-- -----------/ page content -->

								<!-- ------------------------/ project body -->
								<div style="visibility: hidden;">
									<!-- this page include the action message but it is high in class ajaxUserPage.js -->
									<%@ include
										file="../../../authentication/action/action_message/action_message.jsp"%>
									<%@ include
										file="../../../authentication/signout/ajax/ajax_sign_out_action_message/ajax_sign_out_error_message.jsp"%>
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
						<!-- footer -->
						<%@ include
							file="../../../dashboard/admin/includs/new_footer/new_footer.jsp"%>
					</div>
					<!-- /.page-content -->
				</div>
			</div>

		</div>
	</div>

	<!-- JS includes files -->
	<%@ include file="../includs/templates/js_include_files.jsp"%>

	<!-- ad AJAX for sign out -->
	<script
		src="authentication/signout/ajax/ajax_request_for_sign_out/ajax_sign_out.js"></script>

</body>
</html>