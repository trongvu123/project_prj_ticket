/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Review;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class ReviewDAO extends DBContext {

    public ArrayList<Review> getAllReviews() {
        String sql = "select *\n"
                + "from Review";
        ArrayList<Review> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Review review = new Review(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10));
                list.add(review);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Review getReview(int id) {
        String sql = "select *\n"
                + "from Review\n"
                + "where ReviewID=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Review(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Review> getRandomReviews(int id) {
        String sql = "SELECT TOP 4 *\n"
                + "FROM Review\n"
                + "WHERE ReviewID != ?\n"
                + "ORDER BY NEWID();";
        ArrayList<Review> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Review review = new Review(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10));
                list.add(review);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        ArrayList<Review> list = new ArrayList<>();
        ReviewDAO d = new ReviewDAO();
       list= d.getRandomReviews(1);
        for (Review review : list) {
            System.out.println(review);
        }

    }
}
