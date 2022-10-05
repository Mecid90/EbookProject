<%@ page import="DAO.BookDaoImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>User: Old Book</title>
    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7">

<%@include file="all_components/navbar.jsp"%>

<c:if test="${not empty successMessage}">
    <p class = "text-center text-success">${successMessage}</p>
    <c:remove var="successMessage"/>
</c:if>

<div class="container p-1">

    <h3 class="text-primary text-center">Old Book</h3>
    <table class="table table-striped mt-3">
        <thead class="bg-primary text-white">
        <tr>
            <th scope="col">Book Name</th>
            <th scope="col">Author</th>
            <th scope="col">Price</th>
            <th scope="col">Category</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            User us = (User)session.getAttribute("userobj");
            String email = us.getEmail();
            BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());
            List<BookDtls> list =  dao.getBookByOld(email,"Old");
            for(BookDtls b: list){
        %>
        <tr>
            <td><%=b.getBookName()%></td>
            <td><%=b.getAuthor()%></td>
            <td><%=b.getPrice()%></td>
            <td><%=b.getBookCategory()%></td>
            <td><a href="delete_old_book?em=<%=email%>&&id=<%=b.getId()%>" class="btn btn-sm btn-danger"> Delete </a> </td>
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
