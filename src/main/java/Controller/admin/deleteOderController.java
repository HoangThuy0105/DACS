package Controller.admin;

import DAO.DAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/deleteOrder")
public class deleteOderController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html:charset=UTF-8");
        int pid = Integer.parseInt(request.getParameter("pid"));
        DAO dao = new DAO();
        dao.deleteOrder(pid);
        response.sendRedirect("admin-oder");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{}
}
