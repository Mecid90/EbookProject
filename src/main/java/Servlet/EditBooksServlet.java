package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

        }catch (Exception e){
            e.printStackTrace();
        }


    }


}
