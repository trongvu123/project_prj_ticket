/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Ticket {
//        TransactionType NVARCHAR(10), -- 'Cart' hoặc 'Bill'
//    MovieID NVARCHAR(20),
//    Phone NVARCHAR(20),
//    DayId NVARCHAR(20),
//    ShowtimeID NVARCHAR(20),
//    SeatID NVARCHAR(20),
//	CinemaID nvarchar(20),
//    Price FLOAT,
    private String transactionType ;
    private Movie movie;
    private User user;
    private Days days;
    private Showtimes showtimes;
    private Seats seats;
    private Cinema cinema;
    private float price;

    public Ticket() {
    }

    public String getTransactionType() {
        return transactionType;
    }

    public void setTransactionType(String transactionType) {
        this.transactionType = transactionType;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Days getDays() {
        return days;
    }

    public void setDays(Days days) {
        this.days = days;
    }

    public Showtimes getShowtimes() {
        return showtimes;
    }

    public void setShowtimes(Showtimes showtimes) {
        this.showtimes = showtimes;
    }

    public Seats getSeats() {
        return seats;
    }

    public void setSeats(Seats seats) {
        this.seats = seats;
    }

    public Cinema getCinema() {
        return cinema;
    }

    public void setCinema(Cinema cinema) {
        this.cinema = cinema;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Ticket{" + "transactionType=" + transactionType + ", movie=" + movie + ", user=" + user + ", days=" + days + ", showtimes=" + showtimes + ", seats=" + seats + ", cinema=" + cinema + ", price=" + price + '}';
    }
    
}
