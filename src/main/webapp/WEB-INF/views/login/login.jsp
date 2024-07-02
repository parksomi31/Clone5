<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Noto Sans KR', sans-serif;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #fff;
            border-bottom: 1px solid #ddd;
            position: absolute;
            top: 0;
            width: 100%;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header .logo {
            margin-left: 50px; /* 로고의 왼쪽 공백 추가 */
        }

        .header .logo img {
            height: 150px; /* 로고 크기를 더 키움 */
        }

        .nav {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            margin-right: 100px; /* 링크들을 더 왼쪽으로 조정 */
        }

        .nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            gap: 20px; /* 항목 간의 간격을 동일하게 설정 */
        }

        .nav li {
            margin: 0 10px;
        }

        .nav a {
            text-decoration: none;
            color: #333;
        }

        /* Section Styles */
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 120px 20px 20px; /* Adjusted padding to account for the fixed header */
            text-align: center; /* 화면 중앙 정렬 */
        }

        .page_tit {
            font-size: 24px;
            font-weight: bold;
            margin: 40px 0 20px;
        }

        .section {
            padding: 40px 0;
        }

        .btnPresent {
            display: inline-block; /* 중앙 정렬을 위해 inline-block 사용 */
            justify-content: center;
            align-items: center;
            padding: 0; /* 버튼의 패딩을 제거하여 클릭 가능한 영역을 이미지 크기에 맞춤 */
            background-color: transparent;
            color: #333;
            border: none;
            border-radius: 0px;
            cursor: pointer;
            text-decoration: none;
        }

        .btnPresent img {
            width: 300px; /* 이미지 크기 조정 */
            height: auto;
            margin-right: 0; /* 이미지 우측 여백 제거 */
            margin-left: 0;
        }

        /* Responsive Styles */
        @media screen and (max-width: 768px) {
            .btnPresent {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <a href="/" class="logo"><img src="resources/icon/logo.png" alt="Logo" /></a>
        <div class="nav">
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/contact">Contact</a></li>
            </ul>
        </div>
    </header>

    <div class="container">
        <section class="section">
            <div class="page_tit">로그인</div>
            <div class="login-form">
                <a class="btnPresent"
                    href="https://kauth.kakao.com/oauth/authorize?client_id=7bdcbdc77dde1eadcc53e0828cc9c91c&redirect_uri=http://localhost:8080/study/kakaoLogin&response_type=code">
                    <img src="resources/icon/kakao_login_large_narrow.png" />
                </a>
            </div>
        </section>
    </div>
</body>
</html>
