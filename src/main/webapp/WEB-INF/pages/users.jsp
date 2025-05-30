<%--
  Created by IntelliJ IDEA.
  User: AlexStar
  Date: 24.05.2025
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Список пользователей</title>
</head>
<body>

<h1>Список пользователей</h1>

<table border="1" cellpadding="5" cellspacing="0">
  <tr>
    <th>ID</th>
    <th>Имя</th>
    <th>Почта</th>
    <th>Действия</th>
  </tr>

  <c:forEach var="user" items="${users}">
    <tr>
      <td>${user.id}</td>
      <td>${user.name}</td>
      <td>${user.email}</td>
      <td>
        <!-- Форма удаления -->
        <form action="<c:url value='/delete' />" method="post" style="display:inline-block;">
          <input type="hidden" name="id" value="${user.id}" />
          <button type="submit">Удалить</button>
        </form>

        <!-- Форма редактирования -->
        <form action="<c:url value='/update' />" method="post" style="display:inline-block;">
          <input type="hidden" name="id" value="${user.id}"/>
          <input type="text" name="name" value="${user.name}" required />
          <input type="email" name="email" value="${user.email}" required />
          <button type="submit">Изменить</button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>

<hr/>

<h2>Добавить нового пользователя</h2>
<form action="<c:url value='/add' />" method="post">
  <input type="text" name="name" placeholder="Имя" required />
  <input type="email" name="email" placeholder="Почта" required />
  <button type="submit">Добавить</button>
</form>

</body>
</html>