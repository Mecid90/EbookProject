
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>

    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7">

<%@include file="all_components/navbar.jsp"%>

<div class="container p-1">

    <h3 class="text-primary text-center">Your Order</h3>
    <table class="table table-striped mt-3">
        <thead class="bg-primary text-white">
        <tr>
            <th scope="col">Order</th>
            <th scope="col">Name</th>
            <th scope="col">Book Name</th>
            <th scope="col">Author</th>
            <th scope="col">Price</th>
            <th scope="col">Payment Type</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>@mdo</td>
            <td>@mdo</td>
        </tr>
        </tbody>
    </table>
    </table>
</div>

</body>
</html>
