package day04.challenges.hr;

import day04.challenges.ISalary;
import day04.challenges.salary.Comissions;
import day04.part05.Roles;

import java.time.LocalDate;

public class Sales extends Employee implements ISalary{
    private Comissions komisi;

    public Sales(int empId, String fullName, LocalDate hireDate, Roles role, double salary, Comissions comissions) {
        super(empId, fullName, hireDate, role, salary);
        this.komisi = comissions;
    }

    @Override
    public void calculateTotalSalary() {
        setTotalSalary(getSalary()+ komisi.getBonus() + komisi.getComissions() - calculateTax());
    }

    @Override
    public double calculateTax() {
        return (getSalary()*0.01);
    }
}
