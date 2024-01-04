<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Nhập mã xác thực</title>
</head>
<body>
    <h1>Nhập mã xác thực</h1>
    <form action="/Verifier" method="get">
        <input type="text" name="otp" placeholder="Mã xác thực (6 chữ số)" maxlength="6">
        <input type="submit" value="Xác nhận">
    </form>
</body>
</html>