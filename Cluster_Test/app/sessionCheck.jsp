<%
    Object loginUser = session.getAttribute("loginUser");

    if (loginUser == null) {
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>세션 종료 안내</title>
    <script type="text/javascript">
        alert("현재 세션이 종료되었습니다.\n문의: ko-o.tistory.com");
        window.location.href = "login.jsp";
    </script>
</head>
<body></body>
</html>
<%
        return;
    }
%>
