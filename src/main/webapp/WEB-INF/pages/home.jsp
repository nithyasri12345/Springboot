<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management - Home</title>
    <link rel="stylesheet" href="<c:url value='/CSS/home_style.css'/>">
</head>
<body>
 <div class="logout-container">
    <a href="/logout" class="logout-btn">Logout</a>
  </div>
    <div class="home-container">
        <h1>Student Management System</h1>
        
        <div class="home-links">
            <a href="/form" class="btn">Add Student</a>
            <a href="/list" class="btn">View Students</a>
        </div>
       
        
    </div>
</body>
</html>