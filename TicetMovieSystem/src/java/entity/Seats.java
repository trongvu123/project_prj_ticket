/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Seats {
//        SeatID NVARCHAR(20) PRIMARY KEY,
//    SeatName NVARCHAR(10),
//    
//    ShowtimeID NVARCHAR(20) FOREIGN KEY REFERENCES Showtimes(ShowtimeID)
    private String seatID;
    private String seatName ;
    private Showtimes showtimes;

    public Seats() {
    }

    public Seats(String seatID, String seatName, Showtimes showtimes) {
        this.seatID = seatID;
        this.seatName = seatName;
        this.showtimes = showtimes;
    }

    public String getSeatID() {
        return seatID;
    }

    public void setSeatID(String seatID) {
        this.seatID = seatID;
    }

    public String getSeatName() {
        return seatName;
    }

    public void setSeatName(String seatName) {
        this.seatName = seatName;
    }

    public Showtimes getShowtimes() {
        return showtimes;
    }

    public void setShowtimes(Showtimes showtimes) {
        this.showtimes = showtimes;
    }
    
}
