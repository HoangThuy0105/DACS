package Controller.web;

import DAO.DAO;
import Entity.Account;
import Entity.Account1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/signup")
public class SignupController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html:charset=UTF-8");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repass = request.getParameter("repass");

        if(!password.equals(repass)){
            request.setAttribute("mess", "*Đăng kí thất bại");
            request.getRequestDispatcher("Signup.jsp").forward(request, response);
        }else {
            DAO dao = new DAO();
            Account1 a = dao.checkAccountExist(email);
            if(a == null){
                dao.signup(email,fullname, password);
                response.sendRedirect("login");
            }else {
                request.setAttribute("mess", "*Email đã được sử dụng");
                request.getRequestDispatcher("Signup.jsp").forward(request, response);
            }
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    }
}
