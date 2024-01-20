/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Movie {

    private String movieID,title,actor ,director , producer ,country ;
    private int duration;
    private String status;
    private int year;
    private Category category;
    private String imgURL;
    private String coverURL;
    private String videoURL;
    private String content ;

    public Movie() {
    }

    public Movie(String movieID, String title, String actor, String director, String producer, String country, int duration, String status, int year, Category category, String imgURL, String coverURL, String videoURL, String content) {
        this.movieID = movieID;
        this.title = title;
        this.actor = actor;
        this.director = director;
        this.producer = producer;
        this.country = country;
        this.duration = duration;
        this.status = status;
        this.year = year;
        this.category = category;
        this.imgURL = imgURL;
        this.coverURL = coverURL;
        this.videoURL = videoURL;
        this.content = content;
    }

    public String getMovieID() {
        return movieID;
    }

    public void setMovieID(String movieID) {
        this.movieID = movieID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public String getCoverURL() {
        return coverURL;
    }

    public void setCoverURL(String coverURL) {
        this.coverURL = coverURL;
    }

    public String getVideoURL() {
        return videoURL;
    }

    public void setVideoURL(String videoURL) {
        this.videoURL = videoURL;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Movie{" + "movieID=" + movieID + ", title=" + title + ", actor=" + actor + ", director=" + director + ", producer=" + producer + ", country=" + country + ", duration=" + duration + ", status=" + status + ", year=" + year + ", category=" + category + ", imgURL=" + imgURL + ", coverURL=" + coverURL + ", videoURL=" + videoURL + ", content=" + content + '}';
    }
    
}
