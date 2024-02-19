/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Category;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author Admin
 */
public class CategoryDAO extends DBContext {

    public ArrayList<Category> getAll() {
        String sql = "select c.*\n"
                + "from Category c";
        ArrayList<Category> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Category category = new Category(rs.getString(1), rs.getString(2));
                list.add(category);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        ArrayList<Category> list = new ArrayList<>();
        list=c.getAll();
        for (Category category : list) {
            System.out.println(category);
        }
    }
}
