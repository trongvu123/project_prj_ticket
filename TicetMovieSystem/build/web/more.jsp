<%-- 
    Document   : more
    Created on : Feb 7, 2024, 1:24:09 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="./css/more.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="grid-more">
            <div class="more">
                <div class="text">Movie</div>
                <div class="status">
                    <ul class="list-status">
                        <li class="item "><a href="more?status=all" class="${param.status == 'all' ? 'active' : ''}" >All</a></li>
                        <li class="item"><a href="more?status=show" class="${param.status == 'show' ? 'active' : ''}">Showing</a></li>
                        <li class="item"><a href="more?status=soon" class="${param.status == 'soon' ? 'active' : ''}">Coming soon</a></li>
                    </ul>
                </div>
            </div>
            <div class="grid-contain">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-4s">
                            <!-- Category -->
                            <div class="single category">
                                <h3 class="side-title">Category</h3>
                                <ul class="list-unstyled">                      
                                    <li><a href="more?categoryName=Horror&status=${param.status}" title="" class="${param.categoryName == 'Horror' ? 'active' : ''}">Horror <span class="pull-right">13</span></a></li>
                                    <li><a href="more?categoryName=Action&status=${param.status}" title="" class="${param.categoryName == 'Action' ? 'active' : ''}">Action <span class="pull-right">13</span></a></li>
                                    <li><a href="more?categoryName=Animation&status=${param.status}" title="" class="${param.categoryName == 'Animation' ? 'active' : ''}">Animation <span class="pull-right">13</span></a></li>
                                    <li><a href="more?categoryName=Fiction&status=${param.status}" title="" class="${param.categoryName == 'Fiction' ? 'active' : ''}">Fiction <span class="pull-right">13</span></a></li>
                                    <li><a href="more?categoryName=Adventure&status=${param.status}" title="" class="${param.categoryName == 'Adventure' ? 'active' : ''}">Adventure <span class="pull-right">13</span></a></li>
                                    <li><a href="more?categoryName=Psychology&status=${param.status}" title="" class="${param.categoryName == 'Psychology' ? 'active' : ''}">Psychology <span class="pull-right">13</span></a></li>
                                    <li><a href="more?categoryName=Comedy&status=${param.status}" title="" class="${param.categoryName == 'Comedy' ? 'active' : ''}">Comedy <span class="pull-right">13</span></a></li>
                                    <li><a href="more?categoryName=Romance&status=${param.status}" title="" class="${param.categoryName == 'Romance' ? 'active' : ''}">Romance <span class="pull-right">13</span></a></li>
                                </ul>
                            </div>
                        </div> 
                    </div>
                </div>
                <div class="movie-contain">
                    <c:set var="o" value="${requestScope.list}"></c:set>
                        <div class="grid-list">
                        <c:forEach items="${o}" var="c">
                            <div class="movie">
                                <img src="${c.imgURL}" alt="alt"/>
                            <h3>${c.title}</h3>
                            <div class="btn-m">
                                <button><a href="movie?movieID=${c.movieID}"><i class="fa-solid fa-ticket icon-m"></i>Buy ticket</a></button>
                                <button id="btn-event"><a href="more?movieTrailer=${c.movieID}"><i class="fa-solid fa-circle-play icon-m"></i>Trailer</a></button>
                            </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        <nav aria-label="Page navigation example" style="text-align: center;">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>
        </div>

        <jsp:include page="footer.jsp"/>
    </body>
</html>
