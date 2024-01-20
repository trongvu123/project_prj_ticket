<%-- 
    Document   : slider
    Created on : Dec 24, 2023, 10:51:32 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Silder Page</title>
        <link rel="stylesheet" href="./css/slick.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="slider-content">
            <div class="slider-content__img">
                <div class="slider-content__img-1">
                    <img src="./img/slider/aquaman.jpg" alt="alt"/>
                </div>
                <div class="slider-content__img-2">
                    <img src="./img/slider/ke-an-hon.jpg" alt="alt"/>
                </div>
                <div class="slider-content__img-3">
                    <img src="./img/slider/quy-cau.jpg" alt="alt"/>
                </div>
            </div>
        </div>
        <div id="semi-circle"><i class="fa-solid fa-chevron-down arrow-pre"></i></div>
        <div id="semi-circle2"><i class="fa-solid fa-chevron-down arrow-next"></i></div>
        <script src="./js/slick1.js"></script>
    </body>
</html>
