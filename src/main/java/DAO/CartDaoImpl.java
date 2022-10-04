package DAO;

import entity.BookDtls;
import entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDaoImpl implements CartDao {

    Connection con;
    public CartDaoImpl(Connection con){
        this.con=con;
    }

    @Override
    public boolean addCart(Cart c) {

        boolean f=false;

        try{

            String sql="insert into cart(bid,cid,uid,bookName,author,price,total_price) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,c.getBid());
            ps.setInt(2,c.getCid());
            ps.setInt(3,c.getUid());
            ps.setString(4,c.getBookName());
            ps.setString(5,c.getAuthor());
            ps.setDouble(6,c.getPrice());
            ps.setDouble(7,c.getTotalPrice());
            int i = ps.executeUpdate();

            if(i==1){
                f=true;
            }


        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<Cart> getBookByUser(int userId) {
        List<Cart> list = new ArrayList<>();

        double totalPrice=0;

        try{

            String sql="select * from cart where uid=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,userId);

            ResultSet rs = ps.executeQuery();


            while (rs.next()){

                Cart c = new Cart();
                c.setCid(rs.getInt(1));
                c.setBid(rs.getInt(2));
                c.setUid(rs.getInt(3));
                c.setBookName(rs.getString(4));
                c.setAuthor(rs.getString(5));
                c.setPrice(rs.getDouble(6));


                totalPrice = totalPrice + rs.getDouble(7);
                c.setTotalPrice(totalPrice);

                list.add(c);

            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public boolean deleteBook(int bid,int uid,int cid) throws SQLException {

        boolean f = false;

        try{
            String sql="delete from cart where bid=? and uid=? and cid=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,bid);
            ps.setInt(2,uid);
            ps.setInt(3,cid);

            int i = ps.executeUpdate();

            if (i==1){
                f=true;
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return f;
    }
}
