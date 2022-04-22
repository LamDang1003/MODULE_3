<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/22/2022
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>View A Student</title>
</head>
<body>
    <h1>View A Student</h1>
    <a href="${pageContext.request.contextPath}/student?action=list">Back to list</a><br>

    <div>
        Name: ${student.id}
    </div>
    <div>
        Age: ${student.name}
    </div>
    <div>
        Birthday:
        <fmt:formatDate value="${student.birthDay}" pattern="yyyy/MM/dd" />
    </div>
    <div>
        Sex:
        <c:if test="${!student.sex}">Female</c:if>
        <c:if test="${student.sex}">Male</c:if>
    </div>
</body>
</html>
