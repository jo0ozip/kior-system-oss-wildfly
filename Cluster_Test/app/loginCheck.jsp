<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // 테스트용 계정 정보
    String validUser = "testuser";
    String validPass = "1234";

    if (validUser.equals(username) && validPass.equals(password)) {
        session.setAttribute("loginUser", username);
        response.sendRedirect("main.jsp");
    } else {
        response.sendRedirect("login.jsp?error=1");
    }
%>
