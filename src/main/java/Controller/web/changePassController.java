package Controller.web;

import DAO.DAO;
import Entity.Account1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/changePassword")
public class changePassController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String cfPass = request.getParameter("cfPass");
        if(!pass.equals(cfPass)){
            request.getRequestDispatcher("views/web/Account.jsp").forward(request, response);
        }else {
            DAO dao = new DAO();
            dao.changePassword(pass, email);
            response.sendRedirect("account");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
