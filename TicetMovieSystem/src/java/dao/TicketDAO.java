/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Category;
import entity.Cinema;
import entity.Days;
import entity.Movie;
import entity.Seats;
import entity.Showtimes;
import entity.Ticket;
import entity.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class TicketDAO extends DBContext {

    public void addToCart(Ticket ticket) {
        String sql = "INSERT INTO Ticket ( TransactionType,MovieID, Phone, DayId, ShowtimeID, SeatID, CinemaID, Price)\n"
                + "VALUES ( 'cart',?, ?, ?, ?, ?, ?, ?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, ticket.getMovie().getMovieID());
            st.setString(2, ticket.getUser().getPhone());
            st.setString(3, ticket.getDays().getDayID());
            st.setString(4, ticket.getShowtimes().getShowtimeID());
            st.setInt(5, ticket.getSeats().getSeatID());
            st.setString(6, ticket.getCinema().getCinemaID());
            st.setFloat(7, ticket.getPrice());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void buyTicket(String id) {
        String sql = "UPDATE Ticket\n"
                + "SET TransactionType = 'bill'\n"
                + "WHERE TicketID = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void buyAllTicket(String id) {
        String sql = "UPDATE Ticket\n"
                + "SET TransactionType = 'bill'\n"
                + "WHERE Phone = ?;";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCart(String id) {
        String sql = "delete from Ticket \n"
                + "where TicketID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<Ticket> getAllTickets(String phone) {
        ArrayList<Ticket> listTicket = new ArrayList<>();
        String sql = "select t.*\n"
                + "from Ticket t\n"
                + "where t.Phone=? and t.TransactionType='cart'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phone);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Movie movie = getMovieByID(rs.getString(3));
                User user = getUserTicket(rs.getString(4));
                Days days = getDay(rs.getString(5));
                Showtimes showtimes = getShowtimes(rs.getString(6));
                Seats seats = getSeats(rs.getString(6));
                Cinema cinema = getCinema(rs.getString(8));
                Ticket ticket = new Ticket(rs.getString(1), rs.getString(2), movie, user, days, showtimes, seats, cinema, rs.getFloat(9));
                listTicket.add(ticket);
            }
        } catch (Exception e) {
        }
        return listTicket;
    }
    public Ticket getTickets(String phone,String id) {      
        String sql = "select t.*\n"
                + "from Ticket t\n"
                + "where t.Phone=? and t.TransactionType='cart'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phone);
            st.setString(2, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Movie movie = getMovieByID(rs.getString(3));
                User user = getUserTicket(rs.getString(4));
                Days days = getDay(rs.getString(5));
                Showtimes showtimes = getShowtimes(rs.getString(6));
                Seats seats = getSeats(rs.getString(6));
                Cinema cinema = getCinema(rs.getString(8));
                return new Ticket(rs.getString(1), rs.getString(2), movie, user, days, showtimes, seats, cinema, rs.getFloat(9));             
            }
        } catch (Exception e) {
        }
        return null;
    }

    public float getTotalPrice(String phone) {
        String sql = "select SUM(t.Price)\n"
                + "from Ticket t\n"
                + "where t.Phone=? and t.TransactionType='cart'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phone);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getFloat(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public Movie getMovieByID(String type) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select  Movie.*\n"
                + "from Movie\n"
                + "where Movie.MovieID=?\n"
                + "ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, type);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                return movie;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Category getCategory(String categoryID) {
        String sql = "select *\n"
                + "from Category\n"
                + "where Category.CategoryID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, categoryID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Category(rs.getString(1), rs.getString(2));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User getUserTicket(String phone) {
        String sql = "select u.*\n"
                + "from [User] u\n"
                + "where u.Phone=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phone);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Days getDay(String id) {

        String sql = "select d.*\n"
                + "from Days d\n"
                + "where d.DayId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Movie movie = getMovieByID(id);
                return new Days(rs.getString(1), rs.getString(2), movie);

            }
        } catch (Exception e) {
        }
        return null;
    }

    public Showtimes getShowtimes(String id) {
        String sql = "select s.*\n"
                + "from Showtimes s\n"
                + "where s.ShowtimeID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Days d = getDay(rs.getString(3));
                return new Showtimes(rs.getString(1), rs.getString(2), d);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Seats getSeats(String id) {
        ArrayList<Seats> list = new ArrayList<>();
        String sql = "select s.*\n"
                + "from Seats s\n"
                + "where s.ShowtimeID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Showtimes s = getShowtimes(rs.getString(4));
                return new Seats(rs.getInt(1), rs.getString(3), s);

            }
        } catch (Exception e) {
        }
        return null;
    }

    public Cinema getCinema(String id) {
        ArrayList<Cinema> list = new ArrayList<>();
        String sql = "select c.*\n"
                + "from Cinema c\n"
                + "where c.CinemaID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                return new Cinema(rs.getString(1), rs.getString(2));

            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        TicketDAO d = new TicketDAO();
        float total = d.getTotalPrice("0377580457");
        System.out.println(total);
    }
}
