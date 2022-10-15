package DAO;

import entity.Book_Order;

import java.util.List;

public interface BookOrderDao {

    int getOrderNo();

    boolean saveOrder(List<Book_Order> b);

}
