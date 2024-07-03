<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #f9f9f9;
	color: #333;
	margin: 0;
	padding: 0;
}

.reviewWrapper {
	text-align: center;
	padding: 20px 0;
	background-color: #fff;
	margin-bottom: 20px;
	border-bottom: 2px solid #ddd;
}

.reviewWrapper .title {
	font-size: 24px;
	font-weight: bold;
	color: #333;
	margin: 0;
}

.reviewWrapper .subtit {
	font-size: 16px;
	color: #666;
	margin: 5px 0 0;
}

.tableWrapper {
	display: flex;
	justify-content: center;
	flex-direction: column;
	align-items: center;
	margin-bottom: 20px;
}

.tableHeader {
	width: 80%;
	display: flex;
	justify-content: flex-end;
	margin-bottom: 10px;
}

.writeReviewBtn {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

.writeReviewBtn:hover {
	background-color: #45a049;
}

table {
	width: 80%;
	border-collapse: collapse;
	background-color: #fff;
}

td {
	padding: 20px;
	border-bottom: 1px solid #ddd;
	text-align: left;
}

.star {
	color: #f39c12;
}

.review-header {
	font-weight: bold;
}

.review-content {
	margin-top: 10px;
}

.review-image img {
	max-width: 100px;
	height: auto;
	margin-top: 10px;
}

.review-header span {
	display: block;
	margin-top: 5px;
	color: #999;
}

@media screen and (max-width: 768px) {
	table {
		width: 100%;
	}
	td {
		padding: 10px;
	}
	.review-image img {
		max-width: 50px;
	}
}
</style>
<!-- Font Awesome CDN -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap">
</head>
<body>
	<div class="reviewWrapper">
		<p class="title">고객리뷰</p>
		<p class="subtit">솔직담백한 후기들을 확인해보세요</p>
	</div>

	<div class="tableWrapper">
		<div class="tableHeader">
			<form action="./reviewWriteForm">
				<input type="submit" class="writeReviewBtn" value="리뷰쓰기">
		</div>
		<table>
			<c:forEach var="review" items="${reviews}">
				<tr>
					<td class="review-header"><span class="star"> <c:forEach
								begin="1" end="5" varStatus="status">
								<i class="fas fa-star"
									style="color: ${status.index <= review.star ? '#f39c12' : 'lightgray'};"></i>
							</c:forEach>
					</span> 작성자 ${review.name} <span><fmt:formatDate
								value="${review.date}" pattern="yyyy.MM.dd" /></span></td>
				</tr>
				<tr>
					<td>
						<div class="review-content">${review.content}</div>
						 <input
						type="hidden" id="product_num" name="product_num"
						value="${review.product_num}"> <c:if
							test="${not empty review.image}">
							<div class="review-image">
								<img src="data:image/jpeg;base64,${review.image}"
									alt="Review Image">
							</div>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
		</form>
	</div>
</body>
</html>
