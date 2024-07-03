<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
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
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
  }
  table th, table td {
    border: 1px solid #dddddd;
    padding: 10px;
    text-align: center;
  }
  table th {
    background-color: #f2f2f2;
  }
  table tr:nth-child(even) {
    background-color: #f9f9f9;
  }
  .image-cell img {
    max-width: 100px;
    height: auto;
    display: block;
    margin: 0 auto;
  }
  .add-button {
    display: block;
    width: 150px;
    margin: 20px auto;
    padding: 10px;
    text-align: center;
    background-color: #4CAF50;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-size: 16px;
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

  <table>
    <thead>
      <tr>
        <th>상품이미지</th>
        <th>상품명</th>
        <th>가격</th>
        <th>삭제</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${products}" var="dto" varStatus="loop">
        <tr>
          <td class="image-cell"><img src="${dto.image}" alt="${dto.title}"></td>
          <td>${dto.title}</td>
          <td>${dto.price}</td>
          <td><a href="deleteProduct?title=${dto.title}" class="delete-button">삭제</a></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

  <a href="addProductForm" class="add-button">상품 추가하기</a>

</body>
</html>