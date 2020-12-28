<%--
  Created by IntelliJ IDEA.
  User: UserK
  Date: 2020-12-28
  Time: 오후 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
  </head>
  <body>
    <%
        out.println("MyBatis : Hello World");
    %>
    <br>

    <c:forEach var="dto" items="${users}">
        ${dto.id} / ${dto.name}<br>
    </c:forEach>
  </body>
</html>
