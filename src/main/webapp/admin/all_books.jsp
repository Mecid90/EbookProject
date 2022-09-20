<%@ page import="DAO.BookDaoImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.BookDtls" %>
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
    <title>Admin: All Books</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<c:if test="${empty userobj}">
    <c:redirect url="../login.jsp" />
</c:if>

<h3 class="text-center"> Hello Admin </h3>

<c:if test="${not empty successMessage}">
    <p class="text-center text-success">${successMessage}</p>
    <c:remove var="successMessage"/>
</c:if>

<c:if test="${not empty failedMessage}">
    <p class="text-center text-danger">${failedMessage}</p>
    <c:remove var="failedMessage"/>
</c:if>

<table class="table table-striped">
    <thead class="bg-primary text-white">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Image</th>
        <th scope="col">Book Name</th>
        <th scope="col">Author</th>
        <th scope="col">Price</th>
        <th scope="col">Book Categories</th>
        <th scope="col">Status</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        BookDaoImpl bookDao = new BookDaoImpl(DbConnect.getConnect());
        List<BookDtls> list = bookDao.getAllBooks();

        for (BookDtls b: list){
        %>

    <tr>
        <td> <%= b.getId()%> </td>
        <td><img src="../book/<%= b.getPhoto()%>" style="width: 50px;height: 50px;"> </td>
        <td><%= b.getBookName()%></td>
        <td><%= b.getAuthor()%></td>
        <td><%= b.getPrice()%></td>
        <td><%= b.getBookCategory()%></td>
        <td><%= b.getStatus()%></td>
        <td>
            <a href="edit_books.jsp?id=<%=b.getId()%> " class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Edit</a>
            <a href="../delete?id=<%=b.getId()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i> Delete</a>
        </td>
    </tr>

    <%
        }
    %>

    </tbody>
</table>

</body>
</html>
