package Servlet;

import DAO.BookOrderImpl;
import DAO.CartDaoImpl;
import DbConfig.DbConnect;
import entity.Book_Order;
import entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try{
            HttpSession session = req.getSession();

            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("username");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String address = req.getParameter("address");
            String landmark = req.getParameter("landmark");
            String city = req.getParameter("city");
            String state = req.getParameter("state");
            String pincode = req.getParameter("pincode");
            String paymentType = req.getParameter("paymentType");

            String fullAddress = address+","+landmark+","+city+","+state+","+pincode;

//            System.out.println(name+" "+email+" "+phone+" "+fullAddress+" "+paymentType);

            CartDaoImpl dao = new CartDaoImpl(DbConnect.getConnect());
            List<Cart> blist = dao.getBookByUser(id);
            BookOrderImpl dao2 = new BookOrderImpl(DbConnect.getConnect());
            Book_Order o = null;

            ArrayList<Book_Order> orderList = new ArrayList<>();

            Random r = new Random();
            for (Cart list: blist){
                o=new Book_Order();
                o.setOrderId("BOOK-ORD-00" + r.nextInt(1000));
                o.setUsername(name);
                o.setEmail(email);
                o.setPhone(phone);
                o.setFullAddress(fullAddress);
                o.setBookName(list.getBookName());
                o.setAuthor(list.getAuthor());
                o.setPrice(list.getPrice());
                o.setPaymentType(paymentType);
                orderList.add(o);

            }

            if("noselect".equals(paymentType)){
                session.setAttribute("failedMessage","Choose Payment Method");
                resp.sendRedirect("checkout.jsp");

            }else {
                boolean f = dao2.saveOrder(orderList);

                if (f){
                    resp.sendRedirect("order_success.jsp");
                }else {
                    session.setAttribute("failedMessage","Your Order Failed");
                    resp.sendRedirect("checkout.jsp");
                }
            }

        }catch (Exception e){
            e.printStackTrace();
        }


    }
}
