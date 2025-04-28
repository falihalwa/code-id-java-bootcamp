package day04.part05;

import java.time.LocalDate;
import java.util.List;

public class HRImpl implements IEmployee,ITask{
    @Override
    public List<Employee> initListEmployee() {
        return List.of();
    }

    @Override
    public Employee findEmployeeById(List<Employee> emps, int id) {
        return null;
    }

    @Override
    public List<Employee> findEmployeeBySalary(List<Employee> emps, double rangeSalary) {
        return List.of();
    }

    @Override
    public void displayEmployee(List<Employee> emps) {

    }

    @Override
    public void displaySalary(List<Employee> emps) {

    }

    @Override
    public void startProject(LocalDate starDate, LocalDate endDate) {

    }
}
