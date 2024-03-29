<%-- 
    Document   : login
    Created on : Jan 20, 2024, 12:53:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"/>
        <link rel="stylesheet" href="./css/login.css"/>
    </head>
    <body >

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 col-md-7 intro-section">
                    <div class="brand-wrapper">
                        <h1><a href="https://stackfindover.com/">Logo</a></h1>
                    </div>
                    <div class="intro-content-wrapper">
                        <h1 class="intro-title">Welcome to website !</h1>
                        <p class="intro-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna</p>
                        <a href="#!" class="btn btn-read-more">Read more</a>
                    </div>
                    <div class="intro-section-footer">
                        <na class="footer-nav">
                            <a href="#!">Facebook</a>
                            <a href="#!">Twitter</a>
                            <a href="#!">Gmail</a>
                        </na>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 form-section">
                    <div class="login-wrapper">
                        <h2 class="login-title">Sign up</h2>
                        <form action="login" method="post">
                            <c:if test="${requestScope.msErr != null}">
                                <div class="alert alert-warning" role="alert">
                                ${requestScope.msErr}
                            </div>
                            </c:if>
                            
                            <div class="form-group">
                                <label for="email" class="sr-only">Phone</label>
                                <input type="phone" name="phone" id="phone" class="form-control" placeholder="Phone">
                            </div>
                            <div class="form-group mb-3">
                                <label for="password" class="sr-only">Password</label>
                                <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                            </div>
                            <div class="d-flex justify-content-between align-items-center mb-5">
                                <input name="login" id="login" class="btn login-btn" type="submit" value="Login">
                                <a href="#!" class="forgot-password-link">Password?</a>
                            </div>
                        </form>           
                        <p class="login-wrapper-footer-text">Need an account? <a href="signup" class="text-reset">Signup here</a></p>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
