/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CategoryDAO;
import dao.MovieDAO;
import entity.Category;
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
@WebServlet(name = "AddServlet", urlPatterns = {"/add"})
public class AddServlet extends HttpServlet {

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
            out.println("<title>Servlet AddServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddServlet at " + request.getContextPath() + "</h1>");
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
        CategoryDAO categoryDAO = new CategoryDAO();
        ArrayList<Category> listCategory = new ArrayList<>();
        listCategory = categoryDAO.getAll();
        request.setAttribute("listCategory", listCategory);

        request.getRequestDispatcher("add.jsp").forward(request, response);
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
        String movieID = request.getParameter("movieID");
        String movieCode = request.getParameter("movie");
        String title = request.getParameter("title");
        String actor = request.getParameter("actor");
        String director = request.getParameter("director");
        String producer = request.getParameter("producer");
        String country = request.getParameter("country");
        String duration = request.getParameter("duration");
        String category = request.getParameter("category");
        String year = request.getParameter("year");
        String content = request.getParameter("content");
        String status = request.getParameter("status");
        String imgURL = request.getParameter("imgURL");
        String imgCover = request.getParameter("imgCover");
        String imgURL_org = request.getParameter("imgURL_origin");
        String imgCover_org = request.getParameter("imgCover_origin");
        String trailer = request.getParameter("trailer");
        String imgLink = "";
        String coverLink = "";
        if (imgURL == null || imgURL.isEmpty()) {
            imgURL = imgURL_org;
        } else {
            String s = movieCode.substring(3);
            int number = Integer.parseInt(s);
            if (number <= 10) {
                imgURL = "./img/show/" + imgURL;
            } else {
                imgURL = "./img/soon/" + imgURL;
            }
        }
        if (imgCover == null || imgCover.isEmpty()) {
            imgCover = imgCover_org;
        } else {
            imgCover = "./img/cover/" + imgCover;
        }

        int duration_raw = 0, year_raw = 0;
        try {
            duration_raw = Integer.parseInt(duration);
            year_raw = Integer.parseInt(year);
        } catch (Exception e) {
        }

        CategoryDAO categoryDAO = new CategoryDAO();
        MovieDAO movieDAO = new MovieDAO();
        Category category1 = movieDAO.getCategory(category);
        Movie newMovie = new Movie(movieCode, title, actor, director, producer, country, duration_raw, status, year_raw, category1, imgURL, imgCover, trailer, content);
        boolean check = movieDAO.addMovie(newMovie);
        ArrayList<Category> listCategory = new ArrayList<>();
        listCategory = categoryDAO.getAll();
        request.setAttribute("listCategory", listCategory);
        String mess = "";
        if (!check) {
            mess += "Duplicate movieID!";
            request.setAttribute("messErr", mess);
            request.getRequestDispatcher("add.jsp").forward(request, response);
        } else {
            mess += "Add successful!";
            ArrayList<Movie> listMovie = new ArrayList<>();
            listMovie = movieDAO.getAllMovie();
            request.setAttribute("listMovie", listMovie);
            request.setAttribute("messSuccess", mess);
            request.getRequestDispatcher("manage.jsp").forward(request, response);
        }
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
