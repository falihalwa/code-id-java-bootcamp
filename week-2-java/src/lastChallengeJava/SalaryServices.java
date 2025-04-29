package lastChallengeJava;

import lastChallengeJava.hr.Employee;
import lastChallengeJava.hr.Status;

import java.util.List;

public interface SalaryServices {
    void generateSalary(List<Employee> emps);
    double getTotalSalary(List<Employee> emps);
    double getTotalSalaryByType(List<Employee> emps, Status empType);
}
