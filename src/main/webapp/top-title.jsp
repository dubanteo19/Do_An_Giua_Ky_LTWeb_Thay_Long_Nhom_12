<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="styles/base.css">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="styles/nav.css">
<title>Top title</title>
</head>
 <style type="text/css">
    .title-group {
        background-image: url("images/titlebackground/title-bg.png");
        height: 200px;
        box-shadow: inset 0px -40px 60px 40px rgba(0, 0, 0, 0.8);
    }
    .text-green {
        color: #679210;
    }

    </style>
<body>

<div class="container-fluid title-group p-md-3">
        <h1 class="title-text text-center font-weight-bold text-white"> <%= request.getParameter("title") %></h1>
        <ul class="list-group list-group-horizontal justify-content-center">
            <li class="list-inline-item"><a class="text-decoration-none text-white" href="">Trang chủ ></a></li>
            <li class="list-inline-item"><a class="text-decoration-none text-green title-text" href=""><%= request.getParameter("title") %></a></li>
        </ul>
    </div>
</body>
</html>