package Controller.admin;

import DAO.DAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/admin-edit")
public class EditController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html:charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String title = request.getParameter("title");
        String color = request.getParameter("color");
        String image = request.getParameter("image");
        String price1 = request.getParameter("price");
        String gender1 = request.getParameter("gender");
        double price = Double.parseDouble(price1);
        int gender = Integer.parseInt(gender1);
        DAO dao = new DAO();
        dao.editProduct(name, price, title, color, gender, image, id);

        RequestDispatcher rd = request.getRequestDispatcher("admin-product");
        rd.forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{}
}

