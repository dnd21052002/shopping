<%-- 
    Document   : inc_product_home
    Created on : Dec 22, 2023, 8:33:46 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="shopping.data.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="shopping.data.web.ProductData" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    ProductData pd = new ProductData();
    List<Product> listProduct = pd.getAllProduct();
%>


<section>
    <div class="container my-5">
        <header class="mb-4">
            <h3 class="text-uppercase">Sản phẩm mới</h3>
        </header>

        <div class="row">
            <c:forEach var="product" items="<%=listProduct%>">
                <div class="col-lg-3 col-md-6 col-sm-6 d-flex">
                    <div class="card w-100 my-2 shadow-2-strong product-card">
                        <a href="@url" class="img-wrap">
                            <div class="mask" style="height: 50px;">
                                <div class="d-flex justify-content-start align-items-start h-100 m-2">
                                    <h6><span class="badge bg-success pt-2">NEW</span></h6>
                                </div>
                            </div>
                            <img src="./assets/images/${product.image}" class="card-img-top" style="aspect-ratio: 1 / 1">
                        </a>
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title product-name">${product.name}</h5>
                            <p class="card-text">
                                <span class="me-2 fs-5 text-danger fw-bold">$${product.price}</span>
                            </p>
                            <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                <c:if test = "${product.quantity == 0}">
                                    <p class="text-white btn btn-danger m-0">Sản phẩm hết hàng</p>
                                </c:if>
                                <c:if test = "${product.quantity > 0}">
                                    <a data-id="${product.id}" href="#!" class="btnAddToCart btn btn-primary shadow-0 me-1">Thêm vào giỏ</a>
                                </c:if>
<!--                                @if (item.Quantity == 0)
                                {
                                    <p class="text-white btn btn-danger m-0">Sản phẩm hết hàng</p>
                                }
                                else
                                {
                                    <a data-id="@item.ID" href="#!" class="btnAddToCart btn btn-primary shadow-0 me-1">Thêm vào giỏ</a>
                                    var sizes = item.Sizes.Split(',');
                                    var selectId = $"productSize_{item.ID}";
                                    <select class="btn btn-outline-info" id="@selectId">
                                        @foreach (var size in sizes)
                                        {
                                            <option value="@size">@size</option>
                                        }
                                    </select>
                                }-->
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
<!--            @foreach (var item in Model.Where(x => x.HomeFlag == true && x.Status == true).OrderByDescending(x=>x.CreatedDate).Take(8))
            {
                var url = "/san-pham/" + item.Alias + "-" + item.ID;
                <div class="col-lg-3 col-md-6 col-sm-6 d-flex">
                    <div class="card w-100 my-2 shadow-2-strong product-card">
                        <a href="@url" class="img-wrap">
                            <div class="mask" style="height: 50px;">
                                <div class="d-flex justify-content-start align-items-start h-100 m-2">
                                    <h6><span class="badge bg-success pt-2">NEW</span></h6>
                                </div>
                            </div>
                            <img src="@item.Image" class="card-img-top" style="aspect-ratio: 1 / 1">
                        </a>
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title product-name">@item.Name</h5>
                            <p class="card-text">
                                @if (item.PromotionPrice != null && item.PromotionPrice.Value > 0)
                                {
                                    <span class="text-decoration-line-through me-2 opacity-60">@PriceHelper.FormatCurrency(@item.Price)</span>
                                    <span class="fs-5 text-danger fw-bold">@PriceHelper.FormatCurrency(@item.PromotionPrice ?? 0)</span>
                                }
                                else
                                {
                                    <span class="me-2 fs-5 text-danger fw-bold">@PriceHelper.FormatCurrency(@item.Price)</span>
                                }

                            </p>
                            <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                @if (item.Quantity == 0)
                                {
                                    <p class="text-white btn btn-danger m-0">Sản phẩm hết hàng</p>
                                }
                                else
                                {
                                    <a data-id="@item.ID" href="#!" class="btnAddToCart btn btn-primary shadow-0 me-1">Thêm vào giỏ</a>
                                    var sizes = item.Sizes.Split(',');
                                    var selectId = $"productSize_{item.ID}";
                                    <select class="btn btn-outline-info" id="@selectId">
                                        @foreach (var size in sizes)
                                        {
                                            <option value="@size">@size</option>
                                        }
                                    </select>
                                }
                            </div>
                        </div>
                    </div>
                </div>
            }-->
        </div>
    </div>
<!--    <div class="container my-5">
        <header class="mb-4">
            <h3 class="text-uppercase">Sản phẩm HOT 🔥</h3>
        </header>

        <div class="row">
            @foreach (var item in Model.Where(x => x.HomeFlag == true && x.Status == true && x.HotFlag == true).OrderByDescending(x => x.CreatedDate).Take(8))
            {
                var url = "/san-pham/" + item.Alias + "-" + item.ID;
                <div class="col-lg-3 col-md-6 col-sm-6 d-flex">
                    <div class="card w-100 my-2 shadow-2-strong product-card">
                        <a href="@url" class="img-wrap">
                            <div class="mask" style="height: 50px;">
                                <div class="d-flex justify-content-start align-items-start h-100 m-2">
                                    <h6><span class="badge bg-danger pt-2">HOT</span></h6>
                                </div>
                            </div>
                            <img src="@item.Image" class="card-img-top" style="aspect-ratio: 1 / 1">
                        </a>
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title product-name">@item.Name</h5>
                            <p class="card-text">
                                @if (item.PromotionPrice != null && item.PromotionPrice.Value > 0)
                                {
                                    <span class="text-decoration-line-through me-2 opacity-60">@PriceHelper.FormatCurrency(@item.Price)</span>
                                    <span class="fs-5 text-danger fw-bold">@PriceHelper.FormatCurrency(@item.PromotionPrice ?? 0)</span>
                                }
                                else
                                {
                                    <span class="me-2 fs-5 text-danger fw-bold">@PriceHelper.FormatCurrency(@item.Price)</span>
                                }

                            </p>
                            <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                                @if (item.Quantity == 0)
                                {
                                    <p class="text-white btn btn-danger m-0">Sản phẩm hết hàng</p>
                                }
                                else
                                {
                                    <a data-id="@item.ID" href="#!" class="btn btn-primary shadow-0 me-1 btnAddToCart2">Thêm vào giỏ</a>
                                    var sizes = item.Sizes.Split(',');
                                    <select class="btn btn-outline-info" id="size_@item.ID">
                                        @foreach (var size in sizes)
                                        {
                                            <option value="@size">@size</option>
                                        }
                                    </select>
                                }

                            </div>
                        </div>
                    </div>
                </div>
            }
        </div>
    </div>-->
</section>
