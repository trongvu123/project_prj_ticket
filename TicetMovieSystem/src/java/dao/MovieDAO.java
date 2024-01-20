/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Category;
import entity.Movie;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class MovieDAO extends DBContext {

    public ArrayList<Movie> getAllMovie() {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select Movie.*\n"
                + "from Movie\n"
                + "ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;
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

    public ArrayList<Movie> getMovieTop8ByStatus(String type) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select top 8 Movie.*\n"
                + "from Movie\n"
                + "where Movie.Status=?\n"
                + "ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, type);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;

    }

    public ArrayList<Movie> getMovieByStatus(String type) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select  Movie.*\n"
                + "from Movie\n"
                + "where Movie.Status=?\n"
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
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;
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
    
    public static void main(String[] args) {
        MovieDAO dAO = new MovieDAO();
        Movie list = dAO.getMovieByID("mov1");
        System.out.println(list.getVideoURL());
    }
}
