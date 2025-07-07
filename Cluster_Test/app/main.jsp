<%@ include file="sessionCheck.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e9f0f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .main-box {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            text-align: center;
        }
        .main-box h2 {
            color: #333;
        }
        .main-box p {
            color: #666;
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

	<div class="main-box">
    <h2>Welcome, <%= session.getAttribute("loginUser") %>! 👋</h2>
    <p>You are logged in successfully.</p>
    <button onclick="checkSession()">세션 상태 확인</button>
</div>

<script>
    function checkSession() {
        fetch('sessionCheckAjax.jsp')
            .then(response => {
                if (!response.ok) {
                    throw new Error("HTTP error " + response.status);
                }
                return response.json();
            })
            .then(data => {
                if (data.status === "INVALID") {
                    alert("중복 로그인 또는 세션 만료로 인해 로그아웃되었습니다.");
                    window.location.href = "login.jsp";
                } else {
                    alert("세션이 정상적으로 유지되고 있습니다.");
                }
            })
            .catch(err => {
                alert("세션 확인 중 오류가 발생했습니다.");
                console.error("세션 확인 실패:", err);
            });
    }
</script>

</body>
</html>
