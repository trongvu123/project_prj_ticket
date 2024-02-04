/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class UserDAO extends DBContext {

    public User getUser(String phone, String password) {
        String sql = "select u.*\n"
                + "from [User] u\n"
                + "where u.Phone=? and u.Password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phone);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    

    public boolean addUser(User user) {
        String sql = "INSERT INTO [User] (Phone, FullName, Email, DOB, Password, Gender, role)\n"
                + "VALUES (?, ?, ?, ?, ?, ?, 1);";
        int check =0;
        try {
            PreparedStatement st =connection.prepareStatement(sql);
            st.setString(1, user.getPhone());
            st.setString(2, user.getFullName());
            st.setString(3, user.getEmail());
            st.setString(4, user.getDob());
            st.setString(5, user.getPassword());
            st.setString(6, user.getGender());
            check = st.executeUpdate();
        } catch (Exception e) {
        }
        return check>0;
    }

    public static void main(String[] args) {
        UserDAO dAO = new UserDAO();
        User s = dAO.getUser("0123456789", "password123");
        System.out.println(s);
    }
}
