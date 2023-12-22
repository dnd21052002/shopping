<%-- 
    Document   : inc_register
    Created on : Dec 22, 2023, 8:26:38 PM
    Author     : ndiep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container my-4">
<section>
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div>
          <div class="p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <h3 class="text-center">Đăng ký</h3>
                <span style="color: red">${exist_user}</span>

                <form action="" method="post" class="mx-1 mx-md-4" accept-charset="UTF-8">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" name="name" class="form-control" required/>
                      <label class="form-label">Tên bạn</label>
                    </div>
                  </div>

                    <span style="color: red">${err_email}</span>
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="email" name="email" class="form-control" required/>
                      <label class="form-label">Email</label>
                    </div>
                  </div>
                  
                    <span style="color: red">${err_phone}</span>
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-phone fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" name="phone" class="form-control" required/>
                      <label class="form-label">Số điện thoại</label>
                    </div>
                    
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" name="password" class="form-control" required/>
                      <label class="form-label">Mật khẩu</label>
                    </div>
                  </div>
                  
                  <span style="color: red">${err_repassword}</span>
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" name="repassword" class="form-control" required/>
                      <label class="form-label">Nhập lại mật khẩu</label>
                    </div>
                  </div>

                  <div class="d-flex justify-content-center mx-4 mb-lg-3">
                    <button type="submit" class="btn btn-primary btn-lg">Đăng ký</button>
                  </div>
                    
                  <p class="small fw-bold p-0 mb-0 text-center">Đã có tài khoản? <a href="dang-nhap"
                    class="link-danger">Đăng nhập</a></p>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</div>
