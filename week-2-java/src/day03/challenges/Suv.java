package day03.challenges;

import java.time.LocalDate;
import java.time.Year;

public class Suv extends Car implements RentVehicle {
    private double rent;
    private double driver;

    public Suv(String registerNumber,
               Year year, double price, double tax, int seat,
               LocalDate transactionDate,
               double rent, double driver) {
        super(registerNumber, VehicleType.SUV , year, price, tax, seat, transactionDate);
        this.rent = rent;
        this.driver = driver;
        totalIncome(rent+driver);
        totalIncomeCar += getIncome();
    }

    public double getRent() {
        return rent;
    }

    public void setRent(double rent) {
        this.rent = rent;
    }

    public double getDriver() {
        return driver;
    }

    public void setDriver(double driver) {
        this.driver = driver;
    }

    @Override
    public void totalIncome( double income) {
        super.setIncome(this.rent + this.driver);
    }
}
