package Servlet;

import DAO.UserDao;
import DAO.UserDaoImpl;
import DbConfig.DbConnect;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            try {

                UserDao dao = new UserDaoImpl(DbConnect.getConnect());

                HttpSession session = request.getSession();

                String email = request.getParameter("email");
                String password = request.getParameter("password");

               // System.out.println(email +" "+password);

                if("admin@gmail.com".equals(email) && "admin".equals(password)){

                    User us = new User();
                    session.setAttribute("userobj",us);
                    response.sendRedirect("admin/home.jsp");
                }else {

                    User us = dao.login(email, password);

                    if (us!=null){
                        session.setAttribute("userobj",us);
                        response.sendRedirect("home.jsp");
                    }else{
                    session.setAttribute("failedMessage","Email and Password Invalid");
                    response.sendRedirect("login.jsp");
                }}
            }catch (Exception e){
                e.printStackTrace();
            }

        }
    }

