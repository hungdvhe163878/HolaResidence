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
public class HouseRate {
    private int id;
    private Date date;
    private String[] image;
    private String message;
    private double ratingPoint;
    private int houseId;
    private int userId;

    public HouseRate() {
    }

    public HouseRate(int id, Date date, String[] image, String message, double ratingPoint, int houseId, int userId) {
        this.id = id;
        this.date = date;
        this.image = image;
        this.message = message;
        this.ratingPoint = ratingPoint;
        this.houseId = houseId;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String[] getImage() {
        return image;
    }

    public void setImage(String[] image) {
        this.image = image;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public double getRatingPoint() {
        return ratingPoint;
    }

    public void setRatingPoint(double ratingPoint) {
        this.ratingPoint = ratingPoint;
    }

    public int getHouseId() {
        return houseId;
    }

    public void setHouseId(int houseId) {
        this.houseId = houseId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    
}
