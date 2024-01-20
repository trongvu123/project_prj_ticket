<%-- 
    Document   : home
    Created on : Dec 25, 2023, 8:21:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link type="text/css" rel="stylesheet" href="./css/home1.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    </head>
    <body>
        <jsp:include page="slider.jsp"/>
        <!-- Mua ve nhanh -->
        
        <div class="choose-bar">
            <div class="chosse-bar__content">
                <div class="circle1"><span>1</span></div>
                <div class="choose-bar__select-movie">
                    <div class="sel">
                        <select class="movie-select">
                            <option value="1">Movie 1</option>
                            <option value="2">Movie 2</option>
                            <option value="3">Movie 3</option>
                        </select>
                    </div>


                    <div class="arrow-movie"><i class="fa-solid fa-chevron-down"></i></div>
                </div>
                <div class="circle2"><span>2</span></div>
                <div class="choose-bar__select-day">
                    <select class="day-select">
                        <option value="1">Movie 1</option>
                        <option value="2">Movie 2</option>
                        <option value="3">Movie 3</option>
                    </select>
                    <div class="arrow-day"><i class="fa-solid fa-chevron-down"></i></div>
                </div>
                <div class="circle3"><span>3</span></div>
                <div class="choose-bar__select-showtime">
                    <select class="showtime-select">
                        <option value="1">Movie 1</option>
                        <option value="2">Movie 2</option>
                        <option value="3">Movie 3</option>
                    </select>
                    <div class="arrow-showtime"><i class="fa-solid fa-chevron-down"></i></div>
                </div>
                <div class="circle4"><span>4</span></div>
                <div class="choose-bar__select-cinema">
                    <select class="cinema-select">                 
                        <option class="opt" value="1">Movie 1</option>
                        <option class="opt" value="2">Movie 2</option>
                        <option class="opt" value="3">Movie 3</option>
                    </select>
                    <div class="arrow-cinema"><i class="fa-solid fa-chevron-down"></i></div>
                </div>
                <div class="choose-bar__buy">Buy tickets quickly</div>

            </div>
        </div>
        <div class="grid">
            <div class="status-contain">
                <div class="content">
                    <ul class="list-content">
                        <c:set var="s" value="${param.status}"></c:set>
                        <c:if test="${empty s}">
                            <c:set var="s" value="show"></c:set>
                        </c:if>
                        <li class="item-m">MOVIE</li>

                        <li class="item"><a class="${s == 'show' ? 'active' : ''}" class="link-m" href="home?status=show">Now showing</a></li>
                        <li class="item"><a class="${s == 'soon' ? 'active' : ''}" class="link-m" href="home?status=soon">Coming soon</a></li>
                        <li class="item-icon"><i class="fa-solid fa-location-crosshairs"></i></li>
                        <li class="item-n">nationwide</li>
                    </ul>

                </div>
            </div>
            <div class="movie-home">
                <div class="grid-show">
                    <c:set value="${requestScope.listTop8}" var="o"></c:set>
                    <c:forEach items="${o}" var="c">
                        <div class="movie-item">
                            <img src="${c.imgURL}" alt="alt"/>
                            <h3>${c.title}</h3>
                            <div class="btn">
                                <button><a href="movie?movieID=${c.movieID}"><i class="fa-solid fa-ticket icon-m"></i>Buy ticket</a></button>
                                <button id="btn-event"><a href="home?movieTrailer=${c.movieID}"><i class="fa-solid fa-circle-play icon-m"></i>Trailer</a></button>
                            </div>
                        </div>
                    </c:forEach>
                </div>

       


            </div>
            <div class="btn-more__contain">
                <div class="btn-more">
                    <div class="btn-more__link"><a href="#">See also</a><i class="fa-solid fa-chevron-right"></i></div>
                </div>
            </div>

        </div>
                             <c:set var="trailer" value="${requestScope.tl}"></c:set>
                <c:if test="${trailer != null}">
                    <div class="video-trailer">
                        <div class="overlay" id="overlay"></div>
                        <div>${trailer.videoURL}</div>
                    </div>
                </c:if>
        <hr style="border-top: 5px solid #f4f4f4;">
        <div class="grid">
            <div class="blog-title">CINEMA CORNER</div>
            <div class="grid-blog">
                <div class="content-left">
                    <a href="#">
                        <img src="./img/blog/1.png" alt="alt"/>
                    </a>
                    <div class="title-left">
                        <a href="#"> <h3>[Review] Migration: Is the Duck House as a phenomenon as the Minions?</h3></a>
                    </div>
                    <div class="view-blog">
                        <button><i class="fa-solid fa-thumbs-up"></i>Like</button>
                        <button><i class="fa-solid fa-eye"></i>603</button>
                    </div>
                </div>
                <div class="content-right">
                    <ul class="list-content__right">
                        <li class="item-right">
                            <div class="img-right">
                                <a href="#">
                                    <img src="./img/blog/2.png" alt="alt"/>
                                </a>
                            </div>
                            <div class="title-right">
                                <a href="#">
                                    <h3>[Review] Aquaman And The Lost Kingdom: Goodbye DCEU!</h3>
                                </a>

                                <div class="view-blog">
                                    <button><i class="fa-solid fa-thumbs-up"></i>Like</button>
                                    <button><i class="fa-solid fa-eye"></i>603</button>
                                </div>
                            </div>
                        </li>
                        <li class="item-right">
                            <div class="img-right">
                                <a href="#">
                                    <img src="./img/blog/3.png" alt="alt"/>
                                </a>
                            </div>
                            <div class="title-right">
                                <a href="#">
                                    <h3>[Preview] Aquaman And The Lost Kingdom: Superhero Movie's Last Hope?</h3>
                                </a>

                                <div class="view-blog">
                                    <button><i class="fa-solid fa-thumbs-up"></i>Like</button>
                                    <button><i class="fa-solid fa-eye"></i>603</button>
                                </div>
                            </div>
                        </li>
                        <li class="item-right">
                            <div class="img-right">
                                <a href="#">
                                    <img src="./img/blog/4.png" alt="alt"/>
                                </a>
                            </div>
                            <div class="title-right">
                                <a href="#"><h3>[Review] Crane Devil: Bravely choose controversial messages!</h3></a>
                                <div class="view-blog">
                                    <button><i class="fa-solid fa-thumbs-up"></i>Like</button>
                                    <button><i class="fa-solid fa-eye"></i>603</button>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <hr class="hr2" style="border-top: 5px solid #f4f4f4;">
        <div class="grid">
            <div class="pr-title">PROMOTIONAL NEWS</div>
            <div class="pr-silder_contain">
                <div class="pr-img_1">
                    <img src="./img/pr/1.png" width="270px" height="181px" alt="alt"/>
                    <h4>Experience Galaxy Sala only 9K</h4>
                </div>
                <div class="pr-img_2">
                    <img src="./img/pr/2.png" width="270px" height="181px" alt="alt"/>
                    <h4>Happy U22 - Super Chestnut Water Corn</h4>
                </div>
                <div class="pr-img_3">
                    <img src="./img/pr/3.png" width="270px" height="181px" alt="alt"/>
                    <h4>U22 ticket price - from 45k</h4>
                </div>
                <div class="pr-img_4">
                    <img src="./img/pr/4.png" width="270px" height="181px" alt="alt"/>
                    <h4>Happy Day</h4>
                </div>
                <div class="pr-img_5">
                    <img src="./img/pr/5.png" width="270px" height="181px" alt="alt"/>
                    <h4>One Movie in the Theater - A Thousand Movies at Home</h4>
                </div>
            </div>
        </div>
                                    <jsp:include page="footer.jsp"/>

        <script src="./js/main1.js"></script>
    </body>
</html>
