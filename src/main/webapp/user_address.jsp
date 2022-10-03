<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 03.10.2022
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Address</title>

    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7">

<%@include file="all_components/navbar.jsp"%>

<div class="container">
    <div class="col-md-6 offset-md-3 p-2">
        <div class="card ">
                <div class="card-body">
                    <h3 class="text-center text-success"> Add Address </h3>
                    <form class="row g-3">
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Address</label>
                            <input type="text" class="form-control" id="inputEmail4">
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Landmark</label>
                            <input type="text" class="form-control" id="inputPassword4">
                        </div>
                        <div class="col-md-4">
                            <label for="inputCity" class="form-label">City</label>
                            <input type="text" class="form-control" id="inputCity">
                        </div>
                        <div class="col-md-4">
                            <label for="inputState" class="form-label">State</label>
                            <input type="text" class="form-control" id="inputState">
                        </div>
                        <div class="col-md-4">
                            <label for="inputZip" class="form-label">Pin Code</label>
                            <input type="text" class="form-control" id="inputZip">
                        </div>

                        <div class="col-12 p-2 text-center">
                            <button type="submit" class="btn btn-warning">Add Address</button>
                        </div>
                    </form>
                </div>
        </div>
    </div>
</div>

</body>
</html>
