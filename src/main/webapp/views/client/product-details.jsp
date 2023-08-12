<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Sản Phẩm</title>
</head>
<body>
    <div class="main">
        <div class="picture">
            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg" alt="">
        </div>
        <div class="content">
            <h2>Chi Tiết Sản Phẩm</h2>
            <form action="add-to-cart?id=${product.id}">
                <div>
                    <label for="">Tên sản phẩm: </label>
                    <h3>${product.name}</h3>
                </div>
                <div>
                    <label for="">Mô tả: </label>
                    <p>${product.description}</p>
                </div>
                <div>
                    <label for="">Giá: </label>
                    <h3>${product.price}</h3>
                </div>
                <div>
                    <label for="">Size: </label>
                    <select name="size" id="">
                        <option value="0">Chọn size</option>
                        <c:forEach items="${product.size}" var="size">
                            <option value="${size}">${size}</option>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <label for="">Màu: </label>
                    <select name="color" id="">
                        <option value="0">Chọn màu</option>
                        <c:forEach items="${product.colors}" var="color">
                            <option value="${color}">${color}</option>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <input type="hidden" id="id" name="id" value="${product.id}">
                </div>
                <div>
                    <input type="submit" value="Thêm vào giỏ hàng">
                </div>
            </form>
        </div>
    </div>

    <div class="cart">
        <h2>Giỏ hàng của bạn</h2>
        <c:if test="${not empty cart_list}">
            <ul>
                <c:forEach items="${cart_list}" var="cartItem">
                    <li>${cartItem.id} - Số lượng: ${cartItem.quantity}</li>
                </c:forEach>
            </ul>
        </c:if>
    </div>
</body>
</html>