/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Helper.DBContext;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author FPT SHOP
 */
public class UserDAO extends DBContext {

    public List<User> getAllUsers() {
        List<User> userList = new ArrayList<>();
        String query = "SELECT * FROM users";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setFullname(rs.getString("fullname"));
                user.setBirthday(rs.getDate("birthday"));
                user.setGender(rs.getString("gender"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                // Handling images as an array of strings
                String imagesString = rs.getString("images");
                if (imagesString != null && !imagesString.isEmpty()) {
                    String[] images = imagesString.split(",");
                    user.setImages(images);
                }
                user.setRoleId(rs.getInt("role_id"));
                user.setStatus(rs.getString("status"));
                userList.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userList;
    }

    public User getUserById(int userId) {
        User user = null;
        try {
            String query = "SELECT * FROM users WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, userId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setFullname(rs.getString("fullname"));
                user.setBirthday(rs.getDate("birthday"));
                user.setGender(rs.getString("gender"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                // Handling images as an array of strings
                String imagesString = rs.getString("images");
                if (imagesString != null && !imagesString.isEmpty()) {
                    String[] images = imagesString.split(",");
                    user.setImages(images);
                }
                user.setRoleId(rs.getInt("role_id"));
                user.setStatus(rs.getString("status"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
<<<<<<< HEAD
   public User getUserByEmailAndPassword(String user_email, String user_password) {
        User user = null;
        try {
            String query = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, user_email);
            statement.setString(2, user_password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setFullname(rs.getString("fullname"));
                user.setBirthday(rs.getDate("birthday"));
                user.setGender(rs.getString("gender"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                // Handling images as an array of strings
                String imagesString = rs.getString("images");
                if (imagesString != null && !imagesString.isEmpty()) {
                    String[] images = imagesString.split(",");
                    user.setImages(images);
                }
                user.setRoleId(rs.getInt("role_id"));
                user.setStatus(rs.getString("status"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
=======
public static void main(String[] args) {
>>>>>>> 63bd0b2f7679a124e13a5674a589c44167bef3dc

        UserDAO dao = new UserDAO();
        List<User> p = dao.getAllUsers();
        for (User i : p) {
            System.out.println(i.toString());
        }

    }
}
