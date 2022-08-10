package DAO;

import com.mysql.jdbc.util.ReadAheadInputStream;
import entity.User;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDaoImpl implements UserDao {

    private Connection conn;

    public UserDaoImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean UserRegister(User us) {

        boolean f =false;
        try{
            String sql = "insert into user(name,email,phone,password) values(?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1,us.getName());
            pst.setString(2,us.getEmail());
            pst.setString(3,us.getPhone());
            pst.setString(4,us.getPassword());

            int i = pst.executeUpdate();
            if (i==1){
                f=true;
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public User login(String email, String password) {

        User us = null;

        try{

            String sql ="select * from user where email=? and password=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1,email);
            pst.setString(2,password);

            ResultSet resultSet = pst.executeQuery();

            while (resultSet.next()){
                us = new User();

                us.setId(resultSet.getInt(1));
                us.setName(resultSet.getString(2));
                us.setEmail(resultSet.getString(3));
                us.setPhone(resultSet.getString(4));
                us.setPassword(resultSet.getString(5));
                us.setAdress(resultSet.getString(6));
                us.setLandmark(resultSet.getString(7));
                us.setCity(resultSet.getString(8));
                us.setState(resultSet.getString(9));
                us.setPincode(resultSet.getString(10));

            }



        }catch (Exception e){
            e.printStackTrace();
        }
        return us;

    }
}
