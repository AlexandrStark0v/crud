<%--
  Created by IntelliJ IDEA.
  User: AlexStar
  Date: 24.05.2025
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
  <title>User List</title>
</head>
<body>

<h2>All Users</h2>

<table border="1">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Actions</th>
  </tr>
  <c:forEach items="${users}" var="user">
    <tr>
      <td>${user.id}</td>
      <td>${user.name}</td>
      <td>${user.email}</td>
      <td>
        <!-- UPDATE form -->
        <form action="update" method="post">
          <input type="hidden" name="id" value="${user.id}" />
          <input type="text" name="name" value="${user.name}" required />
          <input type="email" name="email" value="${user.email}" required />
          <button type="submit">Update</button>
        </form>

        <!-- DELETE form -->
        <form action="delete" method="post">
          <input type="hidden" name="id" value="${user.id}" />
          <button type="submit">Delete</button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>

<h2>Add New User</h2>
<form action="add" method="post">
  <input type="text" name="name" placeholder="Name" required />
  <input type="email" name="email" placeholder="Email" required />
  <button type="submit">Add User</button>
</form>

</body>
</html>