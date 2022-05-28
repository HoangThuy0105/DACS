package Controller.web;

import DAO.DAO;
import Entity.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/male")
public class MaleController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        String indexPage = request.getParameter("index");
        if(indexPage == null){
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        int gender = 1;
        int count = dao.getTotalProduct(gender);
        int endPage = count/8;
        if(count % 8 != 0){
            endPage++;
        }
        List<Product> list = dao.getProductMale1(index);
        request.setAttribute("endP", endPage);
        request.setAttribute("listPM", list);
        request.setAttribute("tag", index);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/Product-male.jsp");
        rd.forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
