<%-- 
    Document   : inc_header
    Created on : Dec 21, 2023, 11:30:05 PM
    Author     : ndiep
--%>

<%@page import="shopping.data.model.Category"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="shopping.data.web.HeaderData" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    HeaderData hd = new HeaderData();
    
    List<Category> listCategory = hd.getAllCate();
%>
<header id="myHeader">
    <!-- Jumbotron -->
    <div class="p-3 text-center bg-white border-bottom">
        <div class="container">
            <div class="row gy-3">
                <!-- Left elements -->
                <div class="col-lg-2 col-sm-12 col-12">
                    <a href="/" class="float-start">
                        <img src="https://cdn.tgdd.vn/2023/12/campaign/DesktopTGDD2023-486x108.png" height="35" />
                    </a>
                </div>
                <!-- Left elements -->
                <!-- Center elements -->
                <div class="order-lg-last col-lg-5 col-sm-8 col-12">
                    <div class="d-flex float-end">
<!--                        @if (Request.IsAuthenticated)
                        {
                            <div class="dropdown">
                                <a class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center dropdown-toggle"
                                   href="#"
                                   role="button"
                                   id="dropdownMenuLink"
                                   data-mdb-toggle="dropdown"
                                   aria-expanded="false">
                                    <i class="fas fa-user-alt m-1 me-md-2"></i>
                                    @ViewBag.User.FullName
                                </a>

                                <ul class="dropdown-menu overflow-hidden" aria-labelledby="dropdownMenuLink">
                                    <li><a class="dropdown-item" href="@Url.Action("AccountInfo", "Account")">Thông tin tài khoản</a></li>
                                    <li><a class="dropdown-item" href="#">Sản phẩm yêu thích</a></li>
                                    @using (Html.BeginForm("Logout", "Account", FormMethod.Post, new {id = "logoutForm"}))
                                    {
                                        <li><a href="#" class="dropdown-item btnLogout">Đăng xuất</a></li>
                                    }
                                </ul>
                            </div>
                        }
                        else
                        {-->
                        <a href="#" class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center">
                           <i class="fas fa-user-alt m-1 me-md-2"></i><p class="d-none d-md-block mb-0">Đăng nhập</p>
                        </a>
                        <!--}-->
                        <a href="/gio-hang" class="border rounded py-1 px-3 nav-link d-flex align-items-center"> <i class="fas fa-shopping-cart m-1 me-md-2"></i><p class="d-none d-md-block mb-0">Giỏ hàng</p> </a>
                    </div>
                </div>
                <!-- Center elements -->
                <!-- Right elements -->
                <div class="col-lg-5 col-md-12 col-12">
                    <form id="search-form" method="get" action="/tim-kiem" class="input-group float-center">
                        <div class="form-outline">
                            <input type="text" id="txtKeyword" name="keyword" class="form-control" />
                            <label class="form-label" for="txtKeyword">Tìm kiếm</label>
                        </div>
                        <button type="submit" class="btn btn-primary shadow-0" id="btnSearch">
                            <i class="fas fa-search"></i>
                        </button>
                    </form>
                </div>
                <!-- Right elements -->
            </div>
        </div>
    </div>
    <!-- Jumbotron -->
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <!-- Container wrapper -->
        <div class="container justify-content-center justify-content-md-between">
            <!-- Toggle button -->
            <button class="navbar-toggler border py-2 text-dark"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarLeftAlignExample"
                    aria-controls="navbarLeftAlignExample"
                    aria-expanded="true"
                    aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Collapsible wrapper -->
            <div class="collapse navbar-collapse" id="navbarLeftAlignExample">
                <!-- Left links -->
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 text-uppercase fw-bold">
                    <li class="nav-item me-4" style="cursor: pointer">
                        <div class="dropdown h-100">
                            <a class="dropdown-toggle text-dark d-block h-100 d-flex align-items-center"
                               id="dropdownMenuButton"
                               data-mdb-toggle="dropdown"
                               aria-expanded="true">
                                Danh mục sản phẩm
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <c:forEach var="category" items="<%= listCategory %>">
                                    <li><a class="dropdown-item fw-bold" href="#">${category.name}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </li>
                        
                    <c:forEach var="category" items="<%= listCategory %>">
                        <li class="nav-item me-4 list-unstyled">
                            <a class="nav-link text-dark menu-link" href="#">${category.name}</a>
                        </li>
                    </c:forEach>
                </ul>
                <!-- Left links -->
            </div>
        </div>
        <!-- Container wrapper -->
    </nav>
    <!-- Navbar -->
    
</header>
