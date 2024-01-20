/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Showtimes {
//       ShowtimeID NVARCHAR(20) NOT NULL PRIMARY KEY,
//    ShowtimeStart NVARCHAR(20),    
//    DayId NVARCHAR(20) FOREIGN KEY REFERENCES Days(DayId)
    private String showtimeID;
    private String showtimeStart ;
    private Days days;

    public Showtimes() {
    }

    public Showtimes(String showtimeID, String showtimeStart, Days days) {
        this.showtimeID = showtimeID;
        this.showtimeStart = showtimeStart;
        this.days = days;
    }

    public String getShowtimeID() {
        return showtimeID;
    }

    public void setShowtimeID(String showtimeID) {
        this.showtimeID = showtimeID;
    }

    public String getShowtimeStart() {
        return showtimeStart;
    }

    public void setShowtimeStart(String showtimeStart) {
        this.showtimeStart = showtimeStart;
    }

    public Days getDays() {
        return days;
    }

    public void setDays(Days days) {
        this.days = days;
    }
    
}
