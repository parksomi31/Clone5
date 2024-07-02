<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	padding: 20px;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group input[type="text"], .form-group input[type="number"],
	.form-group select {
	width: calc(100% - 10px);
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 3px;
	font-size: 16px;
}

.form-group select {
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	background-image:
		url('data:image/svg+xml;utf8,<svg fill="rgba(0,0,0,0.8)" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>');
	background-repeat: no-repeat;
	background-position: right 10px top 50%;
	background-size: 12px;
	padding-right: 30px;
}

.form-group input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 12px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
}

.form-group input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>

	<div class="container">
		<h2>상품 추가</h2>
		<form action="addProduct" method="post">

			<div class="form-group">
				<label for="image">상품 이미지 URL:</label> <input type="text"
					name="image" required>
			</div>

			<div class="form-group">
				<label for="title">상품명:</label> <input type="text" name="title"
					required>
			</div>

			<div class="form-group">
				<label for="description">상품내용:</label> <input type="text"
					name="description" required>
			</div>

			<div class="form-group">
				<label for="price">가격:</label> <input type="number" name="price"
					required>
			</div>

			<div class="form-group">
				<label for="price">좋아요:</label> <input type="number" name="like"
					required>
			</div>

			<div class="form-group">
				<label for="price">리뷰:</label> <input type="number" name="review"
					required>
			</div>
			
			<div class="form-group">
				<label for="category">카테고리:</label> <select name="second_type_id"
					required>
					<option value="">카테고리 선택</option>
					<option value="1">1. 티세트</option>
					<option value="2">2. 녹차/말차</option>
				</select>
			</div>

			<div class="form-group">
				<input type="submit" value="상품 추가">
			</div>
		</form>
	</div>

</body>
</html>