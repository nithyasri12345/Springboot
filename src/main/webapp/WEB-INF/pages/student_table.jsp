<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
     <link rel="stylesheet" href="<c:url value='/CSS/student_table.css'/>"/>
</head>
<body>
    <h2>Student Details</h2>
    <div class="logstyle">
      <a href="/home" class="home-btn">Home</a>
        <a href="/logout" class="logout-btn">Logout</a>
      
    </div>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>DOB</th>
            <th>Department</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="s" items="${students}">
            <tr>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.dob}</td>
                <td>${s.dept}</td>
                <td>
                    <a href="/edit/${s.id}" class="update-btn">Update</a> |
                    <a href="/delete/${s.id}"class="del-btn">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
   
</body>
</html>
