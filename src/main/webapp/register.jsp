
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <title>Ebook: register</title>
    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_components/navbar.jsp"%>

<div class="cotainer">
    <div class="row mt-2">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center ">Registration Page</h4>
                    <c:if test="${not empty successMessage}">
                        <p class = "text-center text-success">${successMessage}</p>
                        <c:remove var="successMessage"/>
                    </c:if>
                    <c:if test="${not empty failedMessage}">
                        <p class = "text-center text-danger">${failedMessage}</p>
                        <c:remove var="failedMessage"/>
                    </c:if>
                    <form action="register" method="post">
                        <div class="mb-3">
                            <label for="InputFullName" class="form-label">Enter Full Name</label>
                            <input type="text" class="form-control" id="InputFullName" aria-describedby="emailHelp" required="required" name="fname">

                        </div>
                        <div class="mb-3">
                            <label for="InputEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="InputEmail" aria-describedby="emailHelp" required="required" name="email">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3">
                            <label for="InputNumber" class="form-label">Phone Number</label>
                            <input type="number" class="form-control" id="InputNumber" aria-describedby="emailHelp" required="required" name="phone">

                        </div>
                        <div class="mb-3">
                            <label for="InputPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="InputPassword" required="required" name="password">
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="Check" name="check">
                            <label class="form-check-label" for="Check"> Agree Terms and Conditions </label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
