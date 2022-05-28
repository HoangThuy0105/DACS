package Controller.web;

import DAO.DAO;
import Entity.Account;
import Entity.Account1;
import Entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/cart")
public class CartController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id;
        if(request.getParameter("id")!=null){
            id = request.getParameter("id");
            DAO dao = new DAO();
            Cart cartId = dao.checkProduct(id);
            HttpSession session = request.getSession();
            Account1 account = (Account1) session.getAttribute("acc");
            if (account != null){
                String email = account.getEmail();
                Cart cartUser = dao.checkUser(email);
                if(cartUser == null){
                    dao.insertCart(email, id);
                } else {
                    if(cartId != null){
                        Cart cart = dao.getQuantity(email, id);
                        int quantity = cart.getQuantity();
                        dao.plusCart(quantity + 1, id, email);
                    }else{
                        dao.insertCart(email, id);
                    }
                }

            }
            response.sendRedirect("showCart");
        } else{
            response.sendRedirect("home");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
