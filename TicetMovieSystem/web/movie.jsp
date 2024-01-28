<%-- 
    Document   : movie
    Created on : Jan 20, 2024, 4:08:47 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/movie1.css"/>

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <c:set  value="${requestScope.id}" var="o"></c:set>
            <div class="video-cover">
                <div class="img-cover">
                    <img src="${o.coverURL}" alt="alt"/>
                <div class="play"><a href="movie?movieID=${o.movieID}&trailerID=${o.movieID}"><i class="fa-solid fa-circle-play"></i></a></div>

            </div>
        </div>
        <c:set var="trailer" value="${requestScope.id1}"></c:set>
        <c:if test="${trailer != null}">
            <div class="video-trailer">
                <div class="overlay" id="overlay"></div>
                <div>${trailer.videoURL}</div>
            </div>
        </c:if>
        <div class="grid">
            <div class="grid-movie">
                <div class="grid-left">
                    <div class="img-movie">
                        <img src="${o.imgURL}" alt="alt"/>
                    </div>
                    <div class="content-movie">
                        <div class="movie-name">
                            <div><h2>${o.title}</h2></div>
                            <div><span>T18</span></div>
                        </div>
                        <div class="time">
                            <div class="duration"><i class="fa-regular fa-clock"></i> ${o.duration} minutes</div>
                            <div class="date"><i class="fa-regular fa-calendar"></i> ${o.year}</div>
                        </div>  
                        <div class="vote">
                            <div class="icon-star"><i class="fa-solid fa-star"></i></div>
                            <div class="rate">9.4 <span>(95 votes)</span></div>
                        </div>
                        <div class="country">
                            <span>Country: </span>
                            <span>${o.country}</span>                            
                        </div>
                        <div class="manufac">
                            <span>Manufacturer: </span>
                            <span>${o.producer}</span>  
                        </div>
                        <div class="genre space">
                            <span>Genre: </span>
                            <span>${o.category.categoryName}</span>
                        </div>
                        <div class="director space">
                            <span>Director: </span>
                            <span>${o.director}</span>
                        </div>
                        <div class="actor space">
                            <span>Actor: </span>
                            <span>${o.actor}</span>
                        </div>
                    </div>
                </div>
                <div class="content-sumarize">
                    <div class="sumarize-text">Contents</div>
                    <p>${o.content}</p>
                </div>
                <div class="days-contain">
                    <div class="day-text">Screening Schedule</div>
                    <c:set var="d" value="${requestScope.listDay}"></c:set>
                    <c:set var="s" value="${requestScope.sID}"></c:set>
                    <c:set var="seat" value="${requestScope.listSeat}"></c:set>
                        <form action="showtime" >
                            <div class="list-day">
                                <div class="day-contain">
                                    
                                <c:forEach items="${d}" var="listDay" varStatus="l">
                                    <c:if test="${l.index==0 and param.dayID==null}" >
                                              <button  class="btn-day active" name="dayID" value="${listDay.dayID}" >
                                        ${listDay.dayName}
                                    </button>
                                    </c:if>
                                    <c:if test="${l.index != 0 or param.dayID != null}">
                                    <button class="btn-day ${listDay.dayID eq param.dayID ? 'active' : ''}" name="dayID" value="${listDay.dayID}" >
                                        ${listDay.dayName}
                                    </button>
                                    </c:if>
                                    
                             
                                    <input name="movieID" type="hidden" value="${listDay.movie.movieID}">
                                </c:forEach> <input name="movieID" type="hidden" value="${param.movieID}">
                            </div>

                            <div>
                                <c:forEach items="${s}" var="listS">
                                    <button class="btn-showtime" name="showtimeID" value="${listS.showtimeID}">
                                        <a href="seat?showtimeID=${listS.showtimeID}">${listS.showtimeStart}</a>
                                    </button>
                                    <input name="dayID" type="hidden" value="${listS.days.dayID}">
                                </c:forEach>
                            </div>

                            <c:forEach items="${seat}" var="t">
                                <h1>${t.seatName}</h1>
                            </c:forEach>
                        </div>

                    </form>
                </div>
            </div>
            <c:set var="l" value="${requestScope.listTop3}"></c:set> 
                <div class="movie-recomend">
                    <div class="recomend-text">CURRENT MOVIES</div>
                <c:forEach begin="0" end="2" items="${l}" var="list">
                    <div class="movie-top3">
                        <img src="${list.coverURL}" alt="alt"/>
                        <h4>${list.title}</h4>
                        <div class="btn-movie3">
                            <button><a href="movie?movieID=${list.movieID}"><i class="fa-solid fa-ticket icon-m"></i>Buy ticket</a></button>
                        </div>                
                    </div>
                </c:forEach>
                <div class="btn-more__contain">
                    <div class="btn-more">
                        <div class="btn-more__link"><a href="#">See also</a><i class="fa-solid fa-chevron-right"></i></div>
                    </div>
                </div>
            </div>           
        </div>
        <jsp:include page="footer.jsp"/>

    </body>
</html>
