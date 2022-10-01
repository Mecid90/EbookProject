package Servlet;

import DAO.CartDao;
import DAO.CartDaoImpl;
import DbConfig.DbConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/remove_book")
public class RemoveBookFromCartSevlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int bid = Integer.parseInt(req.getParameter("bid"));
        int uid = Integer.parseInt(req.getParameter("uid"));

        CartDaoImpl dao = new CartDaoImpl(DbConnect.getConnect());
        try {
            boolean f = dao.deleteBook(bid,uid);

            HttpSession session = req.getSession();

            if (f){

                session.setAttribute("successMessage","Book Removed From Cart");
                resp.sendRedirect("checkout.jsp");

            }else{

                session.setAttribute("failedMessage","Something Wrong On Server");
                resp.sendRedirect("checkout.jsp");

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
