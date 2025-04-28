package day04.part05;

import java.time.LocalDate;

public class Sales extends Employee{
    private double commission;
    private double bonus;

    public Sales(String nationalId, String fullName, int empId, LocalDate hireDate, Roles role, double salary, double totalSalary, double commission, double bonus) {
        super(nationalId, fullName, empId, hireDate, role, salary, totalSalary);
        this.commission = commission;
        this.bonus = bonus;
    }

    @Override
    public double getAllowances() {
        return super.getAllowances()+commission+bonus;
    }
}
