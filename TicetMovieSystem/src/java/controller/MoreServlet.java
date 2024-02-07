/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.MovieDAO;
import entity.Movie;
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
@WebServlet(name = "MoreServlet", urlPatterns = {"/more"})
public class MoreServlet extends HttpServlet {

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
            out.println("<title>Servlet MoreServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MoreServlet at " + request.getContextPath() + "</h1>");
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

        String status = request.getParameter("status");
        String categoryName = request.getParameter("categoryName");
        MovieDAO movieDAO = new MovieDAO();
        ArrayList<Movie> listMovies = new ArrayList<>();
        if (status==null ) {
            status = "all";          
        }

     if (categoryName != null && status.equalsIgnoreCase("")) {
     
             listMovies = movieDAO.getAllMovieByCategory(categoryName);
        }
     else if (categoryName != null && !status.equalsIgnoreCase("all")) {
            listMovies = movieDAO.getAllMovieByCategoryWithStatus(categoryName, status);
        }
         else if (categoryName != null) {
              
            listMovies = movieDAO.getAllMovieByCategory(categoryName);
        } else if (status.equalsIgnoreCase("all")) {
            listMovies = movieDAO.getAllMovie();
        } else {
            listMovies = movieDAO.getMovieByStatus(status);
        }

        request.setAttribute("list", listMovies);
        request.getRequestDispatcher("more.jsp").forward(request, response);
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
        processRequest(request, response);
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
