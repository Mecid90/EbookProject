package DAO;

import entity.Book_Order;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class BookOrderImpl implements BookOrderDao {

    private Connection con;

    public BookOrderImpl(Connection con){
        this.con=con;
    }

    @Override
    public int getOrderNo() {
        int i = 0;

        try{

            String sql = "select * from book_order";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                i++;
            }


        }catch (Exception e){
            e.printStackTrace();
        }

        return i;
    }

    @Override
    public boolean saveOrder(List<Book_Order> b) {
        boolean f = false;

        try{

            String sql = "insert into book_order(order_id,user_name,email,address,phone,book_name,author,price,payment) values(?,?,?,?,?,?,?,?,?)";
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement(sql);

            for (Book_Order blist:b){
                ps.setString(1,blist.getOrderId());
                ps.setString(2,blist.getUsername());
                ps.setString(3,blist.getEmail());
                ps.setString(4,blist.getFullAddress());
                ps.setString(5,blist.getPhone());
                ps.setString(6,blist.getBookName());
                ps.setString(7,blist.getAuthor());
                ps.setDouble(8,blist.getPrice());
                ps.setString(9,blist.getPaymentType());
                ps.addBatch();
            }

            int [] count = ps.executeBatch();
            con.commit();
            f=true;
            con.setAutoCommit(true);

        }catch (Exception e){
            e.printStackTrace();
        }

        return f;
    }
}
