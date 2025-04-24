package day03.challenges;

import java.time.LocalDate;
import java.time.Year;

public class Main {
    public static void main(String[] args) {
        new  Suv(
                "D 1001 UM",
                Year.of(2010),
                350_000_000,
                3_500_000,
                4,
                LocalDate.of(2023,10,1),
                500_000,
                150_000
        );

//        System.out.println(suv1.getIncome());


        new Suv(
                "D 1002 UM",
                Year.of(2010),
                350_000_000,
                3_500_000,
                4,
                LocalDate.of(2023,10,1),
                500_000,
                150_000
        );

        new Suv(
                "D 1003 UM",
                Year.of(2015),
                350_000_000,
                3_500_000,
                5,
                LocalDate.of(2023,1,12),
                500_000,
                150_000
        );

        new Suv(
                "D 1004 UM",
                Year.of(2015),
                350_000_000,
                3_500_000,
                5,
                LocalDate.of(2023,1,13),
                500_000,
                150_000
        );

        new Taxi(
                "D 11 UK",
                Year.of(2002),175_000_000,
                1_750_000,
                4,
                LocalDate.of(2023, 1, 12),
                45,
                4500
        );

        new Taxi(
                "D 12 UK",
                Year.of(2015),225_000_000,
                2_250_000,
                4,
                LocalDate.of(2023, 1, 13),
                75,
                4500
        );

        new Taxi(
                "D 13 UK",
                Year.of(2015),275_000_000,
                2_750_000,
                4,
                LocalDate.of(2023, 1, 13),
                90,
                4500
        );

        new Plane(
                "ID8089",
                Year.of(2015),
                150_000_000_000L,
                1_500_000_000,
                12,
                LocalDate.of(2022, 12,23),
                55_000_000
        );

        new Plane(
                "ID8099",
                Year.of(2018),
                175_000_000_000L,
                1_750_000_000,
                15,
                LocalDate.of(2022, 12,25),
                75_000_000
        );

        new Boat(
                "Boat18",
                Year.of(2020),
                2_000_000_000,
                20_000_000,
                12,
                LocalDate.of(2022, 12,25),
                10_000_000
        );

        for (Vehicle v : Vehicle.allVehicle){
            System.out.println(v.toString());
        }

        System.out.println();
        System.out.println("          --SUMMARY--");
        System.out.println();

        System.out.printf("Total Income Car   : %.2f\n", Car.totalIncomeCar);
        System.out.printf("Total Income Plane : %.2f\n", Plane.totalIncomePlane);
        System.out.printf("Total Income Boat  : %.2f\n", Boat.totalIncomeBoat);
        System.out.printf("Total Tax          : %.2f\n", Vehicle.totalTax);
        System.out.println("Total Car          : " + Car.totalCar);
        System.out.println("Total Plane        : "+ Plane.totalPlane);
        System.out.println("Total Boat         : "+ Boat.totalBoat);

    }
}
