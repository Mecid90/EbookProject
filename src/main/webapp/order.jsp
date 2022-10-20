<%@ page import="entity.User" %>
<%@ page import="DAO.BookOrderImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.Book_Order" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Order</title>

    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7">

<%@include file="all_components/navbar.jsp"%>

<c:if test="${empty userobj}">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>

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
        <%
            User us = (User) session.getAttribute("userobj");
            BookOrderImpl dao = new BookOrderImpl(DbConnect.getConnect());
            List<Book_Order> blist = dao.getOrder(us.getEmail());
            for (Book_Order b: blist)
            {
        %>
        <tr>
            <th scope="row"><%=b.getOrderId()%></th>
            <td><%=b.getUsername()%></td>
            <td><%=b.getBookName()%></td>
            <td><%=b.getAuthor()%></td>
            <td><%=b.getPrice()%></td>
            <td><%=b.getPaymentType()%></td>
        </tr>

        <%
            }
        %>

        </tbody>
    </table>
    </table>
</div>

</body>
</html>
