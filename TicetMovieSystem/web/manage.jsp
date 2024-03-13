<%-- 
    Document   : manage
    Created on : Feb 19, 2024, 1:14:20 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <!--<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.datatables.net/2.0.0/js/dataTables.js"></script>
        <script src="https://cdn.datatables.net/2.0.0/js/dataTables.bootstrap5.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/2.0.0/css/dataTables.bootstrap5.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="./css/manage.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <a href="add"><button class="button-5" role="button">Add movie</button></a>
        <div class="overlay">
            <div class="notifi">
                <div class="contain-notifi">
                    <div><i class="fa-solid fa-trash"></i></div>
                    <div>Notify</div>
                    <div></div>
                    <div><button>Delete</button>
                        <button>Cancel</button>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${requestScope.m != null}">
            <div class="alert alert-success " role="alert">
                You have successfully deleted movie <strong>${m.title}</strong>
                    </div>
        </c:if>
        <table id="example" class="table table-striped" style="width:100%">
                       <thead>
                <tr>
                    <th scope="col" >MovieID</th>
                    <th scope="col">Title</th>
                    <th scope="col">Category</th>
                    <th scope="col">Actor</th>
                    <th scope="col">Director</th>
                    <th scope="col">Producer</th>
                    <th scope="col">Country</th>
                    <th scope="col">Duration</th>
                    <th scope="col">Year</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.listMovie}" var="l">
                <tr>
                    <td>${l.movieID}</td>
                    <td>${l.title}</td>
                    <td>${l.category.categoryName}</td>
                    <td>${l.actor}</td>
                    <td>${l.director}</td>
                    <td>${l.producer}</td>
                    <td>${l.country}</td>
                    <td>${l.duration}</td>
                    <td>${l.year}</td>
                    <td>
                         <button type="button" class="btn btn-secondary" ><a href="update?movieID=${l.movieID}">Update</a></button>
                         <button type="button" class="btn btn-secondary btn-delete"><a href="#" onclick="deleteItem('${l.movieID}')">Delete</a></button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <jsp:include page="footer.jsp"></jsp:include>
            <script>
	
$(document).ready(function() {
    $('#example').DataTable({
        "pageLength": 8, 
        "lengthMenu": [ [8,10, 25, 50, -1], [8,10, 25, 50, "All"] ] 
    });
});
    function deleteItem(id) {
                let overlay = document.querySelector('.overlay');
                let content = document.querySelector('.contain-notifi div:nth-child(3)');
                overlay.classList.add('show-overlay');
                content.textContent="Are you sure to delete the "+id+" ?";
                let btnBuy = document.querySelector('.overlay button:first-child');
                let btnDelete = document.querySelector('.overlay button:last-child');
                btnBuy.addEventListener('click', () => {
                    window.location = "delete?movieID=" + id;
                });
                btnDelete.addEventListener('click', () => {
                    overlay.classList.remove('show-overlay');
                });
            }
    </script>
    </body>
</html>
