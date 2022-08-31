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
<html>
<head>
    <title>Admin: All Books</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

<h3 class="text-center"> Hello Admin </h3>

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
        <td><%= b.getbookName()%></td>
        <td><%= b.getAuthor()%></td>
        <td><%= b.getPrice()%></td>
        <td><%= b.getBookCategory()%></td>
        <td><%= b.getStatus()%></td>
        <td>
            <a href="#" class="btn btn-sm btn-primary">Edit</a>
            <a href="#" class="btn btn-sm btn-danger">Delete</a>
        </td>
    </tr>

    <%
        }
    %>
    <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>
            <a href="#" class="btn btn-sm btn-primary">Edit</a>
            <a href="#" class="btn btn-sm btn-danger">Delete</a>
        </td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <td>Otto</td>
        <td>@mdo</td>
        <a href="#" class="btn btn-sm btn-primary">Edit</a>
        <a href="#" class="btn btn-sm btn-danger">Delete</a>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td>Larry</td>
        <td>the Bird</td>
        <td>@twitter</td>
        <td>Otto</td>
        <td>@mdo</td>
        <a href="#" class="btn btn-sm btn-primary">Edit</a>
        <a href="#" class="btn btn-sm btn-danger">Delete</a>
    </tr>
    </tbody>
</table>

</body>
</html>
