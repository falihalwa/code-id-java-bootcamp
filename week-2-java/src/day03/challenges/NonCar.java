package day03.challenges;

import java.time.LocalDate;
import java.time.Year;

public class NonCar extends Vehicle implements RentVehicle{
    private double orderPerHours;

    public NonCar(String registerNumber, VehicleType vehicleType, Year year, double price, double tax, int seat, LocalDate transactionDate, double orderPerHours) {
        super(registerNumber, vehicleType, year, price, tax, seat, transactionDate);
        this.orderPerHours = orderPerHours;
        setIncome(orderPerHours);
    }

    public double getOrderPerHours() {
        return orderPerHours;
    }

    public void setOrderPerHours(double orderPerHours) {
        this.orderPerHours = orderPerHours;
    }

    @Override
    public void totalIncome(double income) {
        super.setIncome(orderPerHours);
    }
}
