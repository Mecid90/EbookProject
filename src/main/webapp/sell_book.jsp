
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Sell Book</title>

    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7">

<%@include file="all_components/navbar.jsp"%>

<c:if test="${empty userobj}">
    <c:redirect url="login.jsp"/>
</c:if>


<div class="container">
        <div class="row p-2">
            <div class="col-md-4 offset-md-4">
                 <div class="card">
                     <div class="card-body">
                         <h5 class="text-center text-primary p-1"> Sell Old Book </h5>

                         <c:if test="${not empty successMessage}">
                             <p class="text-center text-success">${successMessage}</p>
                             <c:remove var="successMessage"/>
                         </c:if>

                         <c:if test="${not empty failedMessage}">
                             <p class="text-center text-danger">${failedMessage}</p>
                             <c:remove var="failedMessage"/>
                         </c:if>

                         <form action="add_old_book" method="post" enctype="multipart/form-data">

                             <input type="hidden" value="${userobj.email}" name="user">

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

                             <div class="form-group p-2">
                                 <label for="ExampleFormControlFile1">Upload Photo</label>
                                 <input name="bimg" type="file" class="form-control-file" id="ExampleFormControlFile1">
                             </div>

                             <div class="p-2">
                             <button type="submit" class="btn btn-primary"> Sell </button>
                             </div>

                         </form>
                     </div>
                 </div>
            </div>
        </div>
</div>

</body>
</html>
