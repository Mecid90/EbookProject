package DAO;

import entity.User;

public interface UserDao {

    public boolean UserRegister(User us);

    public User login(String email,String password);

    public boolean checkPassword(int id,String ps);

    public boolean updateProfile(User us);

}
