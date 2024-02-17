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
                        <c:if test="${empty o}">
                            <h2>There are no movies</h2>
                        </c:if>
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
            <c:choose>
                <c:when test="${ param.status == 'all' && param.categoryName == null}">
                    <c:if test="${requestScope.maxPage > 1}">
                        <nav aria-label="Page navigation example" style="text-align: center;">
                            <ul class="pagination justify-content-center">                         
                                <li class="page-item"><a class="page-link ${param.pageIndex == 1 || param.pageIndex == null ? 'd-none' : ''}" href="more?pageIndex=${requestScope.backPage}&status=${param.status}&categoryName=${param.categoryName}">Previous</a></li>

                                <c:forEach begin="1" end="${requestScope.maxPage}" step="1" var="pageNumber">

                                    <li class="page-item"><a class="page-link ${ param.pageIndex == pageNumber || (param.pageIndex == null && pageNumber==1) ? 'active' : ''}" href="more?pageIndex=${pageNumber}&status=${param.status}&categoryName=${param.categoryName}">${pageNumber}</a></li>
                                    </c:forEach>
                                <li class="page-item"><a class="page-link ${param.pageIndex == requestScope.maxPage ? 'd2-none' : ''}" href="more?pageIndex=${requestScope.nextPage}&status=${param.status}&categoryName=${param.categoryName}">Next</a></li>
                            </ul>
                        </nav>
                    </c:if>
                </c:when>
                <c:when test="${param.status != 'all' && param.categoryName != null}">
                    <c:if test="${requestScope.maxBoth > 1}">
                        <nav aria-label="Page navigation example" style="text-align: center;">
                            <ul class="pagination justify-content-center">
                                <li class="page-item"><a class="page-link ${param.pageIndex == 1 || param.pageIndex == null ? 'd-none' : ''}" href="more?pageIndex=${requestScope.backPage}&status=${param.status}&categoryName=${param.categoryName}">Previous</a></li>
                                    <c:forEach begin="1" end="${requestScope.maxBoth}" step="1" var="pageNumber">
                                    <li class="page-item"><a class="page-link ${ param.pageIndex == pageNumber || (param.pageIndex == null && pageNumber==1) ? 'active' : ''} " href="more?pageIndex=${pageNumber}&status=${param.status}&categoryName=${param.categoryName}">${pageNumber}</a></li>
                                    </c:forEach>
                                <li class="page-item"><a class="page-link ${param.pageIndex == requestScope.maxBoth ? 'd2-none' : ''}" href="more?pageIndex=${requestScope.nextPage}&status=${param.status}&categoryName=${param.categoryName}">Next</a></li>
                            </ul>
                        </nav>
                    </c:if>
                </c:when>
                <c:when test="${ param.categoryName != null && param.status == 'all'}">
                    <c:if test="${requestScope.maxCategory > 1}">
                        <nav aria-label="Page navigation example" style="text-align: center;">
                            <ul class="pagination justify-content-center">
                                <li class="page-item"><a class="page-link ${param.pageIndex == 1 || param.pageIndex == null ? 'd-none' : ''}" href="more?pageIndex=${requestScope.backPage}&status=${param.status}&categoryName=${param.categoryName}">Previous</a></li>
                                    <c:forEach begin="1" end="${requestScope.maxCategory}" step="1" var="pageNumber">
                                    <li class="page-item"><a class="page-link ${ param.pageIndex == pageNumber || (param.pageIndex == null && pageNumber==1) ? 'active' : ''} " href="more?pageIndex=${pageNumber}&status=${param.status}&categoryName=${param.categoryName}">${pageNumber}</a></li>
                                    </c:forEach>
                                <li class="page-item"><a class="page-link ${param.pageIndex == requestScope.maxCategory ? 'd2-none' : ''}" href="more?pageIndex=${requestScope.nextPage}&status=${param.status}&categoryName=${param.categoryName}">Next</a></li>
                            </ul>
                        </nav>
                    </c:if>
                </c:when>
                <c:when test="${ param.categoryName == null && param.status != null}">
                    <c:if test="${requestScope.maxStatus > 1}">
                        <nav aria-label="Page navigation example" style="text-align: center;">
                            <ul class="pagination justify-content-center">
                                <li class="page-item"><a class="page-link ${param.pageIndex == 1 || param.pageIndex == null ? 'd-none' : ''}" href="more?pageIndex=${requestScope.backPage}&status=${param.status}&categoryName=${param.categoryName}">Previous</a></li>
                                    <c:forEach begin="1" end="${requestScope.maxStatus}" step="1" var="pageNumber">
                                    <li class="page-item"><a class="page-link ${ param.pageIndex == pageNumber || (param.pageIndex == null && pageNumber==1) ? 'active' : ''} " href="more?pageIndex=${pageNumber}&status=${param.status}&categoryName=${param.categoryName}">${pageNumber}</a></li>
                                    </c:forEach>
                                <li class="page-item"><a class="page-link ${param.pageIndex == requestScope.maxStatus ? 'd2-none' : ''}" href="more?pageIndex=${requestScope.nextPage}&status=${param.status}&categoryName=${param.categoryName}">Next</a></li>
                            </ul>
                        </nav>
                    </c:if>
                </c:when>

            </c:choose>

            <div>${requestScope.maxCategory}</div>
        </div>

        <jsp:include page="footer.jsp"/>
    </body>
</html>
