package day04.challenges.hr;

import day04.challenges.ISalary;
import day04.challenges.salary.Overtime;
import day04.part05.Roles;

import java.time.LocalDate;

public class QA extends Employee implements ISalary {
    private Overtime makan;

    public QA(int empId, String fullName, LocalDate hireDate, Roles role, double salary, Overtime makan) {
        super(empId, fullName, hireDate, role, salary);
        this.makan = makan;
    }

    public Overtime getMakan() {
        return makan;
    }

    public void setMakan(Overtime makan) {
        this.makan = makan;
    }

    @Override
    public void calculateTotalSalary() {
        setTotalSalary(getSalary() + makan.getMakan() - calculateTax());
    }

    @Override
    public double calculateTax() {
        return (getSalary()*0.01);
    }
}
