<%@ page import="DAO.CartDaoImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.Cart" %>
<%@ page import="entity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 30.09.2022
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Cart Page</title>
    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_components/navbar.jsp"%>

<c:if test="${empty userobj}">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>

<c:if test="${not empty successMessage}">
    <div class="alert alert-success" role="alert">
        ${successMessage}
    </div>
    <c:remove var="successMessage" scope="session"/>
</c:if>

<c:if test="${not empty failedMessage}">
    <div class="alert alert-danger text-center" role="alert">
            ${failedMessage}
    </div>
    <c:remove var="failedMessage" scope="session"/>
</c:if>

<div class="container">
    <div class="row p-2">
        <div class="col-md-6">
            <div class="card bg-white">
                <div class="card-body">
                    <h3 class="text-center text-success"> Your Selected Items </h3>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">Book Name</th>
                            <th scope="col">Author</th>
                            <th scope="col">Price</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>

                        <%
                            User u = (User) session.getAttribute("userobj");
                            CartDaoImpl dao = new CartDaoImpl(DbConnect.getConnect());
                            List<Cart> cart = dao.getBookByUser(u.getId());
                            Double totalPrice = 0.00;
                            for (Cart c: cart){
                               totalPrice = c.getTotalPrice();
                        %>
                        <tr>
                            <th scope="row"><%=c.getBookName()%></th>
                            <td><%=c.getAuthor()%></td>
                            <td><%=c.getPrice()%></td>
                            <td>
                                <a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUid()%>&&cid=<%=c.getCid()%>" class="btn btn-sm btn-danger"> Remove </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                        <tr>
                            <td>Total Price</td>
                            <td></td>
                            <td></td>
                            <td><%=totalPrice%></td>
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
                    <form class="row g-3" action="order" method="post">
                        <input type="hidden" value="${userobj.id}" name="id">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4" class="form-label">Name</label>
                            <input type="text" class="form-control" id="inputEmail4" value="${userobj.name}" name="username" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4" class="form-label">Email</label>
                            <input type="email" class="form-control" id="inputPassword4" value="${userobj.email}" name="email" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="inputEmail4" class="form-label">Phone Number</label>
                            <input type="number" class="form-control" id="inputEmail4" value="${userobj.phone}" name="phone" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4" class="form-label">Adress</label>
                            <input type="text" class="form-control" id="inputPassword4" name="address" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="inputEmail4" class="form-label">Landmark</label>
                            <input type="text" class="form-control" id="inputEmail4" name="landmark" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4" class="form-label">City</label>
                            <input type="text" class="form-control" id="inputPassword4" name="city" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="inputEmail4" class="form-label">State</label>
                            <input type="text" class="form-control" id="inputEmail4" name="state" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4" class="form-label">Pin code</label>
                            <input type="text" class="form-control" id="inputPassword4" name="pincode" required>
                        </div>


                        <div class="form-group">
                            <label>Payment Type</label>
                            <select class="form-control" name="paymentType">
                                <option value="noselect">--Select--</option>
                                <option value="COD">Cash On Delivery</option>
                            </select>
                        </div>

                        <div class="text-center">
                            <button class="btn btn-warning">Order Now</button>
                            <a href="index.jsp" class="btn btn-success"> Continue Shopping </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
