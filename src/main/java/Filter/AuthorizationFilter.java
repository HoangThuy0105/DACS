package Filter;

import Entity.Account1;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthorizationFilter implements Filter {
    private ServletContext context;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request= (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        if(url.startsWith("/admin-home")){
            HttpSession session = request.getSession();
            Account1 account = (Account1) session.getAttribute("acc");
            if(account != null){
                if(account.getPosition() == 1){
                    filterChain.doFilter(servletRequest, servletResponse);
                } else if(account.getPosition() == 0){
                    response.sendRedirect("login");
                }
            }else{
                response.sendRedirect("login");
            }
        } else{
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {
    }
}
