<!DOCTYPE html>
<html>
<head>
<title>Schedule</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="./partial/css_lib.jsp"></jsp:include>
		<jsp:include page="./partial/panel.jsp"></jsp:include>
		<div class="main-panel ps-container ps-theme-default ps-active-y">
			<jsp:include page="./partial/nav.jsp"></jsp:include>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="card card-calendar">
								<div class="card-content">
									<div id="fullCalendar"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="./partial/js_lib.jsp"></jsp:include>
		<script src="resources/js/schedule.js"></script>
</body>
</html>
