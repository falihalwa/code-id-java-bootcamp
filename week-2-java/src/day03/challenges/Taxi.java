package day03.challenges;

import java.time.LocalDate;
import java.time.Year;

public class Taxi extends Car implements Rentable {
    private int order;
    private double orderPerKm;

    public Taxi(String registerNumber,
                Year year, double price, double tax, int seat,
                LocalDate transactionDate, int order, double orderPerKm) {
        super(registerNumber, VehicleType.TAXI, year, price, tax, seat, transactionDate);
        this.order = order;
        this.orderPerKm = orderPerKm;
        setIncome(order * orderPerKm);
        totalIncomeCar += getIncome();
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public double getOrderPerKm() {
        return orderPerKm;
    }

    public void setOrderPerKm(double orderPerKm) {
        this.orderPerKm = orderPerKm;
    }

    @Override
    public void totalIncome(double income) {
        super.setIncome(order * orderPerKm);
    }
}
