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


@WebServlet("/delete")
public class DeleteBooksServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {

            int id = Integer.parseInt(req.getParameter("id"));

            BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());

            boolean f = dao.deleteBooks(id);

            HttpSession session = req.getSession();

            if (f) {

                session.setAttribute("successMessage", "Book Updated Successfully");
                resp.sendRedirect("admin/all_books.jsp");

            } else {

                session.setAttribute("failedMessage", "Something wrong on server");
                resp.sendRedirect("admin/all_books.jsp");

            }


        } catch (SQLException e) {
            e.printStackTrace();

        }
    }
}
