package Controller.web;

import DAO.DAO;
import Entity.Account;
import Entity.Account1;
import Entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/showHeart")
public class ShowHeartController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account1 account = (Account1) session.getAttribute("acc");
        String email = account.getEmail();
        DAO dao = new DAO();
        List<Product> list = dao.getHeartByID(email);
        request.setAttribute("listH", list);
        request.getRequestDispatcher("views/web/Heart.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
