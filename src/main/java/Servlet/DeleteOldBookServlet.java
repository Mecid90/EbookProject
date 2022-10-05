package Servlet;

import DAO.BookDaoImpl;
import DbConfig.DbConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delete_old_book")
public class DeleteOldBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        try {

        String email = req.getParameter("em");
        int id = Integer.parseInt(req.getParameter("id"));

        BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());

            boolean f = dao.deleteOldBook(email,"Old",id);


            HttpSession session = req.getSession();

            if (f){

                session.setAttribute("successMessage","Old Book Delete Successfully");
                resp.sendRedirect("old_book.jsp");

            }else{

                session.setAttribute("successMessage","Something Wrong on Server");
                resp.sendRedirect("old_book.jsp");

            }


        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
