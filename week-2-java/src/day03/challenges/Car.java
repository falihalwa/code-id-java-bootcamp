package day03.challenges;

import java.time.LocalDate;
import java.time.Year;

public class Car extends Vehicle{
    public static int totalCar;

    public Car(String registerNumber, VehicleType vehicleType, Year year, double price, double tax, int seat, LocalDate transactionDate) {
        super(registerNumber, vehicleType, year, price, tax, seat, transactionDate);
        totalCar++;
    }
}
