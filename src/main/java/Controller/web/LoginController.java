package Controller.web;

import DAO.DAO;
import Entity.Account;
import Entity.Account1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/showLogin").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        DAO dao = new DAO();
        Account1 a = dao.login(username, password);
        if(a==null){
            request.setAttribute("mess", "*Đăng nhập thất bại");
            request.getRequestDispatcher("Login.jsp").forward(request,response);
        }else{
            int position = a.getPosition();
            HttpSession session = request.getSession();
            session.setAttribute("acc",a);
            Cookie user = new Cookie("user", username);
            Cookie pass = new Cookie("pass", password);
            user.setMaxAge(60);
            if(remember != null){
                pass.setMaxAge(60);
            } else {
                pass.setMaxAge(0);
            }
            response.addCookie(user);
            response.addCookie(pass);
            Cookie[] arr = request.getCookies();
            for(Cookie o : arr){
                System.out.println(o.getValue());
            }
            if (position == 1){
                response.sendRedirect("admin-home");
            } else{
                response.sendRedirect("home");
            }
        }
    }
}
