/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Category;
import entity.Days;
import entity.Movie;
import entity.Seats;
import entity.Showtimes;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author Admin
 */
public class SeatsDAO extends DBContext {

    public ArrayList<Seats> getAllSeats(String id) {
        ArrayList<Seats> list = new ArrayList<>();
        String sql = "select s.*\n"
                + "from Seats s\n"
                + "where s.ShowtimeID=? and s.TransactionType='bill'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Showtimes s = getShowtimes(rs.getString(4));
                Seats seats = new Seats(rs.getInt(1),rs.getString(3), s);
                list.add(seats);
            }
        } catch (Exception e) {
        }
        return list;
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
                return new Seats(rs.getInt(1),rs.getString(3), s);

            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<String> getAllSeatsName(String id) {
        ArrayList<String> list = new ArrayList<>();
        String sql = "select s.*\n"
                + "from Seats s\n"
                + "where s.ShowtimeID=? and s.TransactionType='bill'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String seatName = rs.getString(3);
                String[] seats = seatName.split(",");
                for (String s : seats) {
                    list.add(s);
                }
            }
        } catch (Exception e) {
        }
        return list;
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

    public Days getDay(String id) {
        String sql = "select d.*\n"
                + "from Days d \n"
                + "where d.DayId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Movie movie = getMovieByID(rs.getString(3));
                return new Days(rs.getString(1), rs.getString(2), movie);
            }
        } catch (Exception e) {
        }
        return null;
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

    public void addSeat(Seats seats) {
        String sql = "INSERT INTO Seats(TransactionType,SeatName,ShowtimeID)\n"
                + "VALUES ('cart',?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, seats.getSeatName());
            st.setString(2, seats.getShowtimes().getShowtimeID());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public String lastSeatID() {
        String sql = "select top 1 s.SeatID\n"
                + "from Seats s\n"
                + "order by s.SeatID desc";
        String lastID="";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
                return lastID+= rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return lastID;
    }

    public static void main(String[] args) {
        SeatsDAO d = new SeatsDAO();
       String last = d.lastSeatID();
        System.out.println(last);

    }
}
