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
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String page = request.getParameter("pageIndex");
    String status = request.getParameter("status");
    String categoryName = request.getParameter("categoryName");
    int pageIndex = 1;
    try {
        pageIndex = Integer.parseInt(page);
    } catch (Exception e) {
    }
    MovieDAO movieDAO = new MovieDAO();
    ArrayList<Movie> listMovies = new ArrayList<>();
    if (status == null || status.equalsIgnoreCase("")) {
        status = "all";
    }
    int pageSize = 6;
    int totalMovie = movieDAO.countMovie();
    int totalMovieWithStatus = movieDAO.countMovieWithStatus(status);
    int totalMovieWithCategory = movieDAO.countMovieWithCategory(categoryName);
    int totalBoth = movieDAO.countMovieBoth(categoryName, status);
    int maxPage = totalMovie / pageSize + (totalMovie % pageSize > 0 ? 1 : 0);
    int maxPageWithStatus = totalMovieWithStatus / pageSize + (totalMovieWithStatus % pageSize > 0 ? 1 : 0);
    int maxPageWithCategory = totalMovieWithCategory / pageSize + (totalMovieWithCategory % pageSize > 0 ? 1 : 0);
    int maxPageBoth = totalBoth / pageSize + (totalBoth % pageSize > 0 ? 1 : 0);
    int nextPage = pageIndex + 1;
    int backPage = pageIndex - 1;
    if (categoryName != null && !status.equalsIgnoreCase("all")) {
        listMovies = movieDAO.getAllMoviePaging(categoryName, status, pageIndex, pageSize);
    } else if (categoryName != null) {
        listMovies = movieDAO.getAllMoviePagingWithCategory(categoryName, pageIndex, pageSize);
    } else if (status.equalsIgnoreCase("all")) {
        listMovies = movieDAO.getAllMoviePagingNoCondition(pageIndex, pageSize);
    } else {
        listMovies = movieDAO.getAllMoviePagingWithStatus(status, pageIndex, pageSize);
    }
    request.setAttribute("maxStatus", maxPageWithStatus);
    request.setAttribute("maxCategory", maxPageWithCategory);
    request.setAttribute("maxBoth", maxPageBoth);
    request.setAttribute("maxPage", maxPage);
    request.setAttribute("nextPage", nextPage);
    request.setAttribute("backPage", backPage);
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
