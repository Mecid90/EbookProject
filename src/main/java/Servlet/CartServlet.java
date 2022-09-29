package Servlet;

import DAO.BookDaoImpl;
import DAO.CartDaoImpl;
import DbConfig.DbConnect;
import entity.BookDtls;
import entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        try{

            int bid = Integer.parseInt(req.getParameter("bid"));
            int uid = Integer.parseInt(req.getParameter("uid"));

            BookDaoImpl dao = new BookDaoImpl(DbConnect.getConnect());
            BookDtls b = dao.getBookById(bid);

            Cart c = new Cart();
            c.setBid(bid);
            c.setUid(uid);
            c.setBookName(b.getBookName());
            c.setAuthor(b.getAuthor());
            c.setPrice(Double.parseDouble(b.getPrice()));
            c.setTotalPrice(Double.parseDouble(b.getPrice()));

            CartDaoImpl dao2 = new CartDaoImpl(DbConnect.getConnect());
            boolean f = dao2.addCart(c);

            HttpSession session = req.getSession();

            if (f){

//                System.out.println("Add cart success");
                session.setAttribute("addCart","Book Added To Cart");
                resp.sendRedirect("all_new_book.jsp");

            }else {

//                System.out.println("something wrong");
                session.setAttribute("failed","Something wrong on the server");
                resp.sendRedirect("all_new_book.jsp");
            }




        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
