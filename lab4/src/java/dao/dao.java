/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Employees;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class dao extends DBContext {

    public ArrayList<Employees> getAll() {
        String sql = "select *\n"
                + "from Employees";
        ArrayList<Employees> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Employees employees = new Employees(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                list.add(employees);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void update(String id, String first, String last, String age) {
        String sql = "UPDATE [dbo].[Employees]\n"
                + "      ,[first] = ?\n"
                + "      ,[last] = ?\n"
                + "      ,[age] = ?\n"
                + " WHERE Employees.id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, first);
            st.setString(2, last);
            st.setString(3, age);
            st.setString(4, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void delete(String id) {
        String sql = "DELETE FROM [dbo].[Employees]\n"
                + "      WHERE Employees.id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        dao d = new dao();
        ArrayList<Employees> list = d.getAll();
        for (Employees employees : list) {
            System.out.println(employees);
        }
    }
}
