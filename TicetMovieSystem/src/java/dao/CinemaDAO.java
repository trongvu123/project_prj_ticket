/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Cinema;
import entity.Showtimes;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class CinemaDAO extends DBContext {

    public ArrayList<Cinema> getAllCinema() {
        ArrayList<Cinema> list = new ArrayList<>();
        String sql = "select c.*\n"
                + "from Cinema c";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Cinema c = new Cinema(rs.getString(1), rs.getString(2));
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
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
        CinemaDAO d = new CinemaDAO();
        ArrayList<Cinema> list = new ArrayList<>();
        list = d.getAllCinema();
        for (Cinema cinema : list) {
            System.out.println(cinema.getCinemaID());
        }
    }
}
