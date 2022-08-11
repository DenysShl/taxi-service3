<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="login">
    <h1>Sing in taxi-service</h1>
<%--    <h4 style="color: red">${errorMsg}</h4>--%>
    <div class="status alert alert-success"
         style="color: red; font-size: 18px; text-align: center">${errorMsg}</div>
    <form method="post" action="${pageContext.request.contextPath}/login"
          class="row g-3 d-flex justify-content-center">
        <label for="login"><i class="fas fa-user"></i> </label>
        <input type="text" name="login" id="login" placeholder="Please enter your login" required><br>
<%--        <br>--%>
        <label for="password"><i class="fas fa-lock"></i></label>
        <input type="password" name="password" id="password" placeholder="Please enter your password" required>
        <button type="submit" value="login">Login</button>
    </form>
    <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</div>
</body>
</html>
