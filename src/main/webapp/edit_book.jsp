<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 03.10.2022
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Book</title>

    <%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7">

<%@include file="all_components/navbar.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
               <div class="card-body">
                   <form action="" method="post">
                       <div class="mb-3">
                           <label for="InputFullName" class="form-label">Enter Full Name</label>
                           <input type="text" class="form-control" id="InputFullName" aria-describedby="emailHelp" required="required" name="fname">

                       </div>
                       <div class="mb-3">
                           <label for="InputEmail" class="form-label">Email address</label>
                           <input type="email" class="form-control" id="InputEmail" aria-describedby="emailHelp" required="required" name="email">
                           <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                       </div>
                       <div class="mb-3">
                           <label for="InputNumber" class="form-label">Phone Number</label>
                           <input type="number" class="form-control" id="InputNumber" aria-describedby="emailHelp" required="required" name="phone">

                       </div>
                       <div class="mb-3">
                           <label for="InputPassword" class="form-label">Password</label>
                           <input type="password" class="form-control" id="InputPassword" required="required" name="password">
                       </div>
                        <div class="text-center p-2">
                       <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                   </form>
               </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
