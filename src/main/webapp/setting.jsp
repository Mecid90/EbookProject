
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title> Setting </title>
    <%@include file="all_components/allCss.jsp"%>

    <style type="text/css">
        a{
            text-decoration: none;
            color: black;
        }
        a:hover{
            text-decoration: none;
        }
    </style>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_components/navbar.jsp"%>

<c:if test="${empty userobj}">
    <c:redirect url="login.jsp"/>
</c:if>

<div class="container">
    <h3 class="text-center"> Hello,${userobj.name} </h3>
    <div class="row p-4">
        <div class="col-md-4">
            <a href="sell_book.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <div class="text-center text-primary">
                    <i class="fa-solid fa-book-open fa-3x"></i>
                    </div>
                    <h3> Sell Old Book </h3>
                </div>
            </div>
            </a>
            </div>

        <div class="col-md-4">
            <a href="old_book.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-center text-primary">
                            <i class="fa-solid fa-book-open fa-3x"></i>
                        </div>
                        <h3> Old Book </h3>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-md-4">
            <a href="edit_profile.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-center text-primary">
                            <i class="fa-solid fa-pen-to-square fa-3x"></i>
                        </div>
                        <h3> Edit Profile </h3>
                    </div>
                </div>
            </a>
        </div>



        <div class="col-md-6 mt-3">
            <a href="order.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-center text-danger">
                            <i class="fa-solid fa-box-open fa-3x"></i>
                        </div>
                        <h3> My Order </h3>
                        <p>Track your order</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-md-6 mt-3">
            <a href="helpline.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-center text-primary">
                            <i class="fa-regular fa-user-circle fa-3x"></i>
                        </div>
                        <h3> Help Center </h3>
                        <p>24/7 Service</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>

<%@include file="all_components/footer.jsp"%>
</body>
</html>
