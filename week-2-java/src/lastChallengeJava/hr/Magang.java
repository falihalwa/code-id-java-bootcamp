package lastChallengeJava.hr;

import lastChallengeJava.payroll.DependentToSalary;
import lastChallengeJava.payroll.IndependentToSalary;
import lastChallengeJava.payroll.PayrollItem;

import java.time.LocalDate;
import java.util.List;

public class Magang extends Employee implements CalcSalary{
    public List<PayrollItem> listPayroll;
    public static int totalEmployee = 0;
    public static double totalEmployeeSalary = 0;

    public Magang(int empNo, String fullName, LocalDate hireDate, double baseSalary, List<PayrollItem> listPayroll) {
        super(empNo, fullName, hireDate, Status.MAGANG, baseSalary);
        this.listPayroll = listPayroll;
        for (PayrollItem a : listPayroll){
            if(a instanceof DependentToSalary){
                ((DependentToSalary) a).calc(getBaseSalary());
            } else if(a instanceof IndependentToSalary){
                ((IndependentToSalary) a).calc();
            }
        }
        totalEmployee++;
    }

    @Override
    public void calculateSalary() {
        double sal = getBaseSalary();
        for (PayrollItem a : listPayroll){
            if(a instanceof DependentToSalary){
                sal -= a.getTotalPayroll();
            } else if (a instanceof IndependentToSalary) {
                sal += a.getTotalPayroll();
            }
        }
        setTotalSalary(sal);
        Magang.totalEmployeesSalary += sal;
        Employee.totalEmployeesSalary += sal;
    }
}
