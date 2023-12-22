<%-- 
    Document   : inc_login
    Created on : Dec 22, 2023, 4:31:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container my-5 py-4">
    <section >
      <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-md-9 col-lg-6 col-xl-5">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
              class="img-fluid" alt="Sample image">
          </div>
          <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
              <form action="" method="post">
                
                <h3 style="padding: 15px 0">Đăng nhập</h3>
                <div class="link-danger">${error_login}</div>
              <!-- Email input -->
              <div class="form-outline mb-4">
                  <input type="text" name="emailphone" class="form-control form-control-lg" value="${recentEmail}"/>
                <label class="form-label" for="form3Example3">Email hoặc SĐT</label>
              </div>

              <!-- Password input -->
              <div class="form-outline mb-3">
                <input type="password" name="password" class="form-control form-control-lg" value="${recentPass}"/>
                <label class="form-label" for="form3Example4">Mật khẩu</label>
              </div>

              <div class="d-flex justify-content-between align-items-center">
                <!-- Checkbox -->
                <div class="form-check mb-0">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                  <label class="form-check-label" for="form2Example3">
                    Ghi nhớ đăng nhập
                  </label>
                </div>
                <a href="#!" class="text-body">Quên mật khẩu?</a>
              </div>

              <div class="text-center text-lg-start mt-4 pt-2">
                <button type="submit" class="btn btn-primary btn-lg"
                  style="padding-left: 2.5rem; padding-right: 2.5rem;">Đăng nhập</button>
                <p class="small fw-bold mt-2 pt-1 mb-0">Chưa có tài khoản? <a href="dang-ky"
                    class="link-danger">Đăng ký</a></p>
              </div>

            </form>
          </div>
        </div>
      </div>
    </section>
</div>