<%--
  Created by IntelliJ IDEA.
  User: UserK
  Date: 2020-12-22
  Time: 오후 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>

내용보기 <br>
<hr>
작성자 : ${dto.writer} <br>
제목 : ${dto.title} <br>
내용 : ${dto.content}
<hr>

<br>
<a href="list">목록보기</a>
</body>
</html>
