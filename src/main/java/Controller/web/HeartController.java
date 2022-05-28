package Controller.web;

import DAO.DAO;
import Entity.Account;
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

@WebServlet(urlPatterns = "/heart")
public class HeartController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id;
        if(request.getParameter("id")!=null){
            id = request.getParameter("id");
            DAO dao = new DAO();
            Heart heartId = dao.checkProductH(id);
            HttpSession session = request.getSession();
            Account1 account = (Account1) session.getAttribute("acc");
            if (account != null){
                String email = account.getEmail();
                Heart heartUser = dao.checkUserH(email);
                if(heartUser == null){
                    dao.insertHeart(email, id);
                } else {
                    if(heartId != null){
                        Heart heart = dao.getQuantityH(email, id);
                        int quantity = heart.getQuantity();
                        dao.plusHeart(quantity + 1, id, email);
                    }else{
                        dao.insertHeart(email, id);
                    }
                }

            }
            response.sendRedirect("showHeart");
        } else{
            response.sendRedirect("home");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
}
