package day03.challenges;

import java.time.LocalDate;
import java.time.Year;

public class Boat extends NonCar {
    public static int totalBoat;

    public Boat(String registerNumber, Year year, double price, double tax, int seat, LocalDate transactionDate, double orderPerHours) {
        super(registerNumber, VehicleType.BOAT, year, price, tax, seat, transactionDate, orderPerHours);
        totalBoat++;
    }
}
