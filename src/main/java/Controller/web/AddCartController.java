package Controller.web;

import DAO.DAO;
import Entity.Account1;
import Entity.Cart;
import Entity.Heart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//add product Cart
@WebServlet(urlPatterns = "/addC")
public class AddCartController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if(id != null){
            DAO dao = new DAO();
            Cart cartId = dao.checkProduct(id);
            HttpSession session = request.getSession();
            Account1 account = (Account1) session.getAttribute("acc");
            if (account != null){
                String email = account.getEmail();
                Cart cartUser = dao.checkUser(email);
                Heart heart = dao.getQuantityH(email, id);
                if(cartUser == null){
                    dao.AddCart(email, id, heart.getQuantity());
                    dao.deleteHeart(id, email);
                } else {
                    if(cartId != null){
                        Cart cart = dao.getQuantity(email, id);
                        int quantity = cart.getQuantity();
                        dao.plusCart(quantity + heart.getQuantity(), id, email);
                        dao.deleteHeart(id, email);
                    }else{
                        dao.AddCart(email,id, heart.getQuantity());
                        dao.deleteHeart(id, email);
                    }
                }

            }
            response.sendRedirect("showCart");
        } else{
            response.sendRedirect("showHeart");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
