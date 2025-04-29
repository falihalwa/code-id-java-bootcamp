package lastChallengeJava.hr;

import java.text.DecimalFormat;
import java.time.LocalDate;

public class Employee {
    private int empNo;
    private String fullName;
    private LocalDate hireDate;
    private Status status;
    private double baseSalary;
    private double totalSalary;
    private LocalDate payDay;
    public static int totalEmployee = 0;
    public static double totalEmployeesSalary = 0;

    public Employee(int empNo, String fullName, LocalDate hireDate, Status status, double baseSalary) {
        this.empNo = empNo;
        this.fullName = fullName;
        this.hireDate = hireDate;
        this.status = status;
        this.baseSalary = baseSalary;
        this.payDay = LocalDate.now();
        totalEmployee += 1;
    }

    public int getEmpNo() {
        return empNo;
    }

    public void setEmpNo(int empNo) {
        this.empNo = empNo;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public LocalDate getHireDate() {
        return hireDate;
    }

    public void setHireDate(LocalDate hireDate) {
        this.hireDate = hireDate;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public double getBaseSalary() {
        return baseSalary;
    }

    public void setBaseSalary(double baseSalary) {
        this.baseSalary = baseSalary;
    }

    public double getTotalSalary() {
        return totalSalary;
    }

    public void setTotalSalary(double totalSalary) {
        this.totalSalary = totalSalary;
    }

    public LocalDate getPayDay() {
        return payDay;
    }

    public void setPayDay(LocalDate payDay) {
        this.payDay = payDay;
    }



    @Override
    public String toString() {
        DecimalFormat df = new DecimalFormat("#.00");
        return "Employee{" +
                "empNo=" + empNo +
                ", fullName='" + fullName + '\'' +
                ", hireDate=" + hireDate +
                ", status=" + status +
                ", baseSalary=" + df.format(baseSalary) +
                ", totalSalary=" + df.format(totalSalary) +
                ", payDay= " + payDay +
                '}';
    }
}
