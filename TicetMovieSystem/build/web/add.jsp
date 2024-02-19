<%-- 
    Document   : add
    Created on : Feb 19, 2024, 8:44:00 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
           <style>
            legend{
                margin-left: 20px;
            }
            form{
                margin-top: 40px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <form class="form-horizontal" action="add">
                <fieldset>
                    <c:if test="${requestScope.messSuccess != null}">
                    <div class="alert alert-success " role="alert">
                        ${requestScope.messSuccess}
                    </div>
                </c:if>  
                <c:if test="${requestScope.messErr != null}">
                    <div class="alert alert-success " role="alert">
                        ${requestScope.messErr}
                    </div>
                </c:if>  
                    <!-- Form Name -->
                    <legend>PRODUCTS</legend>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_id">Movie ID</label>  
                        <div class="col-md-4">
                            <input id="product_id" name="movie" placeholder="MOVIE ID" class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name">Title</label>  
                        <div class="col-md-4">
                            <input id="product_name" name="title" placeholder="TITLE" class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name_fr">Actor</label>  
                        <div class="col-md-4">
                            <input id="product_name_fr" name="actor" placeholder="ACTOR" class="form-control input-md" required="" type="text">

                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name_fr">Director</label>  
                        <div class="col-md-4">
                            <input id="product_name_fr" name="director" placeholder="DIRECTOR" class="form-control input-md" required="" type="text">

                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name_fr">Producer</label>  
                        <div class="col-md-4">
                            <input id="product_name_fr" name="producer" placeholder="PRODUCER" class="form-control input-md" required="" type="text">

                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name_fr">Country</label>  
                        <div class="col-md-4">
                            <input id="product_name_fr" name="country" placeholder="COUNTRY" class="form-control input-md" required="" type="text">

                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name_fr">Duration</label>  
                        <div class="col-md-4">
                            <input id="product_name_fr" name="duration" placeholder="DURATION" class="form-control input-md" required="" type="text">

                        </div>
                    </div>
                                   <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="category">Movie category</label>
                        <div class="col-md-4">
                            <select id="category" name="category" class="form-control">
                            <c:forEach items="${requestScope.listCategory}" var="c">
                                <option value="${c.categoryID}">${c.categoryName}</option>
                            </c:forEach>
                            </select>
                        </div>
                    </div>
               
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="available_quantity">Year</label>  
                        <div class="col-md-4">
                            <input id="available_quantity" name="year" placeholder="YEAR" class="form-control input-md" required="" type="number">

                        </div>
                    </div>
        
                        <!-- Textarea -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name_fr">Content</label>
                        <div class="col-md-4">                     
                            <textarea class="form-control" id="product_name_fr" name="content"></textarea>
                        </div>
                    </div>
                                <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_categorie">Status</label>
                        <div class="col-md-4">
                            <select id="product_categorie_2" name="statusss" class="form-control">
                                <option value="show">Show</option>
                                <option value="soon">Soon</option>
                            </select>
                        </div>
                    </div>
                                 <!-- File Button --> 
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="filebutton">Image</label>
                                <div class="col-md-4">
                                    <input id="filebutton" name="imgURL" class="input-file" type="file">
                                </div>
                            </div>
                                    <!-- File Button --> 
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="filebutton">Image cover</label>
                                <div class="col-md-4">
                                    <input id="filebutton" name="imgCover" class="input-file" type="file">
                                </div>
                            </div>
                                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name_fr">Trailer</label>
                        <div class="col-md-4">                     
                            <textarea class="form-control" id="product_name_fr" name="trailer"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
       <button id="singlebutton" name="singlebutton" class="btn btn-primary" type="submit">Add</button>
                        <a href="manage"><button id="singlebutton1" name="singlebutton1" class="btn btn-primary">back</button></a>
  </div>
  </div>

                            </fieldset>
                            </form>
                        <jsp:include page="footer.jsp"></jsp:include>
                        <script>
                            // Lấy tham chiếu đến phần tử select
var selectElement = document.getElementById("product_categorie_2");

// Hủy bỏ thuộc tính disabled của phần tử select
function enableSelect() {
    selectElement.removeAttribute("disabled");
}

// Gọi hàm enableSelect khi cần thiết
// Ví dụ: khi một sự kiện nào đó xảy ra
// Trong ví dụ này, chúng ta gọi hàm enableSelect khi trang web được tải hoàn toàn
window.onload = enableSelect;

                        </script>
                        </body>
                        </html>