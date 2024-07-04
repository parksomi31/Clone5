<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>관리자 페이지</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f8f9fa; /* 배경색 지정 */
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff; /* 내용 배경색 */
            border-radius: 10px; /* 모서리 둥글게 */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 10px;
        }
        .btn {
            padding: 20px;
            font-size: 1.2rem;
            text-align: center;
            color: #fff;
            border: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        .btn-primary {
            background-color: #007bff; /* 파란색 */
        }
        .btn-primary:hover {
            background-color: #0056b3; /* 짙은 파란색 */
        }
        .btn-success {
            background-color: #28a745; /* 초록색 */
        }
        .btn-success:hover {
            background-color: #218838; /* 짙은 초록색 */
        }
        .btn-warning {
            background-color: #ffc107; /* 주황색 */
        }
        .btn-warning:hover {
            background-color: #e0a800; /* 짙은 주황색 */
        }
        .btn-info {
            background-color: #17a2b8; /* 청록색 */
        }
        .btn-info:hover {
            background-color: #117a8b; /* 짙은 청록색 */
        }
        .btn-danger {
            background-color: #dc3545; /* 빨간색 */
        }
        .btn-danger:hover {
            background-color: #bd2130; /* 짙은 빨간색 */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>관리자 페이지</h1>
        <div class="btn-container">
            <a href="noticeView" class="btn btn-primary btn-lg">공지사항 등록</a>
            <a href="faqView" class="btn btn-success btn-lg">FAQ 등록</a>
            <a href="memberView" class="btn btn-warning btn-lg">회원 관리</a>
            <a href="productView" class="btn btn-info btn-lg">물품 관리</a>
            <a href="programView" class="btn btn-danger btn-lg">예약 내역 확인</a>
        </div>
    </div>

    <!-- Bootstrap JS 및 기타 스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>