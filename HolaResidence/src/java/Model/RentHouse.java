/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author FPT SHOP
 */
public class RentHouse {
    private int id;
    private String name;
    private double price;
    private double acreage;
    private int bedroom;
    private int bathroom;
    private String description;
    private String[] image;
    private double ratePoint;
    private int provinceId;
    private int districtId;
    private int communeId;
    private int categoryId;
    private int userId;
    private String status;
    private Date createdDate;
    private Date expiryDate;
    
    public RentHouse() {
    }

    public RentHouse(int id, String name, double price, double acreage, int bedroom, int bathroom, String description, String[] image, double ratePoint, int provinceId, int districtId, int communeId, int categoryId, int userId, String status, Date createdDate, Date expiryDate) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.acreage = acreage;
        this.bedroom = bedroom;
        this.bathroom = bathroom;
        this.description = description;
        this.image = image;
        this.ratePoint = ratePoint;
        this.provinceId = provinceId;
        this.districtId = districtId;
        this.communeId = communeId;
        this.categoryId = categoryId;
        this.userId = userId;
        this.status = status;
        this.createdDate = createdDate;
        this.expiryDate = expiryDate;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getAcreage() {
        return acreage;
    }

    public void setAcreage(double acreage) {
        this.acreage = acreage;
    }

    public int getBedroom() {
        return bedroom;
    }

    public void setBedroom(int bedroom) {
        this.bedroom = bedroom;
    }

    public int getBathroom() {
        return bathroom;
    }

    public void setBathroom(int bathroom) {
        this.bathroom = bathroom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String[] getImage() {
        return image;
    }

    public void setImage(String[] image) {
        this.image = image;
    }

    public double getRatePoint() {
        return ratePoint;
    }

    public void setRatePoint(double ratePoint) {
        this.ratePoint = ratePoint;
    }

    public int getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(int provinceId) {
        this.provinceId = provinceId;
    }

    public int getDistrictId() {
        return districtId;
    }

    public void setDistrictId(int districtId) {
        this.districtId = districtId;
    }

    public int getCommuneId() {
        return communeId;
    }

    public void setCommuneId(int communeId) {
        this.communeId = communeId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }
    
}
