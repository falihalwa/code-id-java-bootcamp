package day04.part05;

import java.time.LocalDate;
import java.util.Random;

//1. implementasikan konsep encapsulation
public class Employee extends  Person implements ITask{
    //attribute instance
    private int empId;
    private LocalDate hireDate;
    private Roles role;
    private double salary;
    private double totalSalary;
    public static int totalEmployee;




    public Employee(String nationalId, String fullName, int empId, LocalDate hireDate, Roles role, double salary, double totalSalary) {
        super(nationalId, fullName);
        this.empId = empId;
        this.hireDate = hireDate;
        this.role = role;
        this.salary = salary;
        this.totalSalary = totalSalary;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }


    public LocalDate getHireDate() {
        return hireDate;
    }

    public void setHireDate(LocalDate hireDate) {
        this.hireDate = hireDate;
    }

    public Roles getRole() {
        return role;
    }

    public void setRole(Roles role) {
        this.role = role;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        if (salary > 10_000_000){
            throw new IllegalArgumentException("Salary > 10jt");
        }
        this.salary = salary;
    }

    public double getTotalSalary() {
        return totalSalary;
    }

    public void setTotalSalary(double totalSalary) {
        this.totalSalary = totalSalary;
    }

    public double getAllowances(){
        return 0;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "empId=" + empId +
                ", hireDate=" + hireDate +
                ", role='" + role + '\'' +
                ", salary=" + salary +
                ", totalSalary=" + totalSalary +
                '}';
    }

    @Override
    String InfoPerson() {
        return "Employee{" +
                "empId=" + empId +
                ", hireDate=" + hireDate +
                ", role='" + role + '\'' +
                ", salary=" + salary +
                ", totalSalary=" + totalSalary +
                '}';
    }

    @Override
    public void startProject(LocalDate starDate, LocalDate endDate) {

    }
}
