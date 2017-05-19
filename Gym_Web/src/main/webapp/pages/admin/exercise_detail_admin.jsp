<%@page import="UIT.SE325H22.Group2.controller.ExerciseDetailAdminController"%>
<%@page import="UIT.SE325H22.Group2.model.ExerciseDetail"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Example</title>
<meta charset="UTF-8">
</head>
<body>
	<div class="wrapper">
		<jsp:include page="/partial/css_lib.jsp"></jsp:include>
		<jsp:include page="/partial/panel.jsp"></jsp:include>
		<div class="main-panel ps-container ps-theme-default ps-active-y">
			<jsp:include page="/partial/nav.jsp"></jsp:include>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="panel-group">
									<div class="panel panel-border panel-default">
										<div class="card-header">
											<a data-toggle="collapse" href="#collapse" id="expand">
												<div class="panel-heading">
													<h4 class="panel-title">
														<span class="smooth">Add a new ... </span><i
															class="ti-angle-down"></i>
													</h4>
												</div>
											</a>
										</div>
										<div class="card-content">
											<div id="collapse" class="panel-collapse collapse">
												<div class="panel-body">
													<form id="form" enctype="multipart/form-data" id="form"
														class="form-horizontal">
														<input type="text" style="display: none;" name="id"
															id="id">
														<div class="form-group">
															<label class="col-sm-4 control-label"> Mã nhóm cơ <star>*</star></label>
															<div class="col-sm-7">
																<input class="form-control" type="text" name="muscle_type_id"
																	id="mssv" number="true" minLength="5" maxLength="10">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label"> Tên bài tập <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="exercise_detail_name" id="ten"
																	type="text" required="true" autocomplete="off"
																	aria-required="true">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label"> Hình ảnh <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="exercise_detail_image" id="diachi"
																	type="text" required="true" autocomplete="off"
																	aria-required="true">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label"> Thông tin </label>
															<div class="col-sm-7">
																<input class="form-control" name="exercise_detail_info" type="file"
																	autocomplete="off">
															</div>
														</div>

														<div class="card-footer text-center">
															<button type="submit" id="add"
																class="btn btn-wd btn-success" name="POST">
																<span class="btn-label"> <i class="fa fa-check"></i>
																	<span class="smooth">ADD</span></span>
															</button>
															<button type="button" id="clear" class="btn btn-wd btn-default">
																<span class="btn-label"> <i class="fa fa-times"></i>
																</span> CLEAR
															</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--  end acordeon -->
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="card-content">
									<div class="toolbar"></div>
									<div id="table">
										<table data-toggle="table" class="table" id="bootstrap-table"
											data-url="/SpringRestHibernateExample/getAllSinhViens"
											data-search="true" data-show-refresh="true"
											data-show-toggle="true" data-show-columns="true">
											<thead>
												<tr>
													<th data-field="actions" class="td-actions"
														data-events="operateEvents"
														data-formatter="operateFormatter">Action</th>
													<th data-field="muscle_type_id" >Mã nhóm cơ</th>
													<th data-field="exercise_detail_name">Tên chi tiết bài tập</th>
													<th data-field="exercise_detail_image">exercise_detail_image</th>
													<th data-field="exercise_detail_info">exercise_detail_info</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/partial/js_lib.jsp"></jsp:include>
		<script src="resources/js/Example_SinhVien.js"></script>
	</div>
</body>
</html>
