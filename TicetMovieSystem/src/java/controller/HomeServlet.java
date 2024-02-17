/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.CinemaDAO;
import dao.DaysDAO;
import dao.MovieDAO;
import dao.showtimesDAO;
import entity.Cinema;
import entity.Days;
import entity.Movie;
import entity.Showtimes;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
@WebServlet(name="HomeServlet", urlPatterns={"/home"})
public class HomeServlet extends HttpServlet {
   
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
            out.println("<title>Servlet HomeServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeServlet at " + request.getContextPath () + "</h1>");
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
          String type = request.getParameter("status");
           String movieID = request.getParameter("movieTrailer");
           String movie_id =  request.getParameter("movie");
           String daysID = request.getParameter("day");
           String showtimeID = request.getParameter("showtime");
           String cinemaID = request.getParameter("cinema");
        ArrayList<Movie> listTop8 = new ArrayList<>();
        ArrayList<Movie> listMovie = new ArrayList<>();
        ArrayList<Days> listDays = new ArrayList<>();
        ArrayList<Showtimes> listShowtimes = new ArrayList<>();
        ArrayList<Cinema> listCinemas = new ArrayList<>();
            MovieDAO d = new MovieDAO();
            DaysDAO daysDAO = new DaysDAO();
            showtimesDAO showtimeDAO = new showtimesDAO();
            CinemaDAO cinemaDAO = new CinemaDAO();
        if (type == null) {
            type = "show";      
            
        }         
        listMovie = d.getAllMovie();
        listDays= daysDAO.getAllDays(movie_id);
        listShowtimes = showtimeDAO.getAllShowtimes(daysID);
        listCinemas = cinemaDAO.getAllCinema();
         Movie movie = d.getMovieByID(movieID);
            request.setAttribute("tl", movie);
            listTop8 = d.getMovieTop8ByStatus(type);
            request.setAttribute("listTop8", listTop8);  
             request.setAttribute("listMovie", listMovie); 
              request.setAttribute("listDays", listDays); 
               request.setAttribute("listShowtimes", listShowtimes); 
                request.setAttribute("listCinemas", listCinemas); 
            request.getRequestDispatcher("home.jsp").forward(request, response);
                   
     
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
        processRequest(request, response);
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
