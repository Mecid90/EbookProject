
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Admin: Home</title>
    <%@ include file="allCss.jsp" %>
    <style type="text/css">
a{
    text-decoration: none;
    color: black;
}
a:hover {
    text-decoration: none;
    color: black;
}
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<c:if test="${empty userobj}">
    <c:redirect url="../login.jsp" />
</c:if>
    <div class="container p-4">
        <div class="row text-center">
            <h4> Hello Admin </h4>
            <div class="col-md-3">
                <a href="add_books.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                        <h4>Add Books</h4>
                        -----------
                    </div>
                </div>
                </a>
            </div>

            <div class="col-md-3">
                <a href="all_books.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fas fa-book-open fa-3x text-danger"></i><br>
                        <h4>All Books</h4>
                        -----------
                    </div>
                </div>
                </a>
            </div>

                    <div class="col-md-3">
                        <a href="orders.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-box-open fa-3x text-warning"></i><br>
                                <h4>Order</h4>
                                -----------
                            </div>
                        </div>
                        </a>
                    </div>

                            <div class="col-md-3">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
                                        <h4>Logout</h4>
                                        -----------
                                    </div>
                                </div>
                                </a>
                            </div>

                        </div>
                    </div>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body text-center" >
                <div class="text-center">
                    <h4>Do you want to logout?</h4>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <a type="button" class="btn btn-primary" href="../logout">Logout</a>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>

</body>
</html>
