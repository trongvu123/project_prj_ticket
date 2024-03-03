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

    public ArrayList<Review> getAllReviewsJson() {
        String sql = "select *\n"
                + "from Review";
        ArrayList<Review> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Review review = new Review(rs.getString(3),
                        rs.getString(6), rs.getString(7)
                );
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

    public ArrayList<Review> pagingReviews(int pageIndex, int pageSize) {
        String sql = "SELECT * FROM (\n"
                + "    SELECT m.*, ROW_NUMBER() OVER (ORDER BY m.reviewID) AS rn\n"
                + "    FROM Review m \n"
                + ") as x\n"
                + "WHERE rn BETWEEN (? - 1) * ? + 1 AND ? * ?;";
        ArrayList<Review> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pageIndex);
            st.setInt(2, pageSize);
            st.setInt(3, pageIndex);
            st.setInt(4, pageSize);
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

    public int totalReviews() {
        String sql = "select COUNT(*)\n"
                + "from Review";
        int total=0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                return total=rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public static void main(String[] args) {
        ArrayList<Review> list = new ArrayList<>();
        ReviewDAO d = new ReviewDAO();
        list = d.pagingReviews(1, 6);
        int total = d.totalReviews();
        System.out.println(total);

    }
}
