package DAO;

import entity.BookDtls;
import entity.Cart;

import java.sql.SQLException;
import java.util.List;

public interface CartDao {

    public boolean addCart(Cart c);

    public List<Cart> getBookByUser(int userId);

    boolean deleteBook(int bid,int uid,int cid) throws SQLException;
}
