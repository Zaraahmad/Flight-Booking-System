/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

/**
 *
 * @author zara-
 */
public class BookingModel {
    String CID;
    String origin;
    String dest;
    String departure;
    String arrival;
    String passengers;
    String phNum;

    public BookingModel() {
    }
    

    public void setCID(String CID) {
        this.CID = CID;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public void setDest(String dest) {
        this.dest = dest;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public void setArrival(String arrival) {
        this.arrival = arrival;
    }

    public void setPassengers(String passengers) {
        this.passengers = passengers;
    }

    public void setPhNum(String phNum) {
        this.phNum = phNum;
    }

    public String getCID() {
        return CID;
    }

    public String getOrigin() {
        return origin;
    }

    public String getDest() {
        return dest;
    }

    public String getDeparture() {
        return departure;
    }

    public String getArrival() {
        return arrival;
    }

    public String getPassengers() {
        return passengers;
    }

    public String getPhNum() {
        return phNum;
    }
    
    
}
