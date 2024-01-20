/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Cinema {
//    CinemaID nvarchar(20) PRIMARY KEY,
//	CinemaName NVARCHAR(50)
    private String cinemaID ;
    private String cinemaName ;

    public Cinema() {
    }

    public Cinema(String cinemaID, String cinemaName) {
        this.cinemaID = cinemaID;
        this.cinemaName = cinemaName;
    }

    public String getCinemaID() {
        return cinemaID;
    }

    public void setCinemaID(String cinemaID) {
        this.cinemaID = cinemaID;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }
    
}
