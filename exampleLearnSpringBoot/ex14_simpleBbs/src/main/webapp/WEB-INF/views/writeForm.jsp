<%--
  Created by IntelliJ IDEA.
  User: UserK
  Date: 2020-12-22
  Time: 오후 11:16
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
<br>

<table width="500" cellspacing="0" cellpadding="0" border="1">
    <form action="write" method="post">
        <tr>
            <td>작성자</td>
            <td><input type="text" name="writer" size="100"></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title" size="100"></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><input type="text" name="content" size="100"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="입력">
                &nbsp;&nbsp; <a href="list">목록보기</a>
            </td>
        </tr>
    </form>
</table>
</body>
</html>
