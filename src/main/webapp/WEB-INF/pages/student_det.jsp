<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Form</title>
    
    <link rel="stylesheet" href="<c:url value='/CSS/student_det.css'/>"/>
</head>
<body>
    <div class="form-container">
        <h2>Add Student</h2>
        <form action="/students/save" method="POST">
            <label>Name:</label>
            <input type="text" name="name" />

            <label>DOB:</label>
            <input type="date" name="dob" />

            <label>Department:</label>
            <input type="text" name="dept" />

            <button type="submit">Add</button>
        </form>
    </div>
</body>
</html>
