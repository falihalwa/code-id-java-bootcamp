package day04.challenges.hr;

import day04.part05.Roles;
import day04.challenges.ISalary;
import day04.challenges.salary.Transportasi;

import java.time.LocalDate;

public class Programmer extends Employee implements ISalary{

    private Transportasi transport;

    public Programmer(int empId, String fullName, LocalDate hireDate, Roles role, double salary, Transportasi transport) {
        super(empId, fullName, hireDate, role, salary);
        this.transport = transport;
    }

    @Override
    public void calculateTotalSalary() {
        setTotalSalary(getSalary()+ transport.getBensin()+ transport.getSpj()+ transport.getTransportasi() - calculateTax());
    }

    @Override
    public double calculateTax() {
        return (getSalary()*0.01);
    }
}
