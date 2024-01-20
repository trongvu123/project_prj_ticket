<%-- 
    Document   : signup
    Created on : Jan 20, 2024, 2:29:39 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login V18</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"/>
        <link rel="stylesheet" href="./css/signup.css"/>
    </head>
    <body >

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 col-md-5 form-section">
                    <div class="login-wrapper">
                        <h2 class="login-title">Sign in</h2>
                        <form action="#!">
                            <div class="form-group">
                                <label for="phone" class="sr-only">Phone</label>
                                <input type="text" name="phone" id="phone" class="form-control" placeholder="Phone">
                            </div>
                            <div class="form-group">
                                <label for="name" class="sr-only">Full name</label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="Full name">
                            </div>
                            <div class="form-group">
                                <label for="email" class="sr-only">Email</label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label for="dob" class="sr-only">Date of birth</label>
                                <input type="date" name="dob" id="dob" class="form-control" placeholder="Date of birth">
                            </div>
                            <div class="form-group">
                                <label for="password" class="sr-only">Password</label>
                                <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                            </div>
                            <div class="form-group d-flex">
                                <label class="sr-only">Gender</label>
                                <div class="form-check">
                                    <input type="radio" name="gender" id="male" class="form-check-input" value="male">
                                    <label for="male" class="form-check-label">Male</label>
                                </div>
                                <div class="form-check ml-5">
                                    <input type="radio" name="gender" id="female" class="form-check-input" value="female">
                                    <label for="female" class="form-check-label">Female</label>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mb-5">
                                <input name="signup" id="signup" class="btn login-btn" type="submit" value="signup">
                                <a href="#!" class="forgot-password-link">Password?</a>
                            </div>
                        </form>           
                        <p class="login-wrapper-footer-text">You have already account? <a href="login.jsp" class="text-reset">Login here</a></p>
                    </div>
                </div>
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
            </div>
        </div>

    </body>
</html>
