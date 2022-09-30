<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 30.09.2022
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart Page</title>
    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_components/navbar.jsp"%>

<div class="container">
    <div class="row p-2">
        <div class="col-md-6">
            <div class="card bg-white">
                <div class="card-body">
                    <h3 class="text-center text-success"> Your Selected Items </h3>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">First</th>
                            <th scope="col">Last</th>
                            <th scope="col">Handle</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td colspan="2">Larry the Bird</td>
                            <td>@twitter</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success"> Your Details For Order </h3>
                    <form>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Name</label>
                            <input type="text" class="form-control" id="inputEmail4">
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Email</label>
                            <input type="email" class="form-control" id="inputPassword4">
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Phone Number</label>
                            <input type="number" class="form-control" id="inputEmail4">
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Adress</label>
                            <input type="text" class="form-control" id="inputPassword4">
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Landmark</label>
                            <input type="text" class="form-control" id="inputEmail4">
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">City</label>
                            <input type="text" class="form-control" id="inputPassword4">
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">State</label>
                            <input type="text" class="form-control" id="inputEmail4">
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Zip</label>
                            <input type="text" class="form-control" id="inputPassword4">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
