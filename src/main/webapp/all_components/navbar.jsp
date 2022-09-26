<%--<style type="text/css">--%>
<%--    .nav-link:hover {--%>
<%--        background-color: white;--%>
<%--        color: #303f9f;--%>
<%--        border-radius: 20px;--%>
<%--    }--%>
<%--</style>--%>

<div class="container-fluid" style="height: 10px;background-color: #303f9f"></div>

<div class="container-fluid p-3 bg-light">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa-solid fa-book"></i>  Ebooks</h3>
        </div>
        <div class="col-md-6">
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary my-2 my-sm-0" type="submit"> Search</button>
            </form>
        </div>
        <div class="col-md-3">
            <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i>  Login</a>
            <a href="register.jsp" class="btn btn-primary"><i class="fa-solid fa-address-card"></i>  Register</a>
        </div>

    </div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">

    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="index.jsp" ><i class="fas fa-home"></i>  Home</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item active"><a class="nav-link" href="all_recent_book.jsp"><i class="fas fa-book-open"></i>  Recent Book  </a></li>
                <li class="nav-item active"><a class="nav-link" href="all_new_book.jsp"><i class="fas fa-book-open"></i>  New Book  </a></li>
                <li class="nav-item active"><a class="nav-link" href="all_old_book.jsp"><i class="fas fa-book-open"></i>  Old Book  </a></li>
            </ul>

            <form class="form-inline my-2 my-lg-0">
                <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-cog"></i>  Setting  </button>
                <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-phone-square-alt"></i>  Contact Us  </button>
            </form>

        </div>
    </div>
</nav>
