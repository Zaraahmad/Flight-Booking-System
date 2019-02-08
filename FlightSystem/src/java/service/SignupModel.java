/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

/**
 *
 * @author Dell
 */
public class SignupModel {
    String fname;
    String lname;
    String email;
    String password;
    String cpassword;
    String month;
    String date;
    String year;
    String gender;
    String phoneNumber;
    String typeOfUser;
    
    public SignupModel(){}

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getCpassword() {
        return cpassword;
    }

    public String getMonth() {
        return month;
    }

    public String getDate() {
        return date;
    }

    public String getYear() {
        return year;
    }

    public String getGender() {
        return gender;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getTypeOfUser() {
        return typeOfUser;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setTypeOfUser(String typeOfUser) {
        this.typeOfUser = typeOfUser;
    }
    
    
    
}
