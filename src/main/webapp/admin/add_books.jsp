
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Admin: Add Books</title>
    <%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
<%@include file="navbar.jsp"%>

<div class="container p-3">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Add Book</h4>
                    <c:if test="${not empty successMessage}">
                        <p class="text-center text-success">${successMessage}</p>
                        <c:remove var="successMessage" scope="session"/>
                    </c:if>

                    <c:if test="${not empty failedMessage}">
                        <p class="text-center text-danger">${failedMessage}</p>
                        <c:remove var="failedMessage" scope="session"/>
                    </c:if>


                    <form action="../add_books" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="InputFullName" class="form-label">Book Name</label>
                            <input type="text" class="form-control" id="InputFullName" aria-describedby="emailHelp" required="required" name="BookName">

                        </div>
                        <div class="form-group">
                            <label for="InputAuthorName" class="form-label">Author Name</label>
                            <input type="text" class="form-control" id="InputAuthorName" aria-describedby="AuthorNameHelp" required="required" name="AuthorName">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="form-group">
                            <label for="InputNumber" class="form-label">Price</label>
                            <input type="number" class="form-control" id="InputNumber" aria-describedby="emailHelp" required="required" name="Price">

                        </div>
                        <div class="form-group">
                            <label for="InputState" class="form-label">Book Categories</label>
                            <select id="InputState" name="categories" class="form-control">
                                <option selected>----Select----</option>
                                <option value="New">New Book</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="InputState1" class="form-label">Book Status</label>
                            <select id="InputState1" name="status" class="form-control">
                                <option selected>----Select----</option>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="ExampleFormControlFile1">Upload Photo</label>
                            <input name="bimg" type="file" class="form-control-file" id="ExampleFormControlFile1">
                        </div>

                        <button type="submit" class="btn btn-primary">Add</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
