/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Helper.DBContext;
import Model.RentHouse;
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
public class RentHouseDAO extends DBContext {
    
    public List<RentHouse> getRentHouses(int index) {
        List<RentHouse> rentHouses = new ArrayList<>();
        try {
            String query = "SELECT * FROM rent_houses ORDER BY id OFFSET ? ROWS FETCH NEXT 12 ROWS ONLY;";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, (index - 1) * 12);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                RentHouse rentHouse = new RentHouse();
                rentHouse.setId(rs.getInt("id"));
                rentHouse.setName(rs.getString("name"));
                rentHouse.setPrice(rs.getDouble("price"));
                rentHouse.setAcreage(rs.getDouble("acreage"));
                rentHouse.setBedroom(rs.getInt("bedroom"));
                rentHouse.setBathroom(rs.getInt("bathroom"));
                rentHouse.setDescription(rs.getString("description"));
                rentHouse.setRatePoint(rs.getDouble("rate_point"));
                rentHouse.setProvinceId(rs.getInt("province_id"));
                rentHouse.setDistrictId(rs.getInt("district_id"));
                rentHouse.setCommuneId(rs.getInt("commune_id"));
                rentHouse.setCategoryId(rs.getInt("category_id"));
                rentHouse.setUserId(rs.getInt("user_id"));
                rentHouse.setStatus(rs.getString("status"));
                rentHouse.setCreatedDate(rs.getDate("create_date"));
                rentHouse.setExpiryDate(rs.getDate("expiry_date"));
                rentHouses.add(rentHouse);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rentHouses;
    }
    
    public int getTotalHouses() {
        int n = 0;
        String sql = "select count(*) from rent_houses";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                n = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RentHouseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }
    
    public RentHouse getRentHouseById(int rentHouseId) {
    RentHouse rentHouse = null;
    try {
        String query = "SELECT * FROM rent_houses WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, rentHouseId);
        ResultSet rs = statement.executeQuery();
        if (rs.next()) {
            rentHouse = new RentHouse();
            rentHouse.setId(rs.getInt("id"));
            rentHouse.setName(rs.getString("name"));
            rentHouse.setPrice(rs.getDouble("price"));
            rentHouse.setAcreage(rs.getDouble("acreage"));
            rentHouse.setBedroom(rs.getInt("bedroom"));
            rentHouse.setBathroom(rs.getInt("bathroom"));
            rentHouse.setDescription(rs.getString("description"));
            // Handling images as an array of strings
                String imagesString = rs.getString("image");
                if (imagesString != null && !imagesString.isEmpty()) {
                    String[] images = imagesString.split(",");
                    rentHouse.setImage(images);
                }
            rentHouse.setRatePoint(rs.getDouble("rate_point"));
            rentHouse.setProvinceId(rs.getInt("province_id"));
            rentHouse.setDistrictId(rs.getInt("district_id"));
            rentHouse.setCommuneId(rs.getInt("commune_id"));
            rentHouse.setCategoryId(rs.getInt("category_id"));
            rentHouse.setUserId(rs.getInt("user_id"));
            rentHouse.setStatus(rs.getString("status"));
            rentHouse.setCreatedDate(rs.getDate("create_date"));
            rentHouse.setExpiryDate(rs.getDate("expiry_date"));
        }
    } catch (SQLException ex) {
        Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
    }
    return rentHouse;
}

}
