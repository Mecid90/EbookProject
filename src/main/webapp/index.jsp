<%@ page import="java.sql.Connection" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="DAO.BookDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.BookDtls" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ebook: Index</title>
    <%@include file="all_components/allCss.jsp"%>

    <style type="text/css">
        .back-img{
            background-image: url("img/b.jpg");
            height: 50vh;
            width: 100%;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>

</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_components/navbar.jsp"%>

<div class="container-fluid back-img">
    <h2 class="text-center text-danger">EBook Management System</h2>
</div>


<!-- Start Recent Book -->
<div class="container-fluid">
    <h3 class="text-center">Recent Book</h3>
    <div class="row">
        <%
            BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());
            List<BookDtls> bookDtls = dao.getRecentBook();
            for (BookDtls b: bookDtls) {
        %>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/<%=b.getPhoto()%>" style="width: 150px; height: 200px" class="img-thumbnail">
                    <p><%=b.getBookName()%></p>
                    <p><%=b.getAuthor()%></p>
                    <%
                        if(b.getBookCategory().equals("Old")){
                            %>
                    <p>Categories: <%=b.getBookCategory()%></p>
                            <div class="row">
                                 <div class="col-ml-2">
                            <a href="" class="btn btn-success btn-sm ml-lg-1"> <i class="fa-regular fa-eye"></i> View Details</a>
                            <a href="" class="btn btn-success btn-sm ml-lg-1"><%=b.getPrice()%> <i class="fa-solid fa-manat-sign"></i> </a>
                                 </div>
                             </div>

                        <%}else{
                        %>
                    <p>Categories: <%=b.getBookCategory()%></p>
                    <div class="row">
                        <div class="col-ml-2">
                            <a href="" class="btn btn-danger btn-sm ml-lg-2"> <i class="fas fa-cart-plus"></i> Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-lg-1"> <i class="fa-regular fa-eye"></i> View Details</a>
                            <a href="" class="btn btn-success btn-sm ml-lg-1"><%=b.getPrice()%> <i class="fa-solid fa-manat-sign"></i> </a>
                        </div>
                    </div>
                    <%
                        }
                        %>
                </div>
            </div>
        </div>
        <%
            }
        %>

    </div>
    <div class="text-center p-2 mt-1">
        <a href="" class="btn btn-danger btn-sm">View All</a>
    </div>
</div>
<!-- End Recent Book -->





<!-- Start New Book -->
<div class="container-fluid">
    <h3 class="text-center">New Book</h3>
    <div class="row">
            <%
                BookDaoImpl bookDao = new BookDaoImpl(DbConnect.getConnect());
                List<BookDtls> list = bookDao.getNewBook();
                for (BookDtls b: list) {
            %>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/<%=b.getPhoto()%>" style="width: 150px; height: 200px" class="img-thumbnail">
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
    <div class="text-center mt-1">
        <a href="" class="btn btn-danger btn-sm">View All</a>
    </div>
</div>
<!-- End New Book -->





<!-- Start Old Book -->
<div class="container-fluid">
    <h3 class="text-center">Old Book</h3>
    <div class="row">
        <%
            BookDaoImpl Dao3 = new BookDaoImpl(DbConnect.getConnect());
            List<BookDtls> list3 = Dao3.getOldBook();
            for(BookDtls b:list3){
        %>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/<%=b.getPhoto()%>" style="width: 150px; height: 200px" class="img-thumbnail">
                    <p><%=b.getBookName()%></p>
                    <p><%=b.getAuthor()%></p>
                    <p>Categories: <%=b.getBookCategory()%></p>

                    <div class="row">
                        <div class="col-ml-2">
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





    <div class="text-center p-2 mt-1">
        <a href="" class="btn btn-danger btn-sm">View All</a>
    </div>
</div>
<!-- End Old Book -->

<%@include file="all_components/footer.jsp"%>

</body>
</html>