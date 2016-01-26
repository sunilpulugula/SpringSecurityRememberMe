<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>${title}</title>
        <style>
            body {
            background: url('http://i.imgur.com/Eor57Ae.jpg') no-repeat fixed center center;
            background-size: cover;
            font-family: Montserrat;
            }

            .login-block {
            width: 320px;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            border-top: 5px solid #ff656c;
            margin: 0 auto;
            }

            .login-block h1 {
            text-align: center;
            color: #000;
            font-size: 18px;
            text-transform: uppercase;
            margin-top: 0;
            margin-bottom: 20px;
            }

            .login-block input {
            width: 100%;
            height: 42px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 20px;
            font-size: 14px;
            font-family: Montserrat;
            padding: 0 20px 0 50px;
            outline: none;
            }

            .login-block input#username {
            background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px top no-repeat;
            background-size: 16px 80px;
            }

            .login-block input#username:focus {
            background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px bottom no-repeat;
            background-size: 16px 80px;
            }

            .login-block input#password {
            background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px top no-repeat;
            background-size: 16px 80px;
            }

            .login-block input#password:focus {
            background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px bottom no-repeat;
            background-size: 16px 80px;
            }

            .login-block input#remember-me {
                        background-size: 16px 80px;
                        }

            .login-block input:active, .login-block input:focus {
            border: 1px solid #ff656c;
            }

            .login-block button {
            width: 100%;
            height: 40px;
            background: #ff656c;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #e15960;
            color: #fff;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
            font-family: Montserrat;
            outline: none;
            cursor: pointer;
            }

            .login-block button:hover {
            background: #ff7b81;
            }

            input[type="checkbox"] {
            margin-top: -16px;
            height: 15px;
            margin-left: -40px;
            }

        </style>
</head>
<body>
<br/><br/><br/><br/><br/><br/><br/>
<div class="login-block">
    <form name='loginForm'
        		  action="<c:url value='../j_spring_security_check' />" method='POST'>
        <h1>Login</h1>
        <input type="text" id="username" name="username" placeholder="Username"  />
        <input type="password" id="password" name="password" placeholder="Password" />
        Remember Me: <input type="checkbox" style="border:2px dotted #00f;display:block;background:#ff0000;" name="remember-me" placeholder="remember-me"/></td>
        <button>Submit</button>

    </form>


</div>
</body>
</html>