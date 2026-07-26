<%@ page import="com.codegnan.app.javawebapp10.service.UserService" %>
<%@ page import="com.codegnan.app.javawebapp10.service.UserServiceImpl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Update Status</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="passwordUpdateResult.css">
</head>
<body>

<%
    String username = request.getParameter("uname");
    String newLoginPassword = request.getParameter("newpass");

    UserService userService = new UserServiceImpl();

    boolean isNewPasswordUpdated =
            userService.updateLoginPasswordByUsername(username, newLoginPassword);
%>

<div class="container">

<%
    if(isNewPasswordUpdated){
%>

    <div class="card success">

        <div class="icon">&#10003;</div>

        <h1>Password Updated</h1>

        <p>
            Your password has been updated successfully.
            You can now sign in using your new password.
        </p>

        <div class="buttons">

            <a href="userSignInForm.html" class="btn primary">
                Sign In
            </a>

            <a href="index.html" class="btn secondary">
                Home
            </a>

        </div>

    </div>

<%
    }else{
%>

    <div class="card error">

        <div class="icon">✕</div>

        <h1>Update Failed</h1>

        <p>
            Invalid username.
            Please check your username and try again.
        </p>

        <div class="buttons">

            <a href="forgotPasswordForm.html" class="btn danger">
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