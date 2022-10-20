<%@ page import="DAO.BookOrderImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.Book_Order" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 12.08.2022
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Admin: All Orders</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

<c:if test="${empty userobj}">
    <c:redirect url="../login.jsp" />
</c:if>

<h3 class="text-center"> Hello Admin </h3>

<table class="table table-striped">
    <thead class="bg-primary text-white">
    <tr>
        <th scope="col">Order Id</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Address</th>
        <th scope="col">Phone №</th>
        <th scope="col">Book Name</th>
        <th scope="col">Author</th>
        <th scope="col">Price</th>
        <th scope="col">Payment Type</th>
    </tr>
    </thead>
    <tbody>

    <%
        BookOrderImpl dao = new BookOrderImpl(DbConnect.getConnect());
        List<Book_Order> blist = dao.getOrder();

        for (Book_Order b: blist){
    %>

    <tr>
        <th scope="row"><%=b.getOrderId()%></th>
        <td><%=b.getUsername()%></td>
        <td><%=b.getEmail()%></td>
        <td><%=b.getFullAddress()%></td>
        <td><%=b.getPhone()%></td>
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

</body>
</html>
