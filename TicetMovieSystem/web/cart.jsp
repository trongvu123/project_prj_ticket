<%-- 
    Document   : cart
    Created on : Feb 3, 2024, 11:33:05 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/account.css"/>
        <link rel="stylesheet" href="./css/cart.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="overlay">
            <div class="notifi">
                <div class="contain-notifi">
                    <div><i class="fa-solid fa-cart-shopping"></i></div>
                    <div>Notify</div>
                    <div>Are you sure buy</div>
                    <div><button>Buy</button>
                        <button>Cancel</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay-1">
            <div class="notifi-1">
                <div class="contain-notifi-1">
                    <div><i class="fa-solid fa-trash"></i></div>
                    <div>Notify</div>
                    <div>Are you sure delete ?</div>
                    <div><button>Delete</button>
                        <button>Cancel</button>
                    </div>
                </div>
            </div>
        </div>
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
                        <div>HOTLINE hỗ trợ: 0123456789</div>
                        <div>Email: hotro@galaxystudio.vn</div>
                    </div>
                </div>
            </div>
            <div class="grid-right__acc">
                <div class="header-list">
                    <ul class="list-service">
                        <li class="item-service"><a href="#">Transaction history</a></li>
                        <li class="item-service"><a href="#">Personal information</a></li>
                        <li class="item-service"><a class="active" href="cart.jsp">Cart</a></li>
                    </ul>
                </div>
                <c:set var="o" value="${requestScope.list}"></c:set>

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
                                    <th>Action</th>
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
                                    <td>
                                        <a href="#" onclick="buy('${l.ticketID}')" title="Buy"><i class="fa-solid fa-cart-shopping"></i></a>
                                        <a href="#" onclick="deleteTicket('${l.ticketID}')" title="Delete"><i class="fa-solid fa-trash"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>      
                </div>
            </div>
        </div>
        <script>
            function buy(id) {
                let overlay = document.querySelector('.overlay');
                overlay.classList.add('show-overlay');
                let btnBuy = document.querySelector('.overlay button:first-child');
                let btnDelete = document.querySelector('.overlay button:last-child');
                btnBuy.addEventListener('click', () => {
                    window.location = "history?id=" + id;
                });
                btnDelete.addEventListener('click', () => {
                    overlay.classList.remove('show-overlay');
                });
            }
            function deleteTicket(id) {
                let overlay = document.querySelector('.overlay-1');
                overlay.classList.add('show-overlay');
                let btnBuy = document.querySelector('.overlay-1 button:first-child');
                let btnDelete = document.querySelector('.overlay-1 button:last-child');
                btnBuy.addEventListener('click', () => {
                    window.location = "history?id=" + id;
                });
                btnDelete.addEventListener('click', () => {
                    overlay.classList.remove('show-overlay');
                });
            }
        </script>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
