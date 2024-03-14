<%-- 
    Document   : update
    Created on : Feb 19, 2024, 3:56:42 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
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
            .back{
                    position: relative;
    bottom: 48.5px;
    left: 574px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <form class="form-horizontal" action="update">
                <div>
                <c:if test="${requestScope.messSuccess != null}">
                    <div class="alert alert-success " role="alert">
                        ${requestScope.messSuccess}
                    </div>
                </c:if>                  
                <!-- Form Name -->
                <legend>UPDATE</legend>
                <c:set var="m" value="${requestScope.movie}"></c:set>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_id">Movie ID</label>  
                        <div class="col-md-4">
                            <input id="product_id" name="movie" value="${m.movieID}" placeholder="MOVIE ID" class="form-control input-md" readonly type="text">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name">Title</label>  
                    <div class="col-md-4">
                        <input id="product_name" name="title" value="${m.title}" placeholder="TITLE" class="form-control input-md" required="" type="text">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">Actor</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="actor" value="${m.actor}" placeholder="ACTOR" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">Director</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="director" value="${m.director}" placeholder="DIRECTOR" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">Producer</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="producer" value="${m.producer}" placeholder="PRODUCER" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">Country</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="country" value="${m.country}" placeholder="COUNTRY" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">Duration</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="duration" value="${m.duration}" placeholder="DURATION" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="category">Movie category</label>
                    <div class="col-md-4">
                        <select id="category" name="category" class="form-control">
                            <c:forEach items="${requestScope.listCategory}" var="c">
                                <option value="${c.categoryID}" ${m.category.categoryID == c.categoryID ? 'selected' : ''}>${c.categoryName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="available_quantity">Year</label>  
                    <div class="col-md-4">
                        <input id="available_quantity" name="year" value="${m.year}" placeholder="YEAR" class="form-control input-md" required="" type="number">

                    </div>
                </div>

                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">Content</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_name_fr" name="content">${m.content}</textarea>
                    </div>
                </div>
                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_categorie">Status</label>
                    <div class="col-md-4">
                        <select id="product_categorie_2" name="status" class="form-control">
                            <option value="show" ${m.status == show ? 'selected' : ''}>Show</option>
                            <option value="soon" ${m.status == soon ? 'selected' : ''}>Soon</option>
                        </select>
                    </div>
                </div>
                <!-- File Button --> 
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="imgURL" value="${m.imgURL}" class="input-file" type="file">
                        <input type="hidden" name="imgURL_origin" value="${m.imgURL}">
                    </div>
                </div>
                <!-- File Button --> 
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton2">Image cover</label>
                    <div class="col-md-4">
                        <input id="filebutton2" name="imgCover" value="${m.coverURL}" class="input-file" type="file">
                        <input type="hidden" name="imgCover_origin" value="${m.coverURL}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">Trailer</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_name_fr_1" name="trailer">${m.videoURL}</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton"></label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary" type="submit">Add</button>
                       
                    </div>
                </div>

            </div>
                    
        </form>
                    <a href="manage" ><button class="btn btn-primary back">back</button></a>
                        <div>${requestScope.img}</div>  
                        <div>${requestScope.img2}</div>  
        <jsp:include page="footer.jsp"></jsp:include>
            <script>
                var selectElement = document.getElementById("product_categorie_2");


                function enableSelect() {
                    selectElement.removeAttribute("disabled");
                }

                window.onload = enableSelect;
                window.onload = function () {
                    var content = ${m.content};
                    var trailer = ${m.videoURL};
                    document.getElementById('product_name_fr').textContent = content;
                    document.getElementById('product_name_fr_1').textContent = trailer;
                }
        </script>
    </body>
</html>
