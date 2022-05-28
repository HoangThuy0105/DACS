package Controller.web;

import DAO.DAO;
import Entity.Account;
import Entity.Account1;
import Entity.Oder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/showOrder")
public class showOderController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account1 account = (Account1) session.getAttribute("acc");
        String email = account.getEmail();
        DAO dao = new DAO();
        List<Oder> list = dao.getOderByUser(email);
        request.setAttribute("listO", list);
        request.getRequestDispatcher("views/web/Order.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
