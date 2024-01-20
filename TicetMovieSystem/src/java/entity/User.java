/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class User {
//        Phone NVARCHAR(20) NOT NULL PRIMARY KEY,
//    FullName NVARCHAR(30),
//    Email NVARCHAR(30),
//    DOB NVARCHAR(30),
//    Password NVARCHAR(20),
//    Gender NVARCHAR(10),
//    role INT
    private String phone ;
    private String fullName;
    private String email ;
    private String dob ;
    private String password ;
    private String gender ;
    private int role ;

    public User() {
    }

    public User(String phone, String fullName, String email, String dob, String password, String gender, int role) {
        this.phone = phone;
        this.fullName = fullName;
        this.email = email;
        this.dob = dob;
        this.password = password;
        this.gender = gender;
        this.role = role;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" + "phone=" + phone + ", fullName=" + fullName + ", email=" + email + ", dob=" + dob + ", password=" + password + ", gender=" + gender + ", role=" + role + '}';
    }
    
}
