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
        <link rel="stylesheet" href="./css/movie.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <c:set  value="${requestScope.id}" var="o"></c:set>
            <div class="video-cover">
                <div class="img-cover">
                    <img src="${o.coverURL}" alt="alt"/>
                <div class="play"><a href="#"><i class="fa-solid fa-circle-play"></i></a></div>
            </div>
        </div>
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
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
