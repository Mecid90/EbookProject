package DAO;

import entity.Book_Order;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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

    @Override
    public List<Book_Order> getOrder(String email) {

        List<Book_Order> list = new ArrayList<>();
        Book_Order o = null;

        try{

            String sql = "select * from book_order where email=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                o = new Book_Order();
                o.setId(rs.getInt(1));
                o.setOrderId(rs.getString(2));
                o.setUsername(rs.getString(3));
                o.setEmail(rs.getString(4));
                o.setFullAddress(rs.getString(5));
                o.setPhone(rs.getString(6));
                o.setBookName(rs.getString(7));
                o.setAuthor(rs.getString(8));
                o.setPrice(rs.getDouble(9));
                o.setPaymentType(rs.getString(10));
                list.add(o);

            }

        }catch (Exception e){

        }

        return list;
    }

    @Override
    public List<Book_Order> getOrder() {
        List<Book_Order> list = new ArrayList<>();
        Book_Order o = null;

        try{

            String sql = "select * from book_order";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                o = new Book_Order();
                o.setId(rs.getInt(1));
                o.setOrderId(rs.getString(2));
                o.setUsername(rs.getString(3));
                o.setEmail(rs.getString(4));
                o.setFullAddress(rs.getString(5));
                o.setPhone(rs.getString(6));
                o.setBookName(rs.getString(7));
                o.setAuthor(rs.getString(8));
                o.setPrice(rs.getDouble(9));
                o.setPaymentType(rs.getString(10));
                list.add(o);

            }

        }catch (Exception e){

        }

        return list;
    }
}
