<%-- 
    Document   : history
    Created on : Feb 6, 2024, 7:57:29 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>History Page</title>
        <link rel="stylesheet" href="./css/history.css"/>
        <link rel="stylesheet" href="./css/account.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="grid-acc">
            <div class="grid-left__acc">
                <div class="acc-depense">
                    <div class="acc-depense__header">
                        <div class="acc-img">
                            <img src="./img/avt.png" alt="alt"/>
                        </div>
                        <div class="acc-name">${sessionScope.us.fullName}</div>
                    </div>
                    <div class="hotline">
                        <div>HOTLINE support: 0123456789</div>
                        <div>Email: hotro@galaxystudio.vn</div>
                    </div>
                </div>
            </div>
            <div class="grid-right__acc">
                <div class="header-list">
                    <ul class="list-service">
                        <li class="item-service"><a class="active" href="#">Transaction history</a></li>
                        <li class="item-service"><a href="account">Personal information</a></li>
                        <li class="item-service"><a href="cart" >Cart</a></li>
                    </ul>
                </div>
                <c:set var="o" value="${requestScope.list}"></c:set>
                <c:if test="${empty o}">
                    <h2 class="no-ticket">No tickets have been booked yet</h2>
                </c:if>
                     <c:if test="${not empty o}">
                    <div class="cart">
                        <table class="table-cart">
                            <thead>
                                <tr>
                                    <th>Movie</th>
                                    <th>Show date</th>
                                    <th>Show time</th>
                                    <th>Seat selected</th>
                                    <th>Cinema</th>
                                    <th>Price</th>
                                    <th>Phone number</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${o}" var="l">
                                <tr>

                                    <td>
                                        <div class="movie-cart">
                                            <div>
                                                ${l.movie.title}
                                            </div>
                                            <div>
                                                <img src="${l.movie.imgURL}" alt="alt"/>
                                            </div>
                                        </div>
                                    </td>
                                    <td>${l.days.dayName}</td>
                                    <td>${l.showtimes.showtimeStart}</td>
                                    <td>${l.seats.seatName}</td>
                                    <td>${l.cinema.cinemaName}</td>
                                    <td>${l.price}</td>
                                    <td>${l.user.phone}</td>                                 

                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>      
                </div>
                </c:if>
                
            </div>
        </div>
                <jsp:include page="footer.jsp"/>
    </body>
</html>
