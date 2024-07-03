<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>예약하기</title>
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css' rel='stylesheet' />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                dateClick: function(info) {
                    document.getElementById('datepicker').value = info.dateStr;
                }
            });
            calendar.render();
        });
    </script>
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

        .banner {
            width: 100%;
            height: auto;
        }

        /* Section Styles */
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 120px 20px 20px; /* Adjusted padding to account for the fixed header */
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
        <a href="/" class="logo"><img src="${pageContext.request.contextPath}/resources/icon/logo.png" alt="Logo" /></a>
        <div class="nav">
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/contact">Contact</a></li>
            </ul>
        </div>
    </header>

    <div class="container">
        <img src="${pageContext.request.contextPath}/resources/icon/museum.png" alt="Museum Banner" class="banner" />
        <section class="section">
            <div class="page_tit">예약하기</div>
            <div id='calendar'></div>
            <form action="${pageContext.request.contextPath}/reservation" method="post">
                <label for="name">이름:</label>
                <input type="text" id="name" name="name" value="${sessionScope.kakaoN}" readonly><br>
                <label for="email">이메일:</label>
                <input type="text" id="email" name="email" value="${sessionScope.kakaoE}" readonly><br>
                <label for="date">날짜:</label>
                <input type="text" id="datepicker" name="date" readonly><br>
                <label for="time">시간:</label>
                <input type="time" id="time" name="time"><br>
                <input type="submit" value="예약하기">
            </form>
        </section>
    </div>
</body>
</html>
