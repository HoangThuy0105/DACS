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

@WebServlet(urlPatterns = "/showCart")
public class showCartController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        DAO dao = new DAO();
        HttpSession session = request.getSession();
        Account1 account = (Account1) session.getAttribute("acc");
        String email = account.getEmail();
        List<Product> list = dao.getCartByID(email);
        double total = 0;
        for(Product o : list){
            total = total + o.getPrice() * o.getQuantity();
        }
        request.setAttribute("total", total);
        request.setAttribute("vc", total*0.01);
        request.setAttribute("sum", total*1.01);
        request.setAttribute("listC", list);
        request.getRequestDispatcher("views/web/Cart.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
