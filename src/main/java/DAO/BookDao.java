package DAO;

import entity.BookDtls;

import java.sql.SQLException;
import java.util.List;

public interface BookDao {

    boolean addBooks(BookDtls bookDtls);

    public List<BookDtls> getAllBooks() throws SQLException;
}
