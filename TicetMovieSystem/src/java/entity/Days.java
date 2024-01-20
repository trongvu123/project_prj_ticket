/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Days {
//       DayId NVARCHAR(20) NOT NULL PRIMARY KEY,
//    Day_name NVARCHAR(20),
//    MovieID NVARCHAR(20) FOREIGN KEY REFERENCES Movie(MovieID)
    private String dayID;
    private String dayName ;
    private Movie movie;

    public Days() {
    }

    public Days(String dayID, String dayName, Movie movie) {
        this.dayID = dayID;
        this.dayName = dayName;
        this.movie = movie;
    }

    public String getDayID() {
        return dayID;
    }

    public void setDayID(String dayID) {
        this.dayID = dayID;
    }

    public String getDayName() {
        return dayName;
    }

    public void setDayName(String dayName) {
        this.dayName = dayName;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    @Override
    public String toString() {
        return "Days{" + "dayID=" + dayID + ", dayName=" + dayName + ", movie=" + movie + '}';
    }
    
}
