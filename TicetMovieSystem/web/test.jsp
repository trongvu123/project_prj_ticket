<%-- 
    Document   : test
    Created on : Jan 18, 2024, 9:03:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach items="${sessionScope.listOrder}" var="o">
            <h1>${o.movie.title}</h1>
            <h1>${o.seats.seatName}</h1>
            <h1>${o.days.dayName}</h1>
             <h1>${o.price}</h1>
        </c:forEach>
        <jsp:include page="footer.jsp"/>
        
    </body>
</html>
