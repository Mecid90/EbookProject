<%@ page import="DAO.BookDaoImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 24.09.2022
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>All Recent Books</title>
    <%@include file="all_components/allCss.jsp"%>
    <style type="text/css">
        .crd-ho:hover {
            background-color: #fcf7f7;
        }

        #snackbar {
            visibility: hidden; /* Hidden by default. Visible on click */
            min-width: 250px; /* Set a default minimum width */
            margin-left: -125px; /* Divide value of min-width by 2 */
            background-color: #333; /* Black background color */
            color: #fff; /* White text color */
            text-align: center; /* Centered text */
            border-radius: 2px; /* Rounded borders */
            padding: 16px; /* Padding */
            position: fixed; /* Sit on top of the screen */
            z-index: 1; /* Add a z-index if needed */
            left: 50%; /* Center the snackbar */
            bottom: 30px; /* 30px from the bottom */
        }

        /* Show the snackbar when clicking on a button (class added with JavaScript) */
        #snackbar.show {
            visibility: visible; /* Show the snackbar */
            /* Add animation: Take 0.5 seconds to fade in and out the snackbar.
            However, delay the fade out process for 2.5 seconds */
            -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
            animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }

        /* Animations to fade the snackbar in and out */
        @-webkit-keyframes fadein {
            from {bottom: 0; opacity: 0;}
            to {bottom: 30px; opacity: 1;}
        }

        @keyframes fadein {
            from {bottom: 0; opacity: 0;}
            to {bottom: 30px; opacity: 1;}
        }

        @-webkit-keyframes fadeout {
            from {bottom: 30px; opacity: 1;}
            to {bottom: 0; opacity: 0;}
        }

        @keyframes fadeout {
            from {bottom: 30px; opacity: 1;}
            to {bottom: 0; opacity: 0;}
        }
    </style>
</head>
<body>

<%
    User u = (User)session.getAttribute("userobj");
%>

<c:if test="${not empty addCart}">
    <!-- Use a button to open the snackbar -->
<%--   <button onclick="myFunction()">Show Snackbar</button>--%>

    <!-- The actual snackbar -->
    <div class="show" id="snackbar">${addCart}</div>
    <script type="text/javascript">
    function myFunction() {
    // Get the snackbar DIV
    var x = document.getElementById("snackbar");

    // Add the "show" class to DIV
    x.className = "show";

    // After 3 seconds, remove the show class from DIV
    // setTimeout(function(){ x.className = x.className.replace("show", ""); }, 1000);
    }
    </script>

<c:remove var="addCart" scope="session"/>
</c:if>

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
                    <img alt="" src="book/<%=b.getPhoto()%>" style="width: 100px; height: 150px" class="img-thumbnail">
                    <p><%=b.getBookName()%></p>
                    <p><%=b.getAuthor()%></p>
                    <p>Categories:<%=b.getBookCategory()%></p>
                    <div class="row">
                        <div class="col-ml-2">
                        <%
                            if(u==null){%>
                        <a href="login.jsp" class="btn btn-danger btn-sm ml-lg-2"> <i class="fas fa-cart-plus"></i> Add Cart</a>
                        <%
                        }else{%>
                        <a href="cart?bid=<%=b.getId() %>&&uid=<%= u.getId()%>" class="btn btn-danger btn-sm ml-lg-2"> <i class="fas fa-cart-plus"></i> Add Cart</a>
                        <%
                            }
                        %>
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

