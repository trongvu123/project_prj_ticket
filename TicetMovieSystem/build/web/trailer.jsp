<%-- 
    Document   : trailer
    Created on : Jan 18, 2024, 8:56:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .video{
                z-index: 1;
            }
        </style>
    </head>
    <body>
       <jsp:include page="home.jsp"/>
       <c:set var="o" value="${requestScope.tl}"></c:set>
       <div class="video">${o.videoURL}</div>
    </body>
</html>
