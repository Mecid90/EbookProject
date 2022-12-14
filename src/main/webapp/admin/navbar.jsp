
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<div class="container-fluid" style="height: 10px;background-color: #303f9f"></div>

<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa-solid fa-book"></i>  Ebooks</h3>
        </div>

        <div class="col-md-3">
            <c:if test="${not empty userobj}">
                <a class="btn btn-primary"><i class="fa-solid fa-address-card"></i> ${userobj.name}</a>
                <a href="../Logout" data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Logout</a>
            </c:if>

            <c:if test="${empty userobj}">
                <a href="../login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
                <a href="../register.jsp" class="btn btn-primary"><i class="fa-solid fa-address-card"></i>  Register</a>
            </c:if>
        </div>

    </div>
</div>

<!-- Logout modal -->
<!-- Button trigger modal -->


<!-- Modal -->
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
<!--Logout modal end-->


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">

    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#"></a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item active">
                    <a class="nav-link active" aria-current="page" href="home.jsp"><i class="fas fa-home"></i> Home</a>
                </li>
                </ul>
        </div>
    </div>
</nav>
