package lastChallengeJava;

import lastChallengeJava.hr.*;
import lastChallengeJava.payroll.Insurance;
import lastChallengeJava.payroll.Operational;
import lastChallengeJava.payroll.Overtime;
import lastChallengeJava.payroll.Tax;

public class Main {
    public static void main(String[] args) {
        HRService employee = new HRServiceImpl();
        SalaryServices salaryServices = new SalaryServiceImpl();

        var listEmp = employee.initEmployeeData();
        salaryServices.generateSalary(listEmp);

//        System.out.println();

        System.out.printf("%.2f\n", salaryServices.getTotalSalaryByType(listEmp, Status.MAGANG));

        System.out.println();

        for (Employee emp : listEmp){
            System.out.println(emp.toString());
        }

        System.out.println();

        System.out.print("--------SUMMARY-------\n");
        System.out.printf("Total Employee : %d\n", employee.getTotalEmployee(listEmp));
        System.out.printf("Total Salary   : %.2f\n", salaryServices.getTotalSalary(listEmp));
        System.out.printf("Total Salary   : %.2f\n", Insurance.totalInsurance);
        System.out.printf("Total Salary   : %.2f\n", Overtime.totalOvertime);
        System.out.printf("Total Salary   : %.2f\n", Operational.totalOperational);
        System.out.printf("Total Salary   : %.2f\n", Tax.totalTax);
    }
}
