package day04.part05;

import java.time.LocalDate;
import java.util.List;

public class EmployeeImpl implements IEmployee{
    @Override
    public List<Employee> initListEmployee() {
        Programmer emp1= new Programmer("300","Anton",101,LocalDate.of(2025,12,12), Roles.PROGRAMMER,6_000_000,0,5_000);
        Programmer emp2= new Programmer("301","Budi",101,LocalDate.of(2025,12,12), Roles.PROGRAMMER,6_000_000,0,5_000);
        Programmer emp3= new Programmer("302","Charlie",101,LocalDate.of(2025,12,12), Roles.PROGRAMMER,6_000_000,0,5_000);

        Programmer emp4= new Programmer("303","Dian",101,LocalDate.of(2025,12,12), Roles.SALES,6_000_000,0,5_000);

        return List.of(emp1,emp2,emp3,emp4);
    }

    @Override
    public Employee findEmployeeById(List<Employee> emps,int id) {
        for (Employee emp : emps){
            if (emp.getEmpId()==id) return emp;
        }
        return null;
    }

    @Override
    public List<Employee> findEmployeeBySalary(List<Employee> emps, double rangeSalary) {
        return List.of();
    }

    @Override
    public void displayEmployee(List<Employee> emps) {
        for(Employee emp : emps){
            System.out.println(emp.toString());
        }
    }

    @Override
    public void displaySalary(List<Employee> emps) {

    }


}
