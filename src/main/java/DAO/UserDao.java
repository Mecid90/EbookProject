package DAO;

import entity.User;

public interface UserDao {

    public boolean UserRegister(User us);

    public User login(String email,String password);

}
