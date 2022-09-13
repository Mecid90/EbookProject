package Servlet;

import DAO.BookDaoImpl;
import DbConfig.DbConnect;
import entity.BookDtls;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/edit_books")
public class EditBooksServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        try {

            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("BookName");
            String author = request.getParameter("AuthorName");
            String price = request.getParameter("Price");
            String status = request.getParameter("status");


            BookDtls bookDtls = new BookDtls();
            bookDtls.setId(id);
            bookDtls.setName(name);
            bookDtls.setAuthor(author);
            bookDtls.setPrice(price);
            bookDtls.setStatus(status);

            BookDaoImpl bookDao = new BookDaoImpl(DbConnect.getConnect());
            boolean f = bookDao.updateEditBooks(bookDtls);

            HttpSession session = request.getSession();

            if (f){

                session.setAttribute("successMessage","Book Updated Successfully");
                response.sendRedirect("admin/all_books.jsp");

            }else{

                session.setAttribute("failedMessage","Something wrong on server");
                response.sendRedirect("admin/all_books.jsp");

            }



        }catch (Exception e){
            e.printStackTrace();
        }


    }


}
