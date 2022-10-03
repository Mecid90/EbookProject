
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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

<div class="container">
    <h3 class="text-center"> Hello Majid </h3>
    <div class="row p-4">
        <div class="col-md-6">
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

        <div class="col-md-6">
            <a href="edit_book.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-center text-primary">
                            <i class="fa-solid fa-pen-to-square fa-3x"></i>
                        </div>
                        <h3> Login & Security (Edit Profile) </h3>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-md-4 mt-3">
            <a href="user_address.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-center text-warning">
                            <i class="fa-solid fa-location-pin fa-3x"></i>
                        </div>
                        <h3> Your Address </h3>
                        <p>Edit Address</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-md-4 mt-3">
            <a href="">
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

        <div class="col-md-4 mt-3">
            <a href="">
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
