<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-minimize">
				<button id="minimizeSidebar" class="btn btn-fill btn-icon">
					<i class="ti-more-alt"></i>
				</button>
			</div>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
					<span class="icon-bar bar3"></span>
				</button>
				<a class="navbar-brand" href="#"> </a>
			</div>
			<div class="collapse navbar-collapse">

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#notifications"
						class="dropdown-toggle btn-rotate" data-toggle="dropdown"> <i
							class="ti-bell"></i> <span class="notification">5</span>
							<p class="hidden-md hidden-lg">
								Notifications <b class="caret"></b>
							</p>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Notification 1</a></li>
							<li><a href="#">Notification 2</a></li>
							<li><a href="#">Notification 3</a></li>
							<li><a href="#">Notification 4</a></li>
							<li><a href="#">Another notification</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>
