/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author FPT SHOP
 */
public class DBContext {
    public Connection connection=null;
     public DBContext(String url,String userName,String pass){
         try {
            //goi driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //conect
            connection = DriverManager.getConnection(url,userName,pass);
            System.out.println("Connected");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }
     public DBContext(){
        this("jdbc:sqlserver://localhost:1433;databaseName=HolaResidence [sa on db_accessadmin]",
                "sa","123456");
    }
    public static void main(String[] args) {
        System.out.println(new DBContext());
    }
}
