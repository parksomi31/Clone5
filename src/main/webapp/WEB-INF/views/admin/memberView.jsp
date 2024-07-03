<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	padding: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	background-color: #ffffff;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}

table th, table td {
	border: 1px solid #dddddd;
	padding: 12px;
	text-align: center;
}

table th {
	background-color: #f2f2f2;
}

table tr:nth-child(even) {
	background-color: #f9f9f9;
}
  .delete-button {
    background-color: #f44336;
    color: white;
    border: none;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border-radius: 5px;
    cursor: pointer;
  }
  .delete-button:hover {
    background-color: #d32f2f;
  }
</style>
</head>
<body>

	<h2>회원 목록</h2>

	<table>
		<thead>
			<tr>
				<th>회원고유번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${member}" var="dto" varStatus="loop">
				<tr>
					<td>${dto.k_number}</td>
					<td>${dto.k_name}</td>
					<td>${dto.k_email}</td>
					<td><a href="deleteMember?k_number=${dto.k_number}" class="delete-button">탈퇴</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>