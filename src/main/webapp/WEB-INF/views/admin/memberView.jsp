<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
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
</style>
</head>
<body>

  <h2>멤버 리스트</h2>

  <table>
    <thead>
      <tr>
        <th>회원고유번호</th>
        <th>이름</th>
        <th>이메일</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>홍길동</td>
        <td>hong@example.com</td>
      </tr>
      <tr>
        <td>2</td>
        <td>김철수</td>
        <td>kim@example.com</td>
      </tr>
      <!-- 여기에 실제 데이터를 반복문으로 출력할 수도 있습니다 -->
    </tbody>
  </table>
  
</body>
</html>