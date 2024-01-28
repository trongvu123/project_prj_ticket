/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DaysDAO;
import dao.MovieDAO;
import dao.SeatsDAO;
import dao.showtimesDAO;
import entity.Days;
import entity.Movie;
import entity.Seats;
import entity.Showtimes;
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
@WebServlet(name = "ShowtimeServlet", urlPatterns = {"/showtime"})
public class ShowtimeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet ShowtimeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShowtimeServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("movieID");
        String movieID = request.getParameter("trailerID");
        String dayID = request.getParameter("dayID");
        String showtimeID = request.getParameter("showtimeID");
        SeatsDAO seatsDAO = new SeatsDAO();
        showtimesDAO s = new showtimesDAO();
        MovieDAO d = new MovieDAO();
        ArrayList<Days> days = new ArrayList<>();
        ArrayList<Showtimes> list = new ArrayList<>();
        ArrayList<Seats> seatses = new ArrayList<>();
        list = s.getAllShowtimes(dayID);
        seatses = seatsDAO.getAllSeats(showtimeID);
        DaysDAO d1 = new DaysDAO();
        ArrayList<Movie> listTop3 = new ArrayList<>();
        listTop3 = d.getMovieTop8ByStatus("show");
        Movie movie = d.getMovieByID(id);
        Movie movie1 = d.getMovieByID(movieID);
        days = d1.getAllDays(id);
        if(list.isEmpty()){
            String dayFirstString="";
            for (int i = 0; i < days.size(); i++) {
                dayFirstString= days.get(i).getDayID();
                break;              
            }
        list=s.getAllShowtimes(dayFirstString);
        }
        HttpSession session = request.getSession();
        session.setAttribute("sID", list);
        session.setAttribute("listSeat", seatses);
        session.setAttribute("listDay", days);
        session.setAttribute("listTop3", listTop3);
        session.setAttribute("id", movie);
        session.setAttribute("id1", movie1);
        session.setAttribute("showtimeID", showtimeID);
        request.setAttribute("sID", list);
        request.setAttribute("listSeat", seatses);
        request.setAttribute("listDay", days);
        request.setAttribute("listTop3", listTop3);
        request.setAttribute("id", movie);
        request.setAttribute("id1", movie1);
        request.setAttribute("showtimeID", showtimeID);
        request.getRequestDispatcher("movie.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//            String dayID = request.getParameter("dayID");
//        showtimesDAO d = new showtimesDAO();
//        ArrayList<Showtimes> list = new ArrayList<>();
//        list=d.getAllShowtimes(dayID);
//        request.setAttribute("sID", list);
//       request.getRequestDispatcher("movie").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
