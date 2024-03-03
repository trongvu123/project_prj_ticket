<%-- 
    Document   : moreReview
    Created on : Mar 2, 2024, 1:12:27 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/review.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <hr class="hrout">
            <div class="grid">
                <div class="grid_rv-left">
                    <div class="text-rv">FILM REVIEWS</div>
                    <hr class="hrin">
                    <div class="list-rv">
                    <c:forEach items="${requestScope.l}" var="o">
                        <a href="pageReview?id=${o.reviewID}">
                            <div class="review-contain">
                                <div class="img-rv">
                                    <img src="${o.imgRv}" alt="alt"/>
                                </div>
                                <div class="content-rv">
                                    <h3 class="title-rv">${o.title}</h3>
                                    <div class="view-blog">
                                        <button><i class="fa-solid fa-thumbs-up"></i>Like</button>
                                        <button><i class="fa-solid fa-eye"></i>603</button>
                                    </div>
                                    <div class="short-content">${o.reviewTitle}</div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
                    <div class="paging">
                        
                        <ul class="list-page">
                            <div class="arrow-back "  ><a href="review?pageIndex=${requestScope.backPage}"><i class="fa-solid fa-chevron-left ${param.pageIndex != 1 && param.pageIndex != null ? 'active hover' : ''}"></i></a></div>
                        <c:forEach  begin="1" end="${requestScope.maxPage}" step="1" var="pageNumber">
                                <li> <a href="review?pageIndex=${pageNumber}" class="${pageNumber==param.pageIndex ? 'active' : ''}"><button class="${param.pageIndex == pageNumber || (param.pageIndex == null && pageNumber==1) ? 'active' : ''}">${pageNumber}</button></a></li>
                        </c:forEach>
                          
                                <div class="arrow-up "  ><a href="review?pageIndex=${requestScope.nextPage}"><i class="fa-solid fa-chevron-right ${param.pageIndex != requestScope.maxPage || param.pageIndex == null ? 'active hover' : ''}"></i></a></div>
                        </ul>
                       
                    </div>
            </div>

            <c:set var="l" value="${requestScope.listTop3}"></c:set> 
                <div class="grid_rv-right">
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
            <script>
                  // Lấy chuỗi JSON từ server
//let listReviews = '<%= request.getAttribute("list") %>'.replace(/\r?\n/g, '\\n').replace(/(?<=: )"(.*?)"(?=,)/g, function(match) {
//    return match.replace(/"/g, '\\"');
//});
//
//
//
//  
//    let reviews = JSON.parse(listReviews);
//
////
//                let reviewArray = [];
//                let t= 2;
//                console.log(t);
//// 
//                for (let i = 0; i < reviews.length; i++) {
//                    let review = reviews[i];
//                    reviewArray.push({
//                        'Review ID': review.reviewID,
//                        'Movie ID': review.movieID,
//                        'Image RV': review.imgRv,
//                        'Image 1': review.img1,
//                        'Image 2': review.img2,
//                        'Title': review.title,
//                        'Review Title': review.reviewTitle,
//                        'Review 1': review.review1,
//                        'Review 2': review.review2,
//                        'Review 3': review.review3
//                    });
//                }
//
////
//
//                console.log(listReviews);
                window.onload = function() {
    var pageIndex = ${param.pageIndex};
     var pageIndex = typeof pageIndex !== 'undefined' ? pageIndex : null;
    var maxPage = ${requestScope.maxPage};
    console.log(pageIndex);
    var arrowBack = document.querySelector('.arrow-back a');
    var arrowUp = document.querySelector('.arrow-up a');

    if (pageIndex == 1 || pageIndex == null || pageIndex === undefined) {
        arrowBack.addEventListener('click', function(event) {
            event.preventDefault();
        });
    }

    if (pageIndex == maxPage) {
        arrowUp.addEventListener('click', function(event) {
            event.preventDefault();
        });
    }
};

        </script>
    </body>
</html>
