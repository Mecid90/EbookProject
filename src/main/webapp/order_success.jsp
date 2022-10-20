<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 15.10.2022
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">

<%@include file="all_components/navbar.jsp"%>

<div class="container text-center mt-3">
    <i class="fas fa-check-circle fa-5x text-success"></i>
    <h1> Thank You </h1>
    <h2> Your Order Successfully </h2>
    <h5> With in 7 Days Your Product will be Delivered in Your Address </h5>
    <a href="index.jsp" class="btn btn-primary mt-3"> Home </a>
    <a href="order.jsp" class="btn btn-danger mt-3"> View Order </a>
</div>

</body>
</html>
