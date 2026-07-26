<%@ page import="com.codegnan.app.javawebapp10.dto.CredentialsDto" %>
<%@ page import="com.codegnan.app.javawebapp10.dto.UserDto" %>
<%@ page import="com.codegnan.app.javawebapp10.service.UserService" %>
<%@ page import="com.codegnan.app.javawebapp10.service.UserServiceImpl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

     <title>Registration Status</title>

        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="signUpResult.css">

</head>
<body>
<%
    String firstName = request.getParameter("fname");
    String lastName = request.getParameter("lname");
    String username = request.getParameter("uname");
    String loginPassword = request.getParameter("lpass");

    CredentialsDto credentialsDto = new CredentialsDto();
    credentialsDto.setUsername(username);
    credentialsDto.setLoginPassword(loginPassword);
    UserDto userDto = new UserDto();
    userDto.setFirstName(firstName);
    userDto.setLastName(lastName);

    UserService userService = new UserServiceImpl();
    boolean isSignUpSuccessful = userService.signUp(userDto, credentialsDto);
    if (isSignUpSuccessful) {
%>
<h1>Congratulations!!! Sign Up Successful.</h1>
<%
    } else {
%>
<h1>Apologies!!!Please try again later</h1>
<%
    }
%>
</body>
</html>