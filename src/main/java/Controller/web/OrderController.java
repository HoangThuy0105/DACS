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

@WebServlet(urlPatterns = "/order")
public class OrderController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account1 account = (Account1) session.getAttribute("acc");
        String email = account.getEmail();
        double total = Double.parseDouble(request.getParameter("total"));
        DAO dao = new DAO();
        String status = "Đơn hàng mới";
        Account1 a = dao.checkAccountExist(email);
        String address = a.getAddress();
        int phoneNumber = a.getPhone();
        if(address == null || phoneNumber == 0){
            response.sendRedirect("account");
        } else{
            dao.addOder(email, status, total);
            dao.deleteCartByUser(email);
            response.sendRedirect("showOrder");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
