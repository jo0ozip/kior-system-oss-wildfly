<%@ page contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");

    Object loginUser = session.getAttribute("loginUser");
    String status = (loginUser != null) ? "OK" : "INVALID";

    response.getWriter().write("{\"status\":\"" + status + "\"}");
%>
