package day04.challenges.salary;

import java.time.LocalDate;

public class Comissions extends Salary{
    private double comissions;
    private double bonus;


    public Comissions(LocalDate payDay, double bonus, double comissions) {
        super(payDay);
        this.bonus = bonus;
        this.comissions = comissions;
    }

    public double getBonus() {
        return bonus;
    }

    public void setBonus(double bonus) {
        this.bonus = bonus;
    }

    public double getComissions() {
        return comissions;
    }

    public void setComissions(double comissions) {
        this.comissions = comissions;
    }
}
