<%@ page import="com.codegnan.app.javawebapp10.dto.UserDto" %>
<%@ page import="com.codegnan.app.javawebapp10.service.UserService" %>
<%@ page import="com.codegnan.app.javawebapp10.service.UserServiceImpl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Status</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="signInResult.css">
</head>
<body>

<%
    String username = request.getParameter("uname");
    String loginPassword = request.getParameter("lpass");

    UserService userService = new UserServiceImpl();
    UserDto userDto = userService.signIn(username, loginPassword);
%>

<div class="container">

<%
    if(userDto != null){
%>

    <div class="card success">

        <div class="icon">&#10004;</div>

        <h1>Login Successful</h1>

        <h2>
            Welcome,
            <span><%= userDto.getFirstName() %> <%= userDto.getLastName() %></span>
        </h2>

        <p>
            You have successfully signed in to the User Management System.
        </p>

        <div class="buttons">

            <a href="usersList.jsp" class="btn primary">
                View Users
            </a>

            <a href="index.html" class="btn secondary">
                Home
            </a>

        </div>

    </div>

<%
    } else {
%>

    <div class="card error">

        <div class="icon">&#10006;</div>

        <h1>Invalid Login</h1>

        <p>
            The username or password you entered is incorrect.
            Please try again.
        </p>

        <div class="buttons">

            <a href="userSignInForm.html" class="btn danger">
                Try Again
            </a>

            <a href="index.html" class="btn secondary">
                Home
            </a>

        </div>

    </div>

<%
    }
%>

</div>

</body>
</html>