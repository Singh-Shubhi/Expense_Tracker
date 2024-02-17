<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body class="bg-light">
	<%@include file="component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Register Page</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-success fs-2">${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="userRegister" method="post">
							<div class="mb-3">
								<label>Enter Full Name</label> <input type="text"
									name="fullName" class="form-control" required>
							</div>
							<div class="mb-3">
								<label>Email</label> <input type="email" name="email"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label>Password</label> <input type="password" name="password"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label>About</label> <input type="text" name="about"
									class="form-control" required>
							</div>
							<button class="btn btn-danger col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>