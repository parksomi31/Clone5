<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            width: 80%;
            margin: 0 auto;
        }

        .header, .footer {
            background-color: #f8f8f8;
            padding: 20px;
            text-align: center;
        }

        .cart {
            width: 100%;
            margin: 20px 0;
        }

        .cart th, .cart td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .cart th {
            background-color: #f2f2f2;
        }

        .cart img {
            max-width: 100px;
            height: auto;
        }

        .cart-total {
            text-align: right;
            padding: 10px;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            text-align: center;
            display: inline-block;
        }

        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>장바구니</h1>
    </div>
    <div class="container">
        <table class="cart">
            <tr>
                <th>상품명</th>
                <th>이미지</th>
                <th>가격</th>
                <th>수량</th>
                <th>합계</th>
                <th>삭제</th>
            </tr>
            <c:forEach var="item" items="${cartItems}">
                <tr>
                    <td>${item.title}</td>
                    <td><img src="${item.image}" alt="${item.title} 이미지" /></td>
                    <td>${item.price}</td>
                    <td>${item.quantity}</td>
                    <td>${item.total}</td>
                    <td>
                        <form action="removeCart" method="post">
                            <input type="hidden" name="cartItemId" value="${item.cartItemId}" />
                            <input type="submit" value="삭제" class="btn" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div class="cart-total">
            <strong>총 합계: ${total}</strong>
        </div>
        <div style="text-align: center; margin-top: 20px;">
            <form action="checkout" method="post">
                <input type="submit" value="결제하기" class="btn" />
            </form>
        </div>
    </div>
    <div class="footer">
        <p>2024 © Your Company. All rights reserved.</p>
    </div>
</body>
</html>
