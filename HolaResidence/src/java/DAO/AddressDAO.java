/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Helper.DBContext;
import Model.Commune;
import Model.District;
import Model.Province;
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
public class AddressDAO extends DBContext {

    public List<Province> getAllProvinces() {
        List<Province> provinces = new ArrayList<>();
        try {
            String query = "SELECT * FROM provinces";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Province province = new Province();
                province.setId(rs.getInt("id"));
                province.setName(rs.getString("name"));
                provinces.add(province);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return provinces;
    }

    public Province getProvinceById(int provinceId) {
        Province province = null;
        try {
            String query = "SELECT * FROM provinces WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, provinceId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                province = new Province();
                province.setId(rs.getInt("id"));
                province.setName(rs.getString("name"));
                // Set other properties of province if available
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return province;
    }

    public List<District> getAllDistricts() {
        List<District> districts = new ArrayList<>();
        try {
            String query = "SELECT * FROM districts";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                District district = new District();
                district.setId(rs.getInt("id"));
                district.setName(rs.getString("name"));
                district.setProvinceId(rs.getInt("province_id"));
                districts.add(district);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return districts;
    }

    public District getDistrictById(int districtId) {
        District district = null;
        try {
            String query = "SELECT * FROM districts WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, districtId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                district = new District();
                district.setId(rs.getInt("id"));
                district.setName(rs.getString("name"));
                district.setProvinceId(rs.getInt("province_id"));
                // Set other properties of district if available
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return district;
    }

    public List<Commune> getAllCommunes() {
        List<Commune> communes = new ArrayList<>();
        try {
            String query = "SELECT * FROM communes";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Commune commune = new Commune();
                commune.setId(rs.getInt("id"));
                commune.setName(rs.getString("name"));
                commune.setDistrictId(rs.getInt("district_id"));
                // Các thông tin khác của xã/phường có thể cần lấy từ cơ sở dữ liệu
                // Ví dụ: diện tích, dân số, etc.
                communes.add(commune);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return communes;
    }

    public Commune getCommuneById(int communeId) {
        Commune commune = null;
        try {
            String query = "SELECT * FROM communes WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, communeId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                commune = new Commune();
                commune.setId(rs.getInt("id"));
                commune.setName(rs.getString("name"));
                commune.setDistrictId(rs.getInt("district_id"));
                // Set other properties of commune if available
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return commune;
    }

}
