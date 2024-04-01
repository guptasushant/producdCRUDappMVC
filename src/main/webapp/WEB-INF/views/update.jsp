<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Product</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Your custom CSS file -->
<link href="styles.css" rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title text-center">Update Product</h5>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath }/handleform" method="post">
						<input type="hidden" value="${product.id }" name="id"> 
							<div class="form-group">
								<label for="name">Name:</label> <input type="text"
									class="form-control" id="name" placeholder="Enter Name"
									name="name" value="${product.name }">
							</div>
							<div class="form-group">
								<label for="description">Description:</label>
								<textarea class="form-control" id="description" rows="3"
									placeholder="Enter Description" name="description">${product.description}
									</textarea>
							</div>
							<div class="form-group">
								<label for="price">Price:</label> <input type="text"
									class="form-control" id="price" placeholder="Enter Price"
									value="${product.price}"
									name="price">
							</div>

							<div class="card-footer text-center">
								<a href="${pageContext.request.contextPath}/"
									class="btn btn-outline-danger">Back</a>
								<button type="submit" class="btn btn-warning">Update</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
