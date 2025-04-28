package day04.challenges;

import day04.challenges.hr.QA;
import day04.challenges.hr.Sales;
import day04.challenges.salary.Comissions;
import day04.challenges.salary.Overtime;
import day04.part05.Roles;
import day04.challenges.hr.Employee;
import day04.challenges.hr.Programmer;
import day04.challenges.salary.Transportasi;

import java.time.LocalDate;
import java.util.List;

public class EmployeeImpl implements IEmployee{
    @Override
    public List<Employee> initListEmployee() {

        Programmer emp1 = new Programmer(101,"Yuli",
                LocalDate.of(2025,12,12), Roles.PROGRAMMER,6_000_000,
                new Transportasi(LocalDate.now(),500_000,150_000,100_00)
        );

        Programmer emp2 = new Programmer(102,"Widi",
                LocalDate.of(2025,12,12), Roles.PROGRAMMER,5_000_000,
                new Transportasi(LocalDate.now(),100_000,50_000,100_00)
        );

        Sales sales1 = new Sales(103, "Dian",
                LocalDate.of(2025, 12, 12), Roles.SALES, 3_000_000,
                new Comissions(LocalDate.now(), 500_000, 200_000));

        QA qa1 = new QA(104, "Gita",
                LocalDate.of(2025, 12, 12), Roles.QA, 4_500_000,
                new Overtime(LocalDate.now(), 10_000));

        return List.of(emp1,emp2,sales1,qa1);
    }

    @Override
    public void displayEmployees(List<Employee> employees) {
        for(Employee emp : employees){

            System.out.println(emp.toString());
        }
    }

    @Override
    public void generateSalary(List<Employee> employees) {
        for (Employee emp : employees){
            emp.calculateTotalSalary();
        }
    }
}
