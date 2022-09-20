<%@ page import="java.sql.Connection" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ebook: Index</title>
    <%@include file="all_components/allCss.jsp"%>

    <style type="text/css">
        .back-img{
            background-image: url("img/b.jpg");
            height: 50vh;
            width: 100%;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

</head>
<body>
<%@include file="all_components/navbar.jsp"%>

<div class="container-fluid back-img">
    <h2 class="text-center text-danger">EBook Management System</h2>
</div>

<div class="container-fluid">
    <h3 class="text-center">Recent Book</h3>
    <div class="row">
<div class="col-md-3">
    <div class="card">
    <div class="card-body text-center">
        <img alt="" src="book/JavaBook.jpg" style="width: 200px" class="img-thumbnail">
        <p>Java Programming</p>
        <p>Hamilton</p>
        <p>Categories: New</p>
        <div class="row">
            <a href="" class="btn btn-danger btn-sm ml-lg-2">Add Card</a>
            <a href="" class="btn btn-success btn-sm ml-lg-1">View Details</a>
            <a href="" class="btn btn-success btn-sm ml-lg-1">299</a>
        </div>
    </div>
    </div>
</div>
    </div>
</div>

</body>
</html>