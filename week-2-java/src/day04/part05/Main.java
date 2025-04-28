package day04.part05;

import java.time.LocalDate;
import java.util.List;

public class Main {

    public static void main(String[] args) {
       IEmployee empInterface = new EmployeeImpl();



       var listEmployee = empInterface.initListEmployee();

       empInterface.displayEmployee(listEmployee);


    }
}
