package day03.challenges;

import java.time.LocalDate;
import java.time.Year;

public class Plane extends NonCar{
    public static int totalPlane;
    public static double totalIncomePlane;

    public Plane(String registerNumber, Year year, double price, double tax, int seat, LocalDate transactionDate, double orderPerHours) {
        super(registerNumber, VehicleType.PRIVATE_JET, year, price, tax, seat, transactionDate, orderPerHours);
        totalPlane++;
        totalIncomePlane += getIncome();
    }
}
