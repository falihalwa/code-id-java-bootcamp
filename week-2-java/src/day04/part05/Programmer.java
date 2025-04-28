package day04.part05;

import java.time.LocalDate;

public class Programmer extends Employee {
    private double transportasi;

    public Programmer(String nationalId, String fullName, int empId,LocalDate hireDate, Roles role, double salary, double totalSalary, double transportasi) {
        super(nationalId, fullName, empId,  hireDate, role, salary, totalSalary);
        this.transportasi = transportasi;
        setTotalSalary(salary+transportasi);
    }

    public double getTransportasi() {
        return transportasi;
    }

    public void setTransportasi(double transportasi) {
        this.transportasi = transportasi;
        super.setTotalSalary(this.getSalary()+transportasi);
    }

    public LocalDate getTunjangan(LocalDate hireDate){
        return hireDate;
    }

    @Override
    public void setTotalSalary(double totalSalary) {
        super.setTotalSalary(totalSalary);
    }

    @Override
    public double getAllowances() {
        return super.getAllowances()+transportasi;
    }

    @Override
    public String toString() {
        return super.toString()+
                ", transportasi "+transportasi;
    }


}
