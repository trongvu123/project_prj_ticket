<%-- 
    Document   : statistics
    Created on : Mar 9, 2024, 9:58:08 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Statistics Page</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <!--<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.datatables.net/2.0.0/js/dataTables.js"></script>
        <script src="https://cdn.datatables.net/2.0.0/js/dataTables.bootstrap5.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/2.0.0/css/dataTables.bootstrap5.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
        <style>
            .dt-length{
                margin-left: 150px;
            }
            .dt-search{
                margin-right: 0px;
            }
            .dt-info{
                 margin-left: 150px;
            }
            .ms-auto{
                margin-right: 150px;
            }
            #example_wrapper{
                margin-top: 60px;
            }
        </style>
    </head>
       <jsp:include page="header.jsp"></jsp:include>
       <jsp:useBean id="m" scope="page" class="dao.TicketDAO"></jsp:useBean>  
        <table id="example" class="table table-striped" style="width:80%">
                       <thead>
                <tr>
                    <th scope="col" >User</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Number of tickets</th>
                    <th scope="col">Paid</th>

                </tr>
            </thead>
            <tbody>
                    <%
                          TicketDAO d = new TicketDAO();
        ArrayList<String> list =new ArrayList<>();
        list=d.getStastic();
        for (String s : list) {
            %>
                <tr>
                    <td><%= s.split("-")[0] %></td>
                    <td><%= s.split("-")[1] %></td>
                    <td><%= s.split("-")[2] %></td>
                    <td><%= s.split("-")[3] %></td>
    

                </tr>
                <%
                    }
            %>
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

    </script>
    </body>
</html>
