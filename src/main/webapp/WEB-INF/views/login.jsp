<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<div class="table_dark">
    <h1>Login page</h1>
    <h4 style="color: red">${errorMsg}</h4>
    <form method="post" action="${pageContext.request.contextPath}/login"
          class="row g-3 d-flex justify-content-center">
        <label>Please enter your login: </label>
        <input type="text" name="login" required><br>
        <br>
        <label>Please enter your password</label>
        <input type="password" name="password" required>
        <button type="submit">Login</button>
    </form>
    <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</div>
</body>
</html>
