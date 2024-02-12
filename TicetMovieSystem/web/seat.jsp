<%-- 
    Document   : seat
    Created on : Jan 25, 2024, 3:55:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.google.gson.Gson" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/seat.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>

        <jsp:include page="header.jsp"/>
        <div class="overlay">
            <div class="notifi">
                <div class="contain-notifi">
                    <div><i class="fa-solid fa-triangle-exclamation"></i></div>
                    <div>Notify</div>
                    <div>The maximum number of seats set is 8</div>
                    <div><button>Close</button></div>
                </div>
            </div>
        </div>
        <hr class="line">
        <div class="grid">
            <div class="grid-left__showtime">                  
                <div class="list-showtime">
                    <c:if test="${requestScope.ticketCheck != null}">
                        <div class="alert">
                            <div class="alert-icon"><i class="fa-solid fa-circle-check"></i></div>
                            <div class="alert-notifi">Add to cart success</div>
                        </div>
                    </c:if>
                    <c:set var="sID" value="${requestScope.showtimeID}"></c:set>
        <!--         <div>${sID}</div>-->
                    <c:forEach items="${sessionScope.listShowtime}" var="o">
                        <button class="btn-showtime ${o.showtimeID == param.showtimeID ? 'active' : ''}">
                            <a class="${o.showtimeID == param.showtimeID ? 'active' : ''}" href="seat?showtimeID=${o.showtimeID}">${o.showtimeStart}</a>
                        </button>
                    </c:forEach>

                </div>

                <div class="content">

                    <div class="booking-seat">
                        <form id="seatForm" action="ticket" method="post" >

                            <ul class="list-seat">
                                <li class="list-item">
                                    <div class="seat">L</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1', 'L-1', this)",this class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2', 'L-2', this)",this class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3', 'L-3', this)",this class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4', 'L-4', this)",this class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5', 'L-5', this)",this class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6', 'L-6', this)",this class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7', 'L-7', this)",this class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8', 'L-8', this)",this class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9', 'L-9'), this",this class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10', 'L-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11', 'L-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12', 'L-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13', 'L-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14', 'L-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15', 'L-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16', 'L-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16" name="seat" value=""/>
                                    </div>
                                    <div class="seat">L</div>
                                </li>
                                <input type="hidden" id="selectedSeats" name="selectedSeats" value="">
                                <li class="list-item">
                                    <div class="seat">K</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1k', 'K-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2k', 'K-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3k', 'K-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4k', 'K-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5k', 'K-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6k', 'K-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7k', 'K-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8k', 'K-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9k', 'K-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10k', 'K-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11k', 'K-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12k', 'K-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13k', 'K-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14k', 'K-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15k', 'K-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15k" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16k', 'K-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16k" name="seat" value=""/>
                                    </div>
                                    <div class="seat">K</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">J</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1j', 'J-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2j', 'J-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3j', 'J-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4j', 'J-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5j', 'J-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6j', 'J-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7j', 'J-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8j', 'J-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9j', 'J-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10j', 'J-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11j', 'J-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12j', 'J-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13j', 'J-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14j', 'J-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15j', 'J-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15j" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16j', 'J-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16j" name="seat" value=""/>
                                    </div>
                                    <div class="seat">J</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">I</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1i', 'I-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2i', 'I-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3i', 'I-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4i', 'I-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5i', 'I-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6i', 'I-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7i', 'I-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8i', 'I-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9i', 'I-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10i', 'I-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11i', 'I-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12i', 'I-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13i', 'I-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14i', 'I-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15i', 'I-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15i" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16i', 'I-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16i" name="seat" value=""/>
                                    </div>
                                    <div class="seat">I</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">H</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1h', 'H-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2h', 'H-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3h', 'H-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4h', 'H-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5h', 'H-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6h', 'H-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7h', 'H-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8h', 'H-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9h', 'H-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10h', 'H-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11h', 'H-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12h', 'H-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13h', 'H-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14h', 'H-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15h', 'H-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15h" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16h', 'H-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16h" name="seat" value=""/>
                                    </div>
                                    <div class="seat">H</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">G</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1g', 'G-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2g', 'G-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3g', 'G-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4g', 'G-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5g', 'G-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6g', 'G-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7g', 'G-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8g', 'G-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9g', 'G-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10g', 'G-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11g', 'G-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12g', 'G-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13g', 'G-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14g', 'G-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15g', 'G-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15g" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16g', 'G-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16g" name="seat" value=""/>
                                    </div>
                                    <div class="seat">G</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">F</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1f', 'F-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2f', 'F-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3f', 'F-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4f', 'F-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5f', 'F-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6f', 'F-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7f', 'F-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8f', 'F-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9f', 'F-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10f', 'F-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11f', 'F-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12f', 'F-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13f', 'F-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14f', 'F-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15f', 'F-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15f" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16f', 'F-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16f" name="seat" value=""/>
                                    </div>
                                    <div class="seat">F</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">E</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1e', 'E-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2e', 'E-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3e', 'E-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4e', 'E-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5e', 'E-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6e', 'E-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7e', 'E-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8e', 'E-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9e', 'E-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10e', 'E-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11e', 'E-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12e', 'E-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13e', 'E-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14e', 'E-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15e', 'E-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15e" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16e', 'E-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16e" name="seat" value=""/>
                                    </div>
                                    <div class="seat">E</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">D</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1d', 'D-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2d', 'D-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3d', 'D-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4d', 'D-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5d', 'D-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6d', 'D-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7d', 'D-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8d', 'D-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9d', 'D-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10d', 'D-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11d', 'D-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12d', 'D-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13d', 'D-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14d', 'D-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15d', 'D-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15d" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16d', 'D-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16d" name="seat" value=""/>
                                    </div>
                                    <div class="seat">D</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">C</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1c', 'C-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2c', 'C-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3c', 'C-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4c', 'C-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5c', 'C-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6c', 'C-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7c', 'C-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8c', 'C-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9c', 'C-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10c', 'C-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11c', 'C-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12c', 'C-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13c', 'C-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14c', 'C-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15c', 'C-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15c" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16c', 'C-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16c" name="seat" value=""/>
                                    </div>
                                    <div class="seat">C</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">B</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1b', 'B-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2b', 'B-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3b', 'B-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4b', 'B-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5b', 'B-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6b', 'B-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7b', 'B-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8b', 'B-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9b', 'B-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10b', 'B-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11b', 'B-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12b', 'B-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13b', 'B-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14b', 'B-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15b', 'B-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15b" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16b', 'B-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16b" name="seat" value=""/>
                                    </div>
                                    <div class="seat">B</div>
                                </li>
                                <li class="list-item">
                                    <div class="seat">A</div>
                                    <div class="seat-button__contain">
                                        <button type="button" onclick="setAndSubmit('seat1a', 'A-1', this)" class="seat-button">
                                            <span>1</span>
                                        </button>
                                        <input type="hidden" id="seat1a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat2a', 'A-2', this)" class="seat-button">
                                            <span>2</span>
                                        </button>
                                        <input type="hidden" id="seat2a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat3a', 'A-3', this)" class="seat-button">
                                            <span>3</span>
                                        </button>
                                        <input type="hidden" id="seat3a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat4a', 'A-4', this)" class="seat-button">
                                            <span>4</span>
                                        </button>
                                        <input type="hidden" id="seat4a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat5a', 'A-5', this)" class="seat-button">
                                            <span>5</span>
                                        </button>
                                        <input type="hidden" id="seat5a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat6a', 'A-6', this)" class="seat-button">
                                            <span>6</span>
                                        </button>
                                        <input type="hidden" id="seat6a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat7a', 'A-7', this)" class="seat-button">
                                            <span>7</span>
                                        </button>
                                        <input type="hidden" id="seat7a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat8a', 'A-8', this)" class="seat-button">
                                            <span>8</span>
                                        </button>
                                        <input type="hidden" id="seat8a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat9a', 'A-9', this)" class="seat-button">
                                            <span>9</span>
                                        </button>
                                        <input type="hidden" id="seat9a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat10a', 'A-10', this)" class="seat-button">
                                            <span>10</span>
                                        </button>
                                        <input type="hidden" id="seat10a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat11a', 'A-11', this)" class="seat-button">
                                            <span>11</span>
                                        </button>
                                        <input type="hidden" id="seat11a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat12a', 'A-12', this)" class="seat-button">
                                            <span>12</span>
                                        </button>
                                        <input type="hidden" id="seat12a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat13a', 'A-13', this)" class="seat-button">
                                            <span>13</span>
                                        </button>
                                        <input type="hidden" id="seat13a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat14a', 'A-14', this)" class="seat-button">
                                            <span>14</span>
                                        </button>
                                        <input type="hidden" id="seat14a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat15a', 'A-15', this)" class="seat-button">
                                            <span>15</span>
                                        </button>
                                        <input type="hidden" id="seat15a" name="seat" value=""/>
                                        <button type="button" onclick="setAndSubmit('seat16a', 'A-16', this)" class="seat-button">
                                            <span>16</span>
                                        </button>
                                        <input type="hidden" id="seat16a" name="seat" value=""/>
                                    </div>
                                    <div class="seat">A</div>
                                </li>
                            </ul>
                            <button class="btn-order" type="submit" onclick="submitForm()"><span>Order</span></button>
                        </form>
                    </div>
                    <div class="view">Screen</div>
                    <div class="pivot"></div>
                    <div class="seat-note">
                        <div class="seat-note__nofi">

                            <div class="seat-booked">
                                <div><button class="seat-booked__button"></button></div>
                                <div class="note">Booked</div>
                            </div>
                            <div class="seat-choose">
                                <div><button class="seat-choosing__button"></button></div>
                                <div class="note">Seat choosing</div>
                            </div>
                        </div>
                        <div class="seat-class">
                            <div class="seat-vip">
                                <div><button class="seat-vip__button"></button></div>
                                <div class="note">Seat VIP</div>
                            </div>
                            <div class="seat-single">
                                <div><button class="seat-single__button"></button></div>
                                <div class="note">Seat single</div>
                            </div>
                            <div class="seat-double">
                                <div><button class="seat-double__button"></button></div>
                                <div class="note">Seat double</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="grid-right__showtime">
                <div class="movie-bill">
                    <c:set var="movie" value="${sessionScope.movie}"></c:set>
                    <c:set var="day" value="${sessionScope.day}"></c:set>
                    <c:set var="showtime" value="${sessionScope.showtime}"></c:set>
                    <c:set var="cinemas" value="${requestScope.cinema}"></c:set>
                        <div class="img-title">
                            <div class="img-bill">
                                <img src="${movie.imgURL}" alt="alt"/>
                        </div>
                        <div class="title-bill">
                            <div>${movie.title}</div>
                            <div>2D Phụ Đề - <span>T18</span></div>
                        </div>
                    </div>
                    <div class="cinema">${cinemas.cinemaName}</div>
                    <div class="time-bill">
                        Rate: <span>${showtime.showtimeStart}</span> - <span>${day.dayName}</span></div>
                </div>
                <div class="bill-processing">
                    <div class="dash">--------------------------------------------------------------------------------</div>
                    <div class="total-seat__bill">
                        <div><span></span>Single seats</div>
                        <div class="total-order"></div>
                    </div>
                    <div class="seat-name">Seats: <span></span></div>
                </div>

                <div class="dash">--------------------------------------------------------------------------------</div>
                <div class="total-bill">
                    <div class="text">Total</div>
                    <div class="total">0$</div>
                </div>
            </div>
        </div>
        <c:forEach items="${requestScope.arr}" var="o">
            <h1>${o}</h1>

        </c:forEach>     
        <jsp:include page="footer.jsp" />
        <script>
            <%
            Gson gson = new Gson();
            String json = gson.toJson(request.getAttribute("seatsName"));
            request.setAttribute("json", json);
            %>
            document.addEventListener("DOMContentLoaded", function () {

                var bookedSeats = JSON.parse('${json}');
                let total = 0;
                var seatButtons = document.querySelectorAll('.seat-button');

                seatButtons.forEach(function (button, index) {
                    var seatValue = button.getAttribute('onclick').split("'")[3];
                    var isBooked = bookedSeats.includes(seatValue);


                    if (isBooked) {
                        button.classList.add('booked');
                    }

                    button.addEventListener('click', function () {
                        var isBooked = this.classList.contains('booked');
                        var isSelected = this.classList.contains('selected');

                        if (!isBooked) {
                            if (!isSelected && total < 8) {
                                this.classList.add('selected');
                                total++;
                                console.log(total);
                            } else if (isSelected) {
                                this.classList.remove('selected');
                                total--;
                            }
                        }
                        console.log(total);
                    });
                });
            });

            document.addEventListener("DOMContentLoaded", function () {
                let seatButtons = document.querySelectorAll('.seat-button');
                let count = document.querySelector('.total-seat__bill span');
                let totalOrder = document.querySelector('.total-order');
                let seatName = document.querySelector('.seat-name span');
                let bill = document.querySelector('.bill-processing');
                let totalCart = document.querySelector('.total');
                let seatPrice = 0;
                let selectedSeats = [];
                let total = 0;
//                let overplay = document.querySelector('.overplay');
//                let overplayBtn = document.querySelector('.contain-notifi div button');
                seatButtons.forEach(function (item) {
                    let check = false;
                    item.addEventListener('click', function () {
                        let seatValue = item.getAttribute('onclick').split("'")[3];
                        let selected = this.classList.contains('selected');
                        let booked = this.classList.contains('booked');
                        if (!check && !booked) {
                            total++;
                            if (total <= 8) {
                                seatPrice += 2;
                                selectedSeats.push(seatValue);
                                check = true;
                            }

                            bill.style.display = 'block';
                        } else {
                            if (total <= 8 && !booked) {
                                total--;
                                seatPrice -= 2;
                                selectedSeats.pop(seatValue);
                                check = false;
                            }

                        }
                        if (total < 1) {
                            bill.style.display = 'none';
                        }
                        if (total > 8) {
                            total = 8;
                            var overlay = document.querySelector('.overlay');
                            overlay.classList.add('show-overlay');
                            var overlayBtn = document.querySelector('.overlay button');
                            overlayBtn.addEventListener('click', () => {
                                overlay.classList.remove('show-overlay');
                            });
                        }

                        console.log(seatValue);
                        count.innerHTML = total + " ";
                        totalOrder.innerHTML = seatPrice + "$";
                        seatName.innerHTML = selectedSeats.join(", ");
                        totalCart.innerHTML = seatPrice + "$";
                    });
                });
            });
            function setAndSubmit(seatId, seatValue, buttonElement) {

                console.log(buttonElement);
                let check = document.getElementById(seatId).value;
                let booked = buttonElement.classList.contains('booked');
                if (booked === true) {
                    document.getElementById(seatId).value = "";
                    console.log(document.getElementById(seatId).value);
                } else if (check) {
                    document.getElementById(seatId).value = "";
                } else {
                    document.getElementById(seatId).value = seatValue;
                }
            }

            function submitAllSeats() {
                document.getElementById('seatForm').submit();
            }
            $(document).ready(function () {
                if (window.location.pathname === "/main/ticket") {
                    $(".btn-order").click(function () {
                        swal("Success Message Title", "Well done, you pressed a button", "success");
                    });
                }
            });





        </script>
    </body>
</html>
