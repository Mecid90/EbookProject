<%@ page import="DAO.BookDaoImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.BookDtls" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 24.09.2022
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Recent Books</title>
    <%@include file="allCss.jsp"%>
    <style type="text/css">
        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body>
<%@include file="/all_components/navbar.jsp"%>

<div class="container-fluid">
    <div class="row p-3">
        <%
            BookDaoImpl bookDao = new BookDaoImpl(DbConnect.getConnect());
            List<BookDtls> list = bookDao.getAllNewBook();
            for (BookDtls b: list) {
        %>
        <div class="col-md-3">
            <div class="card crd-ho mt-2">
                <div class="card-body text-center">
                    <img alt="" src="../book/<%=b.getPhoto()%>" style="width: 100px; height: 150px" class="img-thumbnail">
                    <p><%=b.getBookName()%></p>
                    <p><%=b.getAuthor()%></p>
                    <p>Categories:<%=b.getBookCategory()%></p>
                    <div class="row">
                        <div class="col-ml-2">
                            <a href="" class="btn btn-danger btn-sm ml-lg-2"> <i class="fas fa-cart-plus"></i> Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-lg-1"> <i class="fa-regular fa-eye"></i> View Details</a>
                            <a href="" class="btn btn-success btn-sm ml-lg-1"> <%=b.getPrice()%> <i class="fa-solid fa-manat-sign"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
                </div>
            </div>
</body>
</html>

