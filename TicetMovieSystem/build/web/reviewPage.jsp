<%-- 
    Document   : reviewPage
    Created on : Mar 2, 2024, 11:15:07 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/reviewPage.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <hr class="hrout">
            <div class="grid">
            <c:set var="rv" value="${requestScope.rv}"></c:set>
                <div class="grid-page_left">
                    <div class="link-contain">
                        <a class="home" href="home?status=show">Home page</a>
                        <span class="sp">/</span>
                        <a class="home" href="review">Home page</a>
                        <span class="sp">/</span>
                        <span>${rv.title}</span>
                </div>
                <div class="title-h3"><h3>${rv.title}</h3></div>
                <div class="view-blog">
                    <button><i class="fa-solid fa-thumbs-up"></i>Like</button>
                    <button><i class="fa-solid fa-eye"></i>603</button>
                </div>
                <div class="rv1"><p>${rv.review1}</p></div>
                <div class="img1">
                    <img src="${rv.img1}" alt="alt"/>
                </div>
                <div class="rv2"><p>${rv.review2}</p></div>
                <div class="img2">
                    <img src="${rv.img2}" alt="alt"/>
                </div>
                <div class="rv3"><p>${rv.review3}</p></div>
                <div class="text-random">OTHER FILM REVIEWS</div>
                <div class="listRandom">
                    <c:forEach items="${requestScope.random}" var="o">
                        <a href="pageReview?id=${o.reviewID}">
                        <div class="contain-random">
                            <div class="img-random"><img src="${o.imgRv}" alt="alt"/></div>
                            <div class="title-random">${o.title}</div>
                        </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
            <c:set var="l" value="${requestScope.listTop3}"></c:set> 
                <div class="grid-page_right">
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
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
       
    </body>
</html>
