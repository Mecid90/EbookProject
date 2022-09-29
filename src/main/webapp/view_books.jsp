<%@ page import="DAO.BookDaoImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.BookDtls" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 26.09.2022
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    
    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">

<%@include file="all_components/navbar.jsp"%>

<%
    int bid = Integer.parseInt(request.getParameter("bid"));
    BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());
    BookDtls b = dao.getBookById(bid);
%>

<div class="container p-3">
    <div class="row p-5">
        <div class="col-md-6 text-center p-5 border bg-white">
            <img src="book/<%=b.getPhoto()%>" style="height: 150px; width: 100px"><br>
            <h4 class="mt-3">Book name:<span class="text-success"><%=b.getBookName()%> </span> </h4>
            <h4>Author name:<span class="text-success"><%=b.getAuthor()%> </span> </h4>
            <h4>Category:<span class="text-success"><%=b.getBookCategory()%> </span> </h4>
        </div>

        <div class="col-md-6 text-center p-5 border bg-white">
            <h2><%=b.getBookName()%></h2>

            <%
                if(b.getBookCategory().equals("Old"))
                {
            %>
            <h5 class="text-primary"> Contact To Seller </h5>
            <h5 class="text-primary">Email: <%=b.getEmail()%></h5>
            <%
                }
            %>

            <div class="row">
                <div class="col-md-4 text-center text-danger p-2">
                    <i class="fa-solid fa-money-bill-wave fa-2x fa-2x"></i>
                    <p>Cash On Delivery</p>
                </div>
                <div class="col-md-4 text-center text-danger p-2">
                    <i class="fa-solid fa-arrow-rotate-left fa-2x"></i>
                    <p> Return Available</p>
                </div>
                <div class="col-md-4 text-center text-danger p-2">
                    <i class="fa-solid fa-truck fa-2x"></i>
                    <p>Free Shipping</p>
                </div>
            </div>

            <%
                if(b.getBookCategory().equals("Old"))
                {
            %>
            <div class="text-center p-3">
                <a href="index.jsp" class="btn btn-success"><i class="fas fa-cart-plus"></i> Continue Shopping</a>
                <a href="" class="btn btn-danger"> 200 <i class="fa-solid fa-manat-sign"></i> </a>
            </div>
            <%
                }else{
            %>
            <div class="text-center p-3">
                <a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add Cart </a>
                <a href="" class="btn btn-danger"> 200 <i class="fa-solid fa-manat-sign"></i> </a>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>

</body>
</html>
