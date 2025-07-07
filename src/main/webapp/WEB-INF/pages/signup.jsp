<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="<c:url value='/CSS/signup_style.css'/>">
</head>
<body>
    <div class="auth-container">
        <h2>Sign Up</h2>
        <form action="/signup" method="post">
            <label>Username:</label>
            <input type="text" name="username" required><br/>
            <label>Password:</label>
            <input type="password" name="password" required><br/>
            <button type="submit">Register</button>
        </form>
        <c:if test="${not empty error}">
            <p style="color:red;">${error}</p>
        </c:if>
        <p>Already have an account? <a href="/login">Login</a></p>
    </div>
</body>
</html>