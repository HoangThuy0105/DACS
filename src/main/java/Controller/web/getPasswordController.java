package Controller.web;

import DAO.DAO;
import Entity.Account1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/login-getPassword")
public class getPasswordController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/showLogin").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String cfPass = request.getParameter("cfPass");
        if(!pass.equals(cfPass)){
            request.setAttribute("mess", "*Mật khẩu không trùng khớp");
            request.getRequestDispatcher("Login.jsp").forward(request,response);
        }else {
            DAO dao = new DAO();
            Account1 a = dao.checkAccountExist(email);
            if(a == null){
                request.setAttribute("mess", "*Tài khoản không tồn tại");
                request.getRequestDispatcher("Login.jsp").forward(request,response);
            }else {
                dao.changePassword(pass, email);
                response.sendRedirect("login");
            }
        }
    }
}
