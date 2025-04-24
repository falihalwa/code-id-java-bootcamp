package day03.challenges;

import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.Year;

public class Vehicle{
    private String registerNumber;
    private VehicleType vehicleType;
    private Year year;
    private double price;
    private double tax;
    private int seat;
    private LocalDate transactionDate;
    private double income;
    public static double totalTax;

//  Empty Constructor
    public Vehicle(){
    }

    public Vehicle(String registerNumber, VehicleType vehicleType, Year year, double price, double tax, int seat, LocalDate transactionDate) {
        this.registerNumber = registerNumber;
        this.vehicleType = vehicleType;
        this.year = year;
        this.price = price;
        this.tax = tax;
        this.seat = seat;
        this.transactionDate = transactionDate;
        totalTax += tax;
    }

    public String getRegisterNumber() {
        return registerNumber;
    }

    public void setRegisterNumber(String registerNumber) {
        this.registerNumber = registerNumber;
    }

    public VehicleType getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(VehicleType vehicleType) {
        this.vehicleType = vehicleType;
    }

    public Year getYear() {
        return year;
    }

    public void setYear(Year year) {
        this.year = year;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }

    public int getSeat() {
        return seat;
    }

    public void setSeat(int seat) {
        this.seat = seat;
    }

    public LocalDate getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(LocalDate transactionDate) {
        this.transactionDate = transactionDate;
    }

    public double getIncome() {
        return income;
    }

    public void setIncome(double income) {
        this.income = income;
    }

    @Override
    public String toString() {
        DecimalFormat df = new DecimalFormat("#.00");
        return "Vehicle{" +
                "registerNumber='" + registerNumber + '\'' +
                ", vehicleType=" + vehicleType +
                ", year=" + year +
                ", price=" + df.format(price) +
                ", tax=" + df.format(tax) +
                ", seat=" + seat +
                ", transactionDate=" + transactionDate +
                ", income=" + df.format(income) +
                '}';
    }
}
