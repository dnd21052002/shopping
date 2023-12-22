var common = {
    init: function () {
        common.registerEvents();
    },
    registerEvents: function () {
        $("#txtKeyword").autocomplete({
            minLength: 3,
            source: function (request, response) {
                $.ajax({
                    url: "/Product/GetListProductByKeyword",
                    dataType: "json",
                    data: {
                        keyword: request.term
                    },
                    success: function (res) {
                        response(res.data);
                    }
                });
            },
            select: function (event, ui) {
                $("#txtKeyword").val(ui.item.Name);
                return false;
            }
        })
        .autocomplete("instance")._renderItem = function (ul, item) {
            var url = "/san-pham/" + item.Alias + "-" + item.ID;
            ul.addClass("rounded ps-1");
            ul.removeClass("ui-menu");
            return $("<a href='" + url +"' style='font-size: 12px' class='list-group-item py-2'>")
                .append("<img src='" + item.Image + "' width='50' height='50' class='p-0 rounded-circle border-0 me-3' />" + item.Name + "")
            .appendTo(ul);
        };

        $(".btnLogout").off("click").on("click", function (e) {
            e.preventDefault();
            $("#logoutForm").submit();
        });
        
        $('.btnAddToCart').off('click').on('click', function (e) {
            e.preventDefault();
            var productId = parseInt($(this).data('id'));
            var size = $('#productSize_' + productId).val();
            $(".loader-div").show();
            $.ajax({
                url: '/Cart/Add',
                data: {
                    productId: productId,
                    size: size,
                },
                type: 'POST',
                dataType: 'json',
                success: function (res) {
                    $(".loader-div").hide();
                    if (res.status) {
                        toastr.success("Đã thêm sản phẩm vào giỏ hàng!", "Thành công");
                    }
                }
            })
        });

        $('.btnAddToCart2').off('click').on('click', function (e) {
            e.preventDefault();
            var productId = parseInt($(this).data('id'));
            var size = $('#size_' + productId).val();
            $(".loader-div").show();
            $.ajax({
                url: '/Cart/Add',
                data: {
                    productId: productId,
                    size: size,
                },
                type: 'POST',
                dataType: 'json',
                success: function (res) {
                    $(".loader-div").hide();
                    if (res.status) {
                        toastr.success("Đã thêm sản phẩm vào giỏ hàng!", "Thành công");
                    }
                }
            })
        });

        $('.buyNow').off('click').on('click', function (e) {
            var productId = parseInt($(this).data('id'));
            var size = $('#productSize_' + productId).val();
            $.ajax({
                url: '/Cart/Add',
                data: {
                    productId: productId,
                    size: size,
                },
                type: 'POST',
                dataType: 'json',
                success: function (res) {
                    if (res.status) {
                        window.location.href = "/gio-hang";
                    }
                }
            })
        });
        
        document.getElementById("search-form").addEventListener("submit", function (event) {
            var searchInput = document.getElementById("txtKeyword");
            if (searchInput.value.trim() === "") {
                event.preventDefault(); // Ngăn form gửi đi nếu không có từ khóa
            }
        });
    }
}
common.init(); 