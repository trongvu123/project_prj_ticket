/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import com.google.gson.Gson;
import dao.CinemaDAO;
import dao.DaysDAO;
import dao.SeatsDAO;
import dao.showtimesDAO;
import entity.Cinema;
import entity.Days;
import entity.Movie;
import entity.Seats;
import entity.Showtimes;
import entity.Ticket;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
@WebServlet(name="SeatServlet", urlPatterns={"/seat"})
public class SeatServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SeatServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SeatServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         HttpSession session = request.getSession();
         Gson gson = new Gson();
         String showtimeID = request.getParameter("showtimeID");
         showtimesDAO dShowtime = new showtimesDAO();
         DaysDAO daysDAO = new DaysDAO();
         SeatsDAO seatsDAO = new SeatsDAO();
         CinemaDAO cinemaDAO = new CinemaDAO();
         ArrayList<String> seatsName = new ArrayList<>();
         ArrayList<String> seatsCart = new ArrayList<>();
    ArrayList<Showtimes> list = (ArrayList<Showtimes>) session.getAttribute("sID");
    ArrayList<Seats> seatses = (ArrayList<Seats>) session.getAttribute("listSeat");
    ArrayList<Days> days = (ArrayList<Days>) session.getAttribute("listDay");
    ArrayList<Movie> listTop3 = (ArrayList<Movie>) session.getAttribute("listTop3");
    String cinemaID = (String) session.getAttribute("cinema");
    Movie movie = (Movie) session.getAttribute("id");
    Movie movie1 = (Movie) session.getAttribute("id1");
    User user = (User) session.getAttribute("user");
//    String showtimeID = (String) session.getAttribute("showtimeID");
    Cinema cinema = cinemaDAO.getCinema(cinemaID);
    String dayID = (String) session.getAttribute("dayID");
    Days dayChoose = daysDAO.getDay(dayID);
    String dayName = dayChoose.getDayName().split("\\s+")[0];

    seatsName = seatsDAO.getAllSeatsName(showtimeID);
    seatsCart = seatsDAO.getAllSeatsNameInCart(movie.getMovieID(), dayID, showtimeID, user.getPhone());
     String[] seatName = seatsName.toArray(new String[0]);
     String[] seatCart = seatsCart.toArray(new String[0]);
     String seatCartJson = gson.toJson(seatCart);
    Showtimes showtimeChoose = seatsDAO.getShowtimes(showtimeID);
    session.setAttribute("cinemas", cinema);
    request.setAttribute("seatsName", seatName);
    request.setAttribute("seatsCart", seatCartJson);
     request.setAttribute("dayName", dayName);
    request.setAttribute(showtimeID, movie);
    request.setAttribute("showtimeID", showtimeID);
    request.setAttribute("cinema", cinema);
    session.setAttribute("showtimeID", showtimeID);
    session.setAttribute("listShowtime", list);
    session.setAttribute("movie", movie);
    session.setAttribute("day", dayChoose);
    session.setAttribute("showtime", showtimeChoose);
    request.getRequestDispatcher("seat.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
