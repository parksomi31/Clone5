<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
body {
    font-family: 'Noto Sans KR', sans-serif;
    background-color: #f8f9fa; /* 배경색 지정 */
    padding: 20px;
    margin: 0;
}

.header {
    height: 400px; /* 적절한 높이 설정 */
    background-image: url('https://image.osulloc.com/kr/ko/static_cdj/images/catBanner/banner_icecream.webp');
    background-size: cover;
    background-position: center;
    margin-bottom: 20px;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
}

.header h2 {
    color: #495057;
    font-size: 2rem;
    position: absolute;
    bottom: 20px;
}

.btn-container {
    display: flex;
    flex-direction: column;
    gap: 10px;
    align-items: center;
}

.btn {
    padding: 20px;
    width: 100%;
    max-width: 400px;
    font-size: 1.2rem;
    text-align: center;
    color: #fff;
    border: none;
    border-radius: 8px;
    transition: background-color 0.3s ease;
}

.btn-primary {
    background-color: #6c757d; /* 회색 */
}

.btn-primary:hover {
    background-color: #495057; /* 짙은 회색 */
}

.btn-success {
    background-color: #6c757d; /* 회색 */
}

.btn-success:hover {
    background-color: #495057; /* 짙은 회색 */
}

.btn-warning {
    background-color: #6c757d; /* 회색 */
}

.btn-warning:hover {
    background-color: #495057; /* 짙은 회색 */
}

.btn-info {
    background-color: #6c757d; /* 회색 */
}

.btn-info:hover {
    background-color: #495057; /* 짙은 회색 */
}

.btn-danger {
    background-color: #6c757d; /* 회색 */
}

.btn-danger:hover {
    background-color: #495057; /* 짙은 회색 */
}
</style>
</head>
<body>
    <div class="header">
        <h2>오설록 관리자 페이지</h2>
    </div>

    <div class="btn-container">
        <a href="noticeView" class="btn btn-primary btn-lg">공지사항 등록</a>
        <a href="faqView" class="btn btn-success btn-lg">FAQ 등록</a>
        <a href="memberView" class="btn btn-warning btn-lg">회원 관리</a>
        <a href="productView" class="btn btn-info btn-lg">물품 관리</a>
        <a href="programView" class="btn btn-danger btn-lg">예약 내역 확인</a>
    </div>

    <!-- Bootstrap JS 및 기타 스크립트 -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>