package Controller.web;

import DAO.DAO;
import Entity.Account;
import Entity.Account1;
import Entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/subCart")
public class subCartController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id;
        if(request.getParameter("id") != null){
            DAO dao = new DAO();
            id = request.getParameter("id");
            HttpSession session = request.getSession();
            Account1 account = (Account1) session.getAttribute("acc");
            String email = account.getEmail();
            Cart cart = dao.getQuantity(email, id);
            int quantity = cart.getQuantity();
            if(quantity > 1){
                dao.plusCart(quantity - 1, id, email);
            } else {
                dao.deleteCart(id, email);
            }
            response.sendRedirect("showCart");
        } else{
            response.sendRedirect("home");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
