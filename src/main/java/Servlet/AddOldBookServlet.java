package Servlet;

import DAO.BookDaoImpl;
import DbConfig.DbConnect;
import entity.BookDtls;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;


@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            String name = request.getParameter("BookName");
            String author = request.getParameter("AuthorName");
            String price = request.getParameter("Price");
            String categories ="Old";
            String status ="Active";
            Part part = request.getPart("bimg");
            String fileName = part.getSubmittedFileName();
            String userEmail = request.getParameter("user");

            BookDtls bookDtls = new BookDtls(name, author, price, categories, status, fileName,userEmail);


            BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());

//            String path = getServletContext().getRealPath("") + "book";
//
//            System.out.println(path);


            boolean f = dao.addBooks(bookDtls);

            HttpSession session = request.getSession();

            if (f) {

                String path = getServletContext().getRealPath("") + "book";

                File file = new File(path);

                part.write(path + File.separator + fileName);

                session.setAttribute("successMessage", "Book added successfully");
                response.sendRedirect("sell_book.jsp");

            } else {

                session.setAttribute("failedMessage", "Something went wrong");
                response.sendRedirect("sell_book.jsp");
            }
//
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
