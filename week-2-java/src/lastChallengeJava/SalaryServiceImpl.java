package lastChallengeJava;

import lastChallengeJava.hr.*;
import lastChallengeJava.payroll.DependentToSalary;

import java.util.List;

public class SalaryServiceImpl implements SalaryServices{
    @Override
    public void generateSalary(List<Employee> emps) {
        for (Employee emp : emps){
            ((CalcSalary) emp).calculateSalary();
        }
    }

    @Override
    public double getTotalSalary(List<Employee> emps) {
        double totalEmployeeSalary = 0;
        for (Employee emp : emps){
            totalEmployeeSalary += emp.getTotalSalary();
        }
        return totalEmployeeSalary;
    }

    @Override
    public double getTotalSalaryByType(List<Employee> emps, Status empType) {
        double totalSalaryByType = 0;
        for (Employee emp : emps){
            if(emp.getStatus() == empType){
                totalSalaryByType += emp.getTotalSalary();
            }
        }
        return totalSalaryByType;
    }
}
