package day04.part05;

import java.util.List;

public interface IEmployee {

    //return all employee
    List<Employee> initListEmployee();

    //satu object employee
    Employee findEmployeeById(List<Employee>emps,int id);

    List<Employee> findEmployeeBySalary(List<Employee> emps,double rangeSalary);

    void displayEmployee(List<Employee> emps);

    public void displaySalary(List<Employee> emps);
}
