<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
    }
    .container {
        width: 500px;
        margin: 20px auto;
        padding: 20px;
        background-color: #ffffff;
        border: 1px solid #cccccc;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 15px;
    }
    table, th, td {
        border: 1px solid #cccccc;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    input[type="text"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin-top: 5px;
        margin-bottom: 10px;
        border: 1px solid #cccccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 14px;
    }
    input[type="submit"] {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 14px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    a {
        text-decoration: none;
        color: #4CAF50;
        font-size: 14px;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="container">
    <h2>FAQ 작성화면</h2>

    <form action="noticeWrite" method="post">
        <table>
            <tr>
                <td>제목</td>
                <td><input type="text" name="notice_title" size="50"></td>
            </tr>
            <tr>
                <td>내용</td>
                <td><input type="text" name="notice_content" size="50"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="입력">
                    &nbsp;&nbsp;
                    <a href="list">목록보기</a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>