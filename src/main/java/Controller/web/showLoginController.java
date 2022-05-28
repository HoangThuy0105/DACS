package Controller.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/showLogin")
public class showLoginController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] arr = request.getCookies();
        for(Cookie o : arr){
            if(o.getName().equals("user")){
                request.setAttribute("username", o.getValue());
            }
            if(o.getName().equals("pass")){
                request.setAttribute("password", o.getValue());
            }
        }
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    }
}
