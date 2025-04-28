package day04.challenges.salary;

import java.time.LocalDate;

public class Overtime extends Salary{
    private double makan;

    public Overtime(LocalDate payDay, double meal) {
        super(payDay);
        this.makan = meal;
    }

    public double getMakan() {
        return makan;
    }

    public void setMakan(double makan) {
        this.makan = makan;
    }
}
