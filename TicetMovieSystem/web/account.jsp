<%-- 
    Document   : account
    Created on : Feb 3, 2024, 9:21:37 PM
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
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="grid-acc">
            <div class="grid-left__acc">
                <div class="acc-depense">
                    <div class="acc-depense__header">
                        <div class="acc-img">
                            <img src="./img/avt.png" alt="alt"/>
                        </div>
                        <div class="acc-name">Nguyen van A</div>
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
                        <li class="item-service"><a href="cart.jsp">Cart</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
    
</html>
