/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Category;
import entity.Movie;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class MovieDAO extends DBContext {

    public ArrayList<Movie> getAllMovie() {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select Movie.*\n"
                + "from Movie\n"
                + "ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Movie> getAllMoviePaging(String categoryName, String status, int pageIndex, int pageSize) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "SELECT * FROM (\n"
                + "SELECT m.*,ROW_NUMBER() OVER (ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT)) AS rn \n"
                + "FROM Movie m join Category c on m.CategoryID=c.CategoryID\n"
                + "where c.CategoryName like ? and m.Status=?\n"
                + "\n"
                + ") as x\n"
                + "WHERE rn BETWEEN (?- 1) * ? + 1 AND ?*?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + categoryName + "%");
            st.setString(2, status);
            st.setInt(3, pageIndex);
            st.setInt(4, pageSize);
            st.setInt(5, pageIndex);
            st.setInt(6, pageSize);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Movie> getAllMoviePagingWithCategory(String categoryName, int pageIndex, int pageSize) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "SELECT * FROM (\n"
                + "SELECT m.*,ROW_NUMBER() OVER (ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT)) AS rn\n"
                + "FROM Movie m join Category c on m.CategoryID=c.CategoryID\n"
                + "where c.CategoryName like ? \n"
                + "\n"
                + ") as x\n"
                + "WHERE rn BETWEEN (?- 1) * ? + 1 AND ?*?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + categoryName + "%");
            st.setInt(2, pageIndex);
            st.setInt(3, pageSize);
            st.setInt(4, pageIndex);
            st.setInt(5, pageSize);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Movie> getAllMoviePagingWithStatus(String status, int pageIndex, int pageSize) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "SELECT * FROM (\n"
                + "SELECT m.*,ROW_NUMBER() OVER (ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT)) AS rn\n"
                + "FROM Movie m \n"
                + "where m.Status=?\n"
                + "\n"
                + ") as x\n"
                + "WHERE rn BETWEEN (?- 1) * ? + 1 AND ?*?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            st.setInt(2, pageIndex);
            st.setInt(3, pageSize);
            st.setInt(4, pageIndex);
            st.setInt(5, pageSize);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Movie> getAllMoviePagingNoCondition(int pageIndex, int pageSize) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "SELECT * FROM (\n"
                + "SELECT  m.*,ROW_NUMBER() OVER (ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT)) AS rn\n"
                + "FROM Movie m \n"
                + "\n"
                + ") as x\n"
                + "WHERE rn BETWEEN (?- 1) * ? + 1 AND ?*?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pageIndex);
            st.setInt(2, pageSize);
            st.setInt(3, pageIndex);
            st.setInt(4, pageSize);
            System.out.println(st);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

    public int countMovie() {
        String sql = "select COUNT(*)\n"
                + "from Movie";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
        }
        return 0;
    }

    public int countMovieWithStatus(String status) {
        String sql = "select COUNT(*)\n"
                + "from Movie m\n"
                + "where m.Status = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            ResultSet rs = st.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
        }
        return 0;
    }

    public int countMovieWithCategory(String category) {
        String sql = "select COUNT(*)\n"
                + "from Movie m\n"
                + "join Category c on m.CategoryID=c.CategoryID\n"
                + "where c.CategoryName like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + category + "%");
            ResultSet rs = st.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
        }
        return 0;
    }

    public int countMovieBoth(String category, String status) {
        String sql = "select COUNT(*)\n"
                + "from Movie m\n"
                + "join Category c on m.CategoryID=c.CategoryID\n"
                + "where c.CategoryName like ? and m.Status=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + category + "%");
            st.setString(2, status);
            ResultSet rs = st.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
        }
        return 0;
    }

    public ArrayList<Movie> getAllMovieByCategory(String categoryName) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select m.*\n"
                + "from Movie m\n"
                + "join Category c on m.CategoryID=c.CategoryID\n"
                + "where c.CategoryName like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + categoryName + "%");

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Movie> getAllMovieByCategoryWithStatus(String categoryName, String status) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select m.*\n"
                + "from Movie m\n"
                + "join Category c on m.CategoryID=c.CategoryID\n"
                + "where c.CategoryName like ? and m.Status=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + categoryName + "%");
            st.setString(2, status);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Category getCategory(String categoryID) {
        String sql = "select *\n"
                + "from Category\n"
                + "where Category.CategoryID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, categoryID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Category(rs.getString(1), rs.getString(2));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Movie> getMovieTop8ByStatus(String type) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select top 8 Movie.*\n"
                + "from Movie\n"
                + "where Movie.Status=?\n"
                + "ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, type);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;

    }

    public ArrayList<Movie> getMovieByStatus(String type) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select  Movie.*\n"
                + "from Movie\n"
                + "where Movie.Status=?\n"
                + "ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, type);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                list.add(movie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Movie getMovieByID(String type) {
        ArrayList<Movie> list = new ArrayList<>();
        String sql = "select  Movie.*\n"
                + "from Movie\n"
                + "where Movie.MovieID=?\n"
                + "ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, type);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category category = getCategory(rs.getString(10));
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getString(8), rs.getInt(9), category, rs.getString(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                return movie;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public boolean addMovie(Movie movie) {
        String sql = "INSERT INTO [dbo].[Movie]\n"
                + "           ([MovieID],[Title],[Actor],[Director],[Producer],[Country],[Duration]\n"
                + "           ,[Status]\n"
                + "           ,[Year]\n"
                + "           ,[CategoryID]\n"
                + "           ,[imgURL]\n"
                + "           ,[coverURL]\n"
                + "           ,[videoURL]\n"
                + "           ,[Content])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        int check = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, movie.getMovieID());
            st.setString(2, movie.getTitle());
            st.setString(3, movie.getActor());
            st.setString(4, movie.getDirector());
            st.setString(5, movie.getProducer());
            st.setString(6, movie.getCountry());
            st.setInt(7, movie.getDuration());
            st.setString(8, movie.getStatus());
            st.setInt(9, movie.getYear());
            st.setString(10, movie.getCategory().getCategoryID());
            st.setString(11, movie.getImgURL());
            st.setString(12, movie.getCoverURL());
            st.setString(13, movie.getVideoURL());
            st.setString(14, movie.getContent());
            check = st.executeUpdate();
        } catch (Exception e) {
        }
        return check > 0;
    }

    public boolean updateMovie(Movie movie) {
        String sql = "UPDATE [dbo].[Movie]\n"
                + "   SET [MovieID] =?\n"
                + "      ,[Title] = ?\n"
                + "      ,[Actor] = ?\n"
                + "      ,[Director] = ?\n"
                + "      ,[Producer] = ?\n"
                + "      ,[Country] = ?\n"
                + "      ,[Duration] = ?\n"
                + "      ,[Status] = ?\n"
                + "      ,[Year] = ?\n"
                + "      ,[CategoryID] = ?\n"
                + "      ,[imgURL] = ?\n"
                + "      ,[coverURL] = ?\n"
                + "      ,[videoURL] = ?\n"
                + "      ,[Content] = ?\n"
                + " WHERE [MovieID] =?";
        int check = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, movie.getMovieID());
            st.setString(2, movie.getTitle());
            st.setString(3, movie.getActor());
            st.setString(4, movie.getDirector());
            st.setString(5, movie.getProducer());
            st.setString(6, movie.getCountry());
            st.setInt(7, movie.getDuration());
            st.setString(8, movie.getStatus());
            st.setInt(9, movie.getYear());
            st.setString(10, movie.getCategory().getCategoryID());
            st.setString(11, movie.getImgURL());
            st.setString(12, movie.getCoverURL());
            st.setString(13, movie.getVideoURL());
            st.setString(14, movie.getContent());
            st.setString(15, movie.getMovieID());
            check = st.executeUpdate();
        } catch (Exception e) {
        }
        return check > 0;
    }

    public void deleteMovie(String movieID) {
        String sql = "DELETE FROM [dbo].[Movie]\n"
                + "      WHERE [MovieID] =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, movieID);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int countMovieMax(String category, String status) {
        String sql = "";
        
        if (status.equals("all")) {
            sql += "select COUNT(*)\n"
                    + "from Movie m\n"
                    + "join Category c on m.CategoryID=c.CategoryID\n"
                    + "where c.CategoryName like ?";
        } 
        
        else {
            sql += "select COUNT(*)\n"
                    + "from Movie m\n"
                    + "join Category c on m.CategoryID=c.CategoryID\n"
                    + "where c.CategoryName like ? and m.Status=?";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            if(status.equals("all")){
                st.setString(1, "%"+category+"%");
            }else{
                st.setString(1, "%"+category+"%");
                st.setString(2, status);
            }
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public static void main(String[] args) {
        MovieDAO dAO = new MovieDAO();
        int count = dAO.countMovieWithCategory("horror");
        System.out.println(count);
    }
}
