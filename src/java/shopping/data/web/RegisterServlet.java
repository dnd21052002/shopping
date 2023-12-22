/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import shopping.data.dao.Database;
import shopping.data.model.User;
import shopping.utils.Common;

/**
 *
 * @author ndiep
 */
public class RegisterServlet extends HttpServlet {
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("title", "Đăng ký");
        request.getRequestDispatcher("/views/register.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String err_email="", err_phone="", err_repassword="";
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        
        String Email_Regex = "^[a-zA-Z0-9_!#$%&amp;'*+/=?`{|}~^-]+(?:\\.[a-zA-Z0-9_!#$%&amp;'*+/=?`{|}~^-]+)*@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$";
        String Phone_Regex = "^\\d{10}$";
        boolean err = false;
        if(!email.matches(Email_Regex)){
            err_email = "Email không đúng định dạng";
            request.getSession().setAttribute("err_email", err_email);
            err = true;
        }else{
            err_email="";
            request.getSession().removeAttribute("err_email");
        }
        if(!phone.matches(Phone_Regex)){
            err_phone = "SĐT không đúng định dạng";
            request.getSession().setAttribute("err_phone", err_phone);
            err = true;
        }else{
            err_phone="";
            request.getSession().removeAttribute("err_phone");
        }
        if(!repassword.matches(password)){
            err_repassword = "Mật khẩu không khớp";
            request.getSession().setAttribute("err_repassword", err_repassword);
            err = true;
        }else{
            err_repassword="";
            request.getSession().removeAttribute("err_repassword");
        }
        if(err) {
            response.sendRedirect("dang-ky");
        }else{
            if(Database.getUserDao().findUser(email)!=null || Database.getUserDao().findUser(phone)!=null){
                request.getSession().setAttribute("exist_user", "tài khoản đã tồn tại");
                response.sendRedirect("dang-ky");
            }
            else {
                Database.getUserDao().insertUser(name, email, phone, Common.getMd5(password));
                User user = Database.getUserDao().findUser(email);
                request.getSession().setAttribute("user", user);
                request.getSession().removeAttribute("exist_user");
                response.sendRedirect("trang-chu");
            }
        }
    }

}
