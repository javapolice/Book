<%--
  Created by IntelliJ IDEA.
  User: UserK
  Date: 2020-12-12
  Time: 오후 3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title>Title</title>
</head>
<body>
<%
    out.println("#03 : Hello World");
%>
<br>
당신의 아이디는 ${member.id} 입니다. <br>
당신의 이름은 ${member.name} 입니다.
</body>
</html>
