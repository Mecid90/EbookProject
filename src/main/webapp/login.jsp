
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <title>Ebook: Login</title>
    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_components/navbar.jsp"%>

 <div class="container">
    <div class="row mt-2">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Login</h4>

                    <c:if test="${not empty failedMessage}">
                        <h5 class="text-center text-danger">${  failedMessage}</h5>
                        <c:remove var="failedMessage" scope="session"/>
                    </c:if>
                    <c:if test="${not empty successMessage}">
                        <h5 class="text-center text-success">${  successMessage}</h5>
                        <c:remove var="successMessage" scope="session"/>
                    </c:if>
                    <form action="login" method="post">
                    <div class="mb-3">
                        <label for="InputEmail" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="InputEmail" aria-describedby="emailHelp" required="required" name="email">
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="InputPassword" class="form-label">Password</label>
                        <input type="password" class="form-control" id="InputPassword" required="required" name="password">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Login</button><br>
                        <a href="register.jsp">Create Account</a>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
