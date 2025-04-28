package day04.challenges;

import day04.challenges.hr.Employee;
import day04.challenges.hr.Programmer;

import java.util.List;

public interface IEmployee {
    List<Employee> initListEmployee();

//    void displayEmployees(List<Programmer> employees);
//
//    void generateSalary(List<Programmer> employees);

    void displayEmployees(List<Employee> employees);

    void generateSalary(List<Employee> employees);
}
