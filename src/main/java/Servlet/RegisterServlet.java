package Servlet;

import DAO.UserDaoImpl;
import DbConfig.DbConnect;
import entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            try {
                String name = request.getParameter("fname");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String password = request.getParameter("password");
                String check = request.getParameter("check");

               // System.out.println(name+" "+email+" "+phone+" "+password+" "+check);

                User us = new User();
                us.setName(name);
                us.setEmail(email);
                us.setPhone(phone);
                us.setPassword(password);

                HttpSession httpSession=request.getSession();

                if(check!=null){
                    UserDaoImpl dao = new UserDaoImpl(DbConnect.getConnect());
                    boolean f=dao.UserRegister(us);
                    if(f){
                       // System.out.println("User register success...");

                        httpSession.setAttribute("successMessage","User register success...");
                        response.sendRedirect("register.jsp");
                    }else{
                        //System.out.println("Something went wrong...");

                        httpSession.setAttribute("failedMessage","Something went wrong...");
                        response.sendRedirect("register.jsp");
                    }
                }else {
                    //System.out.println("Check Agree and Terms condition...");

                    httpSession.setAttribute("failedMessage","Check Agree and Terms condition...");
                    response.sendRedirect("register.jsp");
                }



            }catch (Exception e){
                e.printStackTrace();
            }
    }
}
