/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Category;
import entity.Days;
import entity.Movie;
import entity.Showtimes;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class showtimesDAO extends DBContext {

    public ArrayList<Showtimes> getAllShowtimes(String id) {
        ArrayList<Showtimes> list = new ArrayList<>();
        String sql = "select s.*\n"
                + "from Showtimes s\n"
                + "where s.DayId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Days day = getDay(rs.getString(3));
                Showtimes showtimes = new Showtimes(rs.getString(1), rs.getString(2), day);
                list.add(showtimes);
            }
        } catch (Exception e) {
        }
       return list;
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

    public static void main(String[] args) {
        showtimesDAO d= new showtimesDAO();
        ArrayList<Showtimes> list = new ArrayList<>();
       list = d.getAllShowtimes("d1");
        for (Showtimes dAO : list) {
            System.out.println(dAO);
        }
    }
}
