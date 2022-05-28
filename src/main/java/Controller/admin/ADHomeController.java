package Controller.admin;

import DAO.DAO;
import Entity.Account1;
import Entity.Oder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/admin-home")
public class ADHomeController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        int count = dao.getTotalAcc();
        int countP = dao.getTotalProduct(1) + dao.getTotalProduct(0);
        int countO = dao.getTotalOrder();
        double total = 0;
        List<Oder> list = dao.getOder();
        for(Oder o : list){
            total = total + o.getTotal();
        }
        double total1 = total*0.000001;
        double total2 =(double) Math.round(total1*100)/100;
        double profit = total*0.000001*0.6;
        double profit1 =(double) Math.round(profit*100)/100;
        request.setAttribute("totalAcc", count);
        request.setAttribute("totalP", countP);
        request.setAttribute("totalO", countO);
        request.setAttribute("total", total2);
        request.setAttribute("profit", profit1);
        request.getRequestDispatcher("views/admin/ADHome.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
