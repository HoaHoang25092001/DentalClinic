<%-- 
    Document   : forgotpassword
    Created on : Jul 31, 2022, 9:43:15 AM
    Author     : SE150436 - Hoàng Quang Hòa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <!-- Css -->
        <link href="<c:url value="/css/forgotpassword.css"/>" rel="stylesheet" type="text/css"/>
        <!-- Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    </head>
    <body>
        <div class="container">
            <div class="left">
                <a class="btn" href="HomeController" style="text-decoration: none; background: #0d6efd; color: white; width: 50px; text-align: center; padding: 10px 3px; margin-bottom: 40px;"><i class="bi bi-house-door"></i></a>
                <div class="header">
                    <h2 class="animation a1">Quên mật khẩu</h2>
                    <h4 class="animation a2">Điền username và email của bạn để nhận lại mật khẩu</h4>
                </div>
                <form action="MainController" method="POST">
                    <div class="form">
                        <input type="text" class="form-field animation a3" placeholder="Username" name="userName">
                        <input type="email" class="form-field animation a5" placeholder="Your Email" name="email">    
                        <button type="submit" name="action" value="ForgotPassword" class="animation a6">GỬI EMAIL</button>
                    </div>
                    <br>
                    <p style="color: red;" class="animation a5">${MESSAGE}</p>
                    <p style="color: green;" class="animation a5">${SUCCESS_MESSAGE}</p>
                </form>
            </div>
            <div class="right"></div>
        </div>
    </body>
</html>
