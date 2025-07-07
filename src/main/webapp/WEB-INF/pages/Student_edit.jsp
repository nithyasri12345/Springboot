<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
     <link rel="stylesheet" href="<c:url value='/CSS/student_det.css'/>"/>
</head>
<body>
   <div class="form-container">
    <h2>Edit Student</h2>
    <form action="/update/${student.id}" method="POST">
        <label>Name:</label>
        <input type="text" name="name" value="${student.name}" required /><br/>

        <label>DOB:</label>
        <input type="date" name="dob" value="${student.dob}" required /><br/>

        <label>Department:</label>
        <input type="text" name="dept" value="${student.dept}" required /><br/>

        <button type="submit">Update</button>
    </form>
    </div>
</body>
</html>
