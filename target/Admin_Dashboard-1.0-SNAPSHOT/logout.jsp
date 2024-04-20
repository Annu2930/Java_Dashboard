<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*" %>
<%
    HttpSession sessionToInvalidate = request.getSession(false);
    if (sessionToInvalidate != null) {
        sessionToInvalidate.invalidate(); // Invalidate session to log out
    }
    response.sendRedirect("newjsp.jsp"); // Redirect to login page after logout
%>
