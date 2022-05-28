package Controller.web;

import DAO.DAO;
import Entity.Account;
import Entity.Account1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/removeH")
public class removeHeartController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        DAO dao = new DAO();
        HttpSession session = request.getSession();
        Account1 account = (Account1) session.getAttribute("acc");
        String email = account.getEmail();
        dao.deleteHeart(pid, email);
        response.sendRedirect("showHeart");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
