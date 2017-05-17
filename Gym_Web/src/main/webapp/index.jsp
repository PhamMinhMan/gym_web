<%@page import="UIT.SE325H22.Group2.controller.SinhVienController"%>
<%@page import="UIT.SE325H22.Group2.model.SinhVien"%>

<!DOCTYPE html>
<html>
<head>
<title>WEB SERVICE</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-table.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/bootstrap-table.js"></script>
<script src="resources/js/main.js"></script>
</head>
<body>
	<div id="title">
		<p class="center">.:EXAMPLE OF WEB SERVICE:.</p>
		<hr>
	</div>

	<div id="content">
		<div class="content-item" style="margin-bottom: 10px;">
			<label class="col-md-6">Tìm kiếm: </label> 
			<input type="text"
				id="Search" data-toggle="tooltip" data-placement="right"
				data-original-title="Nhập id để tìm kiếm" class="col-md-6">
		</div>
		<form id="form" enctype="multipart/form-data">
			<div class="content-item">
				<input type="text" style="display: none;" name="id" id="Id"
					data-toggle="tooltip" data-placement="right"
					data-original-title="Id">
			</div>
			<div class="content-item">
				<label class="col-md-6">Mã số: </label> <input type="text"
					name="mssv" id="MaSo" data-toggle="tooltip" data-placement="right"
					data-original-title="Mã số" class="col-md-6 input">
			</div>
			<div class="content-item">
				<label class="col-md-6">Họ và tên: </label> <input type="text"
					name="ten" id="HoVaTen" data-toggle="tooltip"
					data-placement="right" data-original-title="Họ và tên"
					class="col-md-6 input">
			</div>
			<div class="content-item">
				<label class="col-md-6">Địa chỉ: </label> <input type="text"
					name="diachi" id="DiaChi" data-toggle="tooltip"
					data-placement="right" data-original-title="Địa chỉ"
					class="col-md-6 input">
			</div>
			<div class="content-item">
				<label class="col-md-6">Avatar: </label> <input type="file"
					name="avatar" id="Avatar" data-toggle="tooltip"
					data-placement="right" data-original-title="Avatar"
					class="col-md-6 avatar">
			</div>
			<div id="control" class="center">
				<input type="submit" name="POST" id="DangKy" value="Đăng ký">
				<input type="button" name="Xoa" id="Xoa" value="Làm mới">
			</div>
		</form>

		<div id="table">
			<table data-toggle="table"
				data-url="/SpringRestHibernateExample/getAllSinhViens">
				<thead>
					<tr>
						<th data-field="action" class="action"
							data-formatter="actionFormatter" data-events="actionEvents">Hành
							động</th>
						<th data-field="avatar" class="avatar">Avatar</th>
						<th data-field="id">ID</th>
						<th data-field="mssv">MSSV</th>
						<th data-field="ten">Họ Tên</th>
						<th data-field="diachi">Địa chỉ</th>
					</tr>
				</thead>
			</table>
		</div>
		
		<div id="message">
		</div>
	</div>
</body>
</html>
