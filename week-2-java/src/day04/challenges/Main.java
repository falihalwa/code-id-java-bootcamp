package day04.challenges;

import day04.challenges.hr.Employee;
import day04.challenges.hr.Programmer;
import day04.challenges.hr.Sales;

import java.util.List;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        IEmployee empInf = new EmployeeImpl();

        var employees = empInf.initListEmployee();

        //kita casting menggunakan wildcard ?, dari employee to programmer
        // metode ini lebih safe
//        List<Employee> employee = employees.stream()
//                .filter(Programmer.class::isInstance)
//                .map(Programmer.class::cast)
//                        .collect(Collectors.toList());

        List<Employee> employee = employees;
//                .filter(Sales.class::isInstance)
//                .map(Sales.class::cast)
//                .collect(Collectors.toList());


        //generate salary
        empInf.generateSalary(employee);

        empInf.displayEmployees(employee);
    }
}
