/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Ticket;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
}
