package Controller.web;

import DAO.DAO;
import Entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/loadMore")
public class LoadMoreController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int gender = 1;
        int amount = Integer.parseInt(request.getParameter("exits"));
        DAO dao = new DAO();
        List<Product> list = dao.getNext8Product(amount+dao.getTotalProduct(gender));
        PrintWriter out = response.getWriter();
        for(Product o : list){
            out.println("        <div class = \"product col-md-3\">\n" +
                    "          <div class = \"product-top\">\n" +
                    "            <img src= \""+o.getImage()+"\">\n" +
                    "            <div class = \"overlay-right\">\n" +
                    "              <button type = \"button\" class= \"btn\" title = \"Quick shop\" onclick=\"window.location.href='detail?pid="+o.getId()+"'\">\n" +
                    "                <i class=\"fas fa-eye\"></i>\n" +
                    "              </button>\n" +
                    "              <button type = \"button\" class= \"btn\" title = \"Add to Wishlist\" onclick=\"window.location.href='heart?id="+o.getId()+"'\">\n" +
                    "                <i class=\"fas fa-heart\"></i>\n" +
                    "              </button>\n" +
                    "              <button type = \"button\" class= \"btn\" title = \"Add to cart\" onclick=\"window.location.href='cart?id="+o.getId()+"'\">\n" +
                    "                <i class=\"fas fa-shopping-cart\"></i>\n" +
                    "              </button>\n" +
                    "            </div>\n" +
                    "          </div>\n" +
                    "          <div class = \"product-bottom text-center\">\n" +
                    "            <i class=\"fas fa-star\"></i>\n" +
                    "            <i class=\"fas fa-star\"></i>\n" +
                    "            <i class=\"fas fa-star\"></i>\n" +
                    "            <i class=\"fas fa-star\"></i>\n" +
                    "            <i class=\"fas fa-star\"></i>\n" +
                    "            <h3>"+o.getName()+"</h3>\n" +
                    "            <h6 style = \"color: grey;\">"+o.getTitle()+"</h6>\n" +
                    "            <h4 style = \"color: red\">"+o.getPrice()+" VND</h4>\n" +
                    "          </div>\n" +
                    "        </div>");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
