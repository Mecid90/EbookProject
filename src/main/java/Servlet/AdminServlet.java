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

@WebServlet("/add_books")
@MultipartConfig
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try{
            String name = request.getParameter("BookName");
            String author = request.getParameter("AuthorName");
            String price = request.getParameter("Price");
            String categories = request.getParameter("categories");
            String status = request.getParameter("status");
            Part part = request.getPart("bimg");
            String fileName = part.getSubmittedFileName();

            BookDtls bookDtls = new BookDtls(name,author,price,categories,status,fileName,"admin");



            BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());

//            String path = getServletContext().getRealPath("") + "book";
//
//            System.out.println(path);


            boolean f = dao.addBooks(bookDtls);

            HttpSession session = request.getSession();

            if(f){

                String path = getServletContext().getRealPath("") + "book";

                File file = new File(path);

                part.write(path + File.separator + fileName);

                session.setAttribute("successMessage","Book added successfully");
                response.sendRedirect("admin/add_books.jsp");

            }else{

                session.setAttribute("failedMessage","Something went wrong");
                response.sendRedirect("admin/add_books.jsp");
            }
//
        }catch (Exception e){
            e.printStackTrace();
        }

    }

}
