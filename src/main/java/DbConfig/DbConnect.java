package DbConfig;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConnect {

    private static Connection con;

    public static Connection getConnect(){
        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app", "root", "6009695m");

        }catch (Exception e){
            e.printStackTrace();
        }
        return con;

    }




}



