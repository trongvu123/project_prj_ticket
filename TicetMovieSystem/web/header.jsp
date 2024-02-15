<%-- 
    Document   : header
    Created on : Dec 24, 2023, 12:37:01 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="entity.User" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link rel="stylesheet" href="./css/StyleHome.css"/>
        <link rel="stylesheet" href="./css/base1.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.4/gsap.min.js"></script>
    </head>
    <body>
        <jsp:useBean id="ticketDAO" class="dao.TicketDAO" scope="page"/>
        <div class="header-contain">
            <div class="header-content">
                <div class="header-logo">
                    <a href="home?status=show">
                        <img src="./img/logo.png" alt="alt"/>
                    </a>

                </div>
                <div class="header-info">
                    <div class="logo-ticket">
                        <i class="fa-sharp fa-solid fa-ticket-simple"></i>
                        <div class="buy"><p>Buy Ticket</p></div>
                    </div>
                    <div class="movie-dropdown">
                        <div class="movie-drop">
                            <a>Movie</a>
                        </div>
                        <div class="arrow-down">
                            <i class="fa-solid fa-chevron-down"></i>
                        </div>
                    </div>
                    <div class="corner-dropdown">
                        <div class="corner-drop">
                            <a>Cinema corner</a>
                        </div>
                        <div class="arrow-down">
                            <i class="fa-solid fa-chevron-down"></i>
                        </div>
                        <div class="corner-content">
                            <div><a href="#">Movie genre</a></div>
                            <div><a href="#">Actor</a></div>
                            <div><a href="#">Director</a></div>
                            <div><a href="#">Movie comment</a></div>
                            <div><a href="#">Movie Blog</a></div>

                        </div>
                    </div>
                    <div class="event-dropdown">
                        <div class="event-drop">
                            <a>Event</a>
                        </div>
                        <div class="arrow-down">
                            <i class="fa-solid fa-chevron-down"></i>
                        </div>
                        <div class="event-content">
                            <div><a href="#">Special offers</a></div>
                            <div><a href="#">Good movie</a></div>
                        </div>
                    </div>
                </div>
                <div class="log_and_search">
                    <div class="search-logo">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </div>
                    <c:set var="u" value="${sessionScope.user}"></c:set>
                    <c:if test="${u eq null}">
                        <div class="login"><a href="login.jsp">Login</a></div>
                    </c:if>
                    <c:if test="${u != null}">
                        <div class="user">
                            <div class="user-img"><img src="./img/avt.png" alt="alt"/></div>
                            <div class="user-name">${u.fullName}</div>
                            <div class="user-content">
                                <div><i class="fa-solid fa-user"></i><a href="#">Account</a></div>
                                <div><i class="fa-solid fa-list-ol"></i><a href="history">History</a></div>
                                <div><i class="fa-solid fa-cart-shopping"></i>
                                    <%  
              User user = (User) session.getAttribute("user");
              int count = ticketDAO.countTicket(user.getPhone());
             
                                        
              if(count > 0) {
                                    %>
                                    <span>
                                        <%= count %>
                                    </span>
                                    <%  
                                        }
                                    %>
                                    <a href="cart">Cart</a></div>
                                <div><i class="fa-solid fa-right-from-bracket"></i><a href="logout">Logout</a></div>


                            </div>
                        </div>
                    </c:if>

                </div>
            </div>
        </div>
        <script src="./js/main1.js"></script>
    </body>
</html>
