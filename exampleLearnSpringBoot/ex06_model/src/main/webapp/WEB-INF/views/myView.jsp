<%--
  Created by IntelliJ IDEA.
  User: PC2011-09
  Date: 2020-12-10
  Time: 오후 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<%
    out.println("Model(Sub) : Hello World");
%>
<br>

${lists}

<br>
<br>

<c:forEach var="mylist" items="${lists}">
    ${mylist} <br>
</c:forEach>

<br>
<br>
당신의 이름은 ${name} 입니다.

</body>
</html>
