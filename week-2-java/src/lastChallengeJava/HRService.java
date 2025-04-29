package lastChallengeJava;

import lastChallengeJava.hr.Employee;
import lastChallengeJava.hr.Status;

import java.util.List;

public interface HRService {
    List<Employee> initEmployeeData();
    int getTotalEmployee(List<Employee> emps);
    int getTotalEmployeeByType(List<Employee> emps, Status empType);
}
