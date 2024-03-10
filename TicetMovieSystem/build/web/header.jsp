<%-- 
    Document   : header
    Created on : Dec 24, 2023, 12:37:01 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="entity.User" %>
<%@ page import="entity.Movie" %>
<%@ page import="dao.MovieDAO"%>
<%@ page import="java.util.ArrayList" %>
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
                            <div class="m-contain">
                                <div class="movie-hover">
                                    <div class="movie-hover_show">

                                        <div class="4-movie_show">
                                            <div class="text-hover_show">Show</div>
                                            <div class="m_top3-show">
                                                <%
                                        MovieDAO mdao = new MovieDAO();
                                        ArrayList<Movie> list = new ArrayList<>();
                                        list=mdao.getMovieTop8ByStatus("show");
                                        for (int i = 0; i < 4; i++) {
                                        Movie movie = list.get(i);
                                                %>
                                                <div class="movie-item_show">
                                                    <div class="img-show"><img src="<%= movie.getImgURL() %>" alt="alt"/></div>
                                                    <div class="title-show"><%= movie.getTitle() %></div>
                                                    <div class="btnz"><button><a href="movie?movieID=<%= movie.getMovieID() %>"><i class="fa-solid fa-ticket icon-m"></i>Buy ticket</a></button></div>
                                                </div>
                                                <%
                                                }  
                                                %>    

                                            </div>
                                            <div class="text-hover_show">Show</div>
                                            <div class="m_top3-soon">
                                                <%
                                        
                                        ArrayList<Movie> list2 = new ArrayList<>();
                                        list2=mdao.getMovieTop8ByStatus("soon");
                                        for (int i = 0; i < 4; i++) {
                                        Movie movie2 = list2.get(i);
                                                %>
                                                <div class="movie-item_soon">
                                                    <div class="img-soon"><img src="<%= movie2.getImgURL() %>" alt="alt"/></div>
                                                    <div class="title-soon"><%= movie2.getTitle() %></div>
                                                    <div class="btnzx"><button><a href="movie?movieID=<%= movie2.getMovieID() %>"><i class="fa-solid fa-ticket icon-m"></i>Buy ticket</a></button></div>

                                                </div>
                                                <%
                                                }  
                                                %>    

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                        <div class="login"><a href="login">Login</a></div>
                    </c:if>
                    <c:if test="${u != null}">
                        <div class="user">
                            <div class="user-img"><img src="./img/avt.png" alt="alt"/></div>
                            <div class="user-name">${u.fullName}</div>
                            <div class="user-content">
                                <div><i class="fa-solid fa-user"></i><a href="account">Account</a></div>
                                <div><i class="fa-solid fa-list-ol"></i><a href="history">History</a></div>
                                        <c:if test="${sessionScope.user.role==0}">
                                    <div><i class="fa-solid fa-bars-progress"></i><a href="manage">Manager</a></div>
                                        </c:if>
                                        <c:choose>
                                            <c:when test="${sessionScope.user.role==0}">
                                        <div><i class="fa-solid fa-chart-simple"></i><a href="statistics">Statistics</a></div>
                                            </c:when>
                                            <c:otherwise>
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
                                        </c:otherwise>
                                    </c:choose>

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
