<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<!DOCTYPE html>
<html>
<%int userId = (int) request.getAttribute("userId"); %>
<head>
<h1><%= userId%></h1>
    <title>Nhập mã xác thực</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px auto;
            max-width: 400px;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input[type="text"] {
            padding: 10px;
            margin-bottom: 20px;
            width: 80%;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #3498db;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
        .resend-button {
            margin-top: 15px;
            font-size: 14px;
            color: #888;
            text-decoration: underline;
            cursor: pointer;
        }
      #countdown{
      color: red;
      }
    </style>
</head>
<body>
  <h1>Nhập mã xác thực</h1>
    <form action="Verifier" method="get">
        <input type="text" name="otp" placeholder="Mã xác thực (6 chữ số)" maxlength="6">
        <input type="hidden" name ="userId" value="<%=userId%>">
        <input type="submit" value="Xác nhận">
    </form>
    <p class="resend-button" onclick="resendOTP()">Gửi lại mã xác thực</p>
    <div id="countdown"></div>

     <script>
     let timeLeft = 60; // 60 seconds
     const countdown = document.getElementById('countdown');
     const vietnameseText = 'Thời gian còn lại: ';
     function updateCountdown() {
    	    const minutes = Math.floor(timeLeft / 60);
    	    let seconds = timeLeft % 60;
    	    if (timeLeft > 0) {
    	        timeLeft--;
    	    } else {
    	        clearInterval(timer); // Dừng đếm ngược khi hết thời gian
    	        alert("Hết thời gian!"); // Thông báo khi hết thời gian
    	    }
    	}

    	function resendOTP() {
    	    alert("Đã gửi lại mã xác thực!");
    	    timeLeft = 60; // Đặt lại thời gian
    	}

    	updateCountdown();
    	let timer = setInterval(updateCountdown, 1000); // Gọi hàm updateCountdown mỗi giây
    </script>
   
</body>
</html>