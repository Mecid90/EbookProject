<%@ page import="DAO.BookDaoImpl" %>
<%@ page import="DbConfig.DbConnect" %>
<%@ page import="entity.BookDtls" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>


<html>
<head>
    <title>Admin: Edit Books </title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container p-3">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Edit Book</h4>

                    <%
                        int id =Integer.parseInt(request.getParameter("id"));

                        BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());
                        BookDtls b=dao.getBookById(id);
                    %>


                    <form action="../edit_books" method="post">
                        <input type="hidden" name="id" value="<%=b.getId()%>">
                        <div class="mb-3">
                            <label for="InputFullName" class="form-label">Book Name</label>
                            <input type="text" class="form-control" id="InputFullName" aria-describedby="emailHelp" required="required" name="BookName" value="<%=b.getBookName()%>">
                        </div>
                        <div class="form-group">
                            <label for="InputAuthorName" class="form-label">Author Name</label>
                            <input type="text" class="form-control" id="InputAuthorName" aria-describedby="AuthorNameHelp" required="required" name="AuthorName" value="<%=b.getAuthor()%>">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="form-group">
                            <label for="InputNumber" class="form-label">Price</label>
                            <input type="number" class="form-control" id="InputNumber" aria-describedby="emailHelp" required="required" name="Price" value="<%=b.getPrice()%>">

                        </div>

                        <div class="form-group">
                            <label for="InputState1" class="form-label">Book Status</label>
                            <select id="InputState1" name="status" class="form-control">
                                <%
                                if ("Active".equals(b.getStatus())){
                                %>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                                <%
                                }else{%>
                                <option value="Inactive">Inactive</option>
                                <option value="Active">Active</option>
                               <% }
                                %>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Update</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%--<div class="container p-3">--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-4 offset-md-4">--%>
<%--            <div class="card">--%>
<%--                <div class="card-body">--%>
<%--                    <h4 class="text-center">Edit Book</h4>--%>


<%--                    <form action="../edit_books" method="post">--%>
<%--                      <input type="hidden" name="id" value="<%=b.getId()%>">--%>
<%--                        <div class="mb-3">--%>
<%--                            <label for="InputFullName" class="form-label">Book Name</label>--%>
<%--                            <input type="text" class="form-control" id="InputFullName" aria-describedby="emailHelp" required="required" name="BookName" value="<%=b.getBookName()%>">--%>

<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="InputAuthorName" class="form-label">Author Name</label>--%>
<%--                            <input type="text" class="form-control" id="InputAuthorName" aria-describedby="AuthorNameHelp" required="required" name="AuthorName" value="<%=b.getAuthor()%>">--%>
<%--                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="InputNumber" class="form-label">Price</label>--%>
<%--                            <input type="number" class="form-control" id="InputNumber" aria-describedby="emailHelp" required="required" name="Price">--%>

<%--                        </div>--%>

<%--                        <div class="form-group">--%>
<%--                            <label for="InputState1" class="form-label">Book Status</label>--%>
<%--                            <select id="InputState1" name="status" class="form-control">--%>
<%--                                <%--%>
<%--                                %>if ("Active".equals(b.getStatus())){--%>

<%--                                <option value="Active">Active</option>--%>
<%--                                <option value="Inactive">Inactive</option>--%>

<%--                                }else{--%>
<%--                                <option value="Inactive">Inactive</option>--%>
<%--                                <option value="Active">Active</option>--%>
<%--                                }<%--%>
<%--                            %>--%>
<%--                            </select>--%>
<%--                        </div>--%>



<%--                        <button type="submit" class="btn btn-primary">Update</button>--%>

<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>



</body>
</html>
