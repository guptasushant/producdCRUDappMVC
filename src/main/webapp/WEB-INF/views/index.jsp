<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./base.jsp"%>
<title>Main page!</title>
</head>
<body>
	<div class="container mt-3">

		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center-mb-3">Welcome to product app</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${getproducts }" var="p">
							<tr>
								<th scope="row">Tech#10${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="font-weight-bold">&#8377; ${p.price }</td>
								<td><a href="delete-product/${p.id }"><i
										class="fa-solid fa-trash text-danger" style="font-size: 25px"></i></a>
									<a href="update-product/${p.id }"><i
										class="fa-solid fa-pen-nib text-primary"
										style="font-size: 25px"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="addproduct" class="btn btn-outline-success">Add
						product</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>