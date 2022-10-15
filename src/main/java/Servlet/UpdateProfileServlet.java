package Servlet;

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
@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("fname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");

            User us = new User();
            us.setId(id);
            us.setName(name);
            us.setEmail(email);
            us.setPhone(phone);

            HttpSession httpSession = request.getSession();

            UserDaoImpl dao = new UserDaoImpl(DbConnect.getConnect());
            boolean f = dao.checkPassword(id,password);


            if (f){
                boolean f2=dao.updateProfile(us);

                if (f2){
                    httpSession.setAttribute("successMessage","Profile updated successfully");
                    response.sendRedirect("edit_profile.jsp");

                }else{
                    httpSession.setAttribute("failedMessage","Something wrong on server");
                    response.sendRedirect("edit_profile.jsp");

                }

            }else{
                httpSession.setAttribute("failedMessage","Your password is incorrect");
                response.sendRedirect("edit_profile.jsp");
            }

        }catch (Exception e){
            e.printStackTrace();
        }


    }
}
