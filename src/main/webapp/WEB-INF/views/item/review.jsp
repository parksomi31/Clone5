<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰쓰기</title>
<script language="javascript">
	function addreview() {
		reviewform.submit();
	}
</script>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}
/* <!--안녕--> */
.review-form {
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 600px;
	width: 100%;
}

.review-form fieldset {
	display: inline-block;
	direction: rtl;
	border: 0;
	margin-bottom: 15px;
}

.review-form legend {
	text-align: right;
	font-weight: bold;
}

.review-form input[type=radio] {
	display: none;
}

.review-form label {
	font-size: 2.5em;
	color: #ddd;
	cursor: pointer;
	transition: color 0.2s;
}

.review-form label:hover, .review-form label:hover ~ label, .review-form input[type=radio]:checked 
	 ~ label {
	color: #f5c518;
}

.review-form input[type=text], .review-form input[type=password],
	.review-form textarea {
	width: calc(100% - 20px);
	padding: 10px;
	margin-bottom: 15px;
	box-sizing: border-box;
	border: solid 1.5px #d3d3d3;
	border-radius: 5px;
	font-size: 16px;
}

.review-form input[type=file] {
	margin-bottom: 15px;
}

.review-form .submit-btn {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 10px;
}

.review-form .submit-btn:hover {
	background-color: #45a049;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 15px;
}

td {
	padding: 10px;
	font-size: 14px;
	width: 20px;
}

td[colspan="2"] {
	text-align: center;
}

a {
	text-decoration: none;
	color: #4CAF50;
	margin: 0 5px;
}

a:hover {
	color: #45a049;
}

.submit-btn {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 10px;
	transition: background-color 0.3s; /* 변화를 자연스럽게 만들기 위한 transition 속성 */
}

.submit-btn:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<form class="review-form" action="./reviewwite" method="post"
		enctype="multipart/form-data" name="reviewform">
		<table cellpadding="0" cellspacing="0">
			<tr align="center" valign="middle">
				<td colspan="2" style="font-size: 24px; font-weight: bold;">리뷰작성</td>
			</tr>
			<tr>
				<td colspan="2">
					<fieldset>
						별점을 선택해주세요
							<input type="radio" name="star" value="5" id="rate5"><label for="rate5">★</label> 
							<input type="radio" name="star" value="4" id="rate4"><label for="rate4">★</label> 
							<input type="radio" name="star" value="3" id="rate3"><label for="rate3">★</label> 
							<input type="radio" name="star" value="2" id="rate2"><label for="rate2">★</label> 
							<input type="radio" name="star" value="1" id="rate1"><label for="rate1">★</label>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" type="text" size="10" maxlength="10"
					value=""></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input name="password" type="password" size="10"
					maxlength="10" value=""></td>
			</tr>
			<tr>
				<td>제 목</td>
				<td><input name="title" type="text" size="50"
					maxlength="100" value=""></td>
			</tr>
			<tr>
				<td>내 용</td>
				<td><textarea name="content" cols="67" rows="15"></textarea></td>
			</tr>
			<tr>
				<td>파일첨부</td>
				<td><input name="image" type="file"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr align="center" valign="middle">
				<td colspan="2">
					<button type="submit" class="submit-btn">[등록]</button> <a
					href="javascript:history.go(-1)">[뒤로]</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
