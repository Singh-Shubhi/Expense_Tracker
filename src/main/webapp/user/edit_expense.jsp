<%@page import="com.entity.Expense"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ExpenseDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit expense page</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body class="bg-light">
	<c:if test="${empty loginUser }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	ExpenseDao dao1 = new ExpenseDao(HibernateUtil.getSessionFactory());
	Expense ex = dao1.getExpenseById(id);
	%>
	<%@include file="../component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-4">
				<div class="card card-sh">
					<div class="card-header text-center">
						<p class="fs-3">Edit Expense</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-success fs-2">${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="../updateExpense" method="post">
							<div class="mb-3">
								<label>Title</label> <input type="text" name="title"
									class="form-control" value="<%= ex.getTitle() %>" required>
							</div>
							<div class="mb-3">
								<label>Date</label> <input type="text" name="date"
									class="form-control" pattern="\d{2}-\d{2}-\d{4}"
									placeholder="dd-mm-yyyy" value="<%= ex.getDate() %>" required>
							</div>
							<div class="mb-3">
								<label>Time</label> <input type="time" name="time"
									class="form-control" value="<%= ex.getTime() %>" required>
							</div>
							<div class="mb-3">
								<label>Description</label> <input type="text" name="description"
									class="form-control"  value="<%= ex.getDescription() %>" required>
							</div>
							<div class="mb-3">
								<label>Price</label> <input type="text" name="price"
									class="form-control" value="<%= ex.getPrice() %>" required>
							</div>
							<input type="hidden" name="id" value="<%= ex.getId()%>">
							<button class="btn btn-danger col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>