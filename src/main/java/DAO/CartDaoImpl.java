package DAO;

import entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CartDaoImpl implements CartDao {

    Connection con;
    public CartDaoImpl(Connection con){
        this.con=con;
    }

    @Override
    public boolean addCart(Cart c) {

        boolean f=false;

        try{

            String sql="insert into cart(bid,uid,bookName,author,price,total_price) values(?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,c.getBid());
            ps.setInt(2,c.getCid());
            ps.setString(3,c.getBookName());
            ps.setString(4,c.getAuthor());
            ps.setDouble(5,c.getPrice());
            ps.setDouble(6,c.getTotalPrice());
            int i = ps.executeUpdate();

            if(i==1){
                f=true;
            }


        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }
}
