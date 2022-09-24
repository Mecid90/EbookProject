package DAO;

import entity.BookDtls;

import java.sql.SQLException;
import java.util.List;

public interface BookDao {

    boolean addBooks(BookDtls bookDtls);

    public List<BookDtls> getAllBooks() throws SQLException;

    public BookDtls getBookById(int id) throws SQLException;

    boolean updateEditBooks(BookDtls b);

    boolean deleteBooks(int id) throws SQLException;

    public List<BookDtls> getNewBook() throws SQLException;

    public List<BookDtls> getRecentBook() throws SQLException;

    public List<BookDtls> getOldBook() throws SQLException;

    public List<BookDtls> getAllNewBook() throws SQLException;

    public List<BookDtls> getAllRecentBook() throws SQLException;

    public List<BookDtls> getAllOldBook() throws SQLException;

}
