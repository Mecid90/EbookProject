<%@ page import="DAO.BookDaoImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>User: Old Book</title>
    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7">

<%@include file="all_components/navbar.jsp"%>

<div class="container p-1">

    <h3 class="text-primary text-center">Old Book</h3>
    <table class="table table-striped mt-3">
        <thead class="bg-primary text-white">
        <tr>
            <th scope="col">Book Name</th>
            <th scope="col">Author</th>
            <th scope="col">Price</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        <%
            BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());

        %>

        <tr>
            <td>Book Name</td>
            <td>Author</td>
            <td>Price</td>
            <td><a href="" class="btn btn-sm btn-danger"> Delete </a> </td>
        </tr>
        </tbody>
    </table>
    </table>
</div>

</body>
</html>
