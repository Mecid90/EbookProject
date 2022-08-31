package DAO;

import entity.BookDtls;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDaoImpl implements BookDao{

    private Connection con;

    public BookDaoImpl(Connection con){
        this.con = con;
    }

    @Override
    public boolean addBooks(BookDtls bookDtls) {

        boolean f=false;

        try{

            String sql="insert into book_details(bookName,author,price,bookCategory,status,photo,email) values (?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, bookDtls.getbookName());
            ps.setString(2, bookDtls.getAuthor());
            ps.setString(3, bookDtls.getPrice());
            ps.setString(4,bookDtls.getBookCategory());
            ps.setString(5,bookDtls.getStatus());
            ps.setString(6,bookDtls.getPhoto());
            ps.setString(7,bookDtls.getEmail());

            int i = ps.executeUpdate();

            if (i==1){
                f=true;
            }


        }catch (Exception e){
            e.printStackTrace();
        }

        return f;
    }

    @Override
    public List<BookDtls> getAllBooks() throws SQLException {

        List<BookDtls> bookDtls = new ArrayList<>();

        try{

            String sql = "select * from book_details";

            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet resultSet = pst.executeQuery();

            while(resultSet.next()){

                int id = resultSet.getInt(1);
                String bookName = resultSet.getString(2);
                String author = resultSet.getString(3);
                String price = resultSet.getString(4);
                String category = resultSet.getString(5);
                String status = resultSet.getString(6);
                String photo = resultSet.getString(7);
                String email = resultSet.getString(8);

                BookDtls bookDtls1 = new BookDtls(id,bookName,author,price,category,status,photo,email);

                bookDtls.add(bookDtls1);
            }

        }catch (Exception e){
            e.printStackTrace();
        }


        return bookDtls;
    }
}
