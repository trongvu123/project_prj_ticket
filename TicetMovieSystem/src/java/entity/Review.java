/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Review {
//        ReviewID INT IDENTITY(1,1) PRIMARY KEY,
//    MovieID NVARCHAR(20), 
//	imgRv NVARCHAR(30),
//	img1 NVARCHAR(30),
//	img2 NVARCHAR(30),
//	Title NVARCHAR(1000),
//	ReviewTitle NVARCHAR(1000),
//    Review1 NVARCHAR(3000),
//	Review2 NVARCHAR(3000),
//	Review3 NVARCHAR(3000),
    
    private int reviewID;
    private String movieID,imgRv,img1,img2,title,reviewTitle,review1,review2,review3;

    public Review() {
    }

    public Review(int reviewID, String movieID, String imgRv, String img1, String img2, String title, String reviewTitle, String review1, String review2, String review3) {
        this.reviewID = reviewID;
        this.movieID = movieID;
        this.imgRv = imgRv;
        this.img1 = img1;
        this.img2 = img2;
        this.title = title;
        this.reviewTitle = reviewTitle;
        this.review1 = review1;
        this.review2 = review2;
        this.review3 = review3;
    }

    public int getReviewID() {
        return reviewID;
    }

    public void setReviewID(int reviewID) {
        this.reviewID = reviewID;
    }

    public String getMovieID() {
        return movieID;
    }

    public void setMovieID(String movieID) {
        this.movieID = movieID;
    }

    public String getImgRv() {
        return imgRv;
    }

    public void setImgRv(String imgRv) {
        this.imgRv = imgRv;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getReviewTitle() {
        return reviewTitle;
    }

    public void setReviewTitle(String reviewTitle) {
        this.reviewTitle = reviewTitle;
    }

    public String getReview1() {
        return review1;
    }

    public void setReview1(String review1) {
        this.review1 = review1;
    }

    public String getReview2() {
        return review2;
    }

    public void setReview2(String review2) {
        this.review2 = review2;
    }

    public String getReview3() {
        return review3;
    }

    public void setReview3(String review3) {
        this.review3 = review3;
    }

    @Override
    public String toString() {
        return "Review{" + "reviewID=" + reviewID + ", movieID=" + movieID + ", imgRv=" + imgRv + ", img1=" + img1 + ", img2=" + img2 + ", title=" + title + ", reviewTitle=" + reviewTitle + ", review1=" + review1 + ", review2=" + review2 + ", review3=" + review3 + '}';
    }
    
}
