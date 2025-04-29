package lastChallengeJava;

import lastChallengeJava.hr.*;
import lastChallengeJava.payroll.Insurance;
import lastChallengeJava.payroll.Operational;
import lastChallengeJava.payroll.Overtime;
import lastChallengeJava.payroll.Tax;

import java.time.LocalDate;
import java.util.List;

public class HRServiceImpl implements HRService{
    @Override
    public List<Employee> initEmployeeData() {
        Permanent perm1 = new Permanent(
                100,
                "Anton",
                LocalDate.of(2020, 2, 4),
                20_000_000,
                List.of(new Insurance(2, 0.02),
                        new Overtime(10, 50_000),
                        new Operational(2, 30_000, 20_000),
                        new Tax(0.005, 0.005)
                )
        );
        Permanent perm2 = new Permanent(
                101,
                "Budi",
                LocalDate.of(2021, 2, 4),
                15_000_000,
                List.of(new Insurance(3, 0.02),
                        new Overtime(5, 50_000),
                        new Tax(0.005, 0.005)
                )
        );

        Contract c1 = new Contract(
                103,
                "Charlie",
                LocalDate.of(2022, 2, 4),
                15_000_000,
                List.of(new Insurance(0, 0.02),
                        new Overtime(5, 45_000),
                        new Tax(0.005, 0.005)
                )
        );

        Contract c2 = new Contract(
                104,
                "Dian",
                LocalDate.of(2023, 2, 4),
                10_000_000,
                List.of(new Insurance(0, 0.02),
                        new Overtime(6, 45_000),
                        new Tax(0.005, 0.005)
                )
        );

        Magang mg1 = new Magang(
                104,
                "Gita",
                LocalDate.of(2024, 2, 4),
                0,
                List.of(new Operational(25, 30_000, 20_000))
        );

        return List.of(perm1, perm2, c1, c2, mg1);
    }

    @Override
    public int getTotalEmployee(List<Employee> emps) {
        return Employee.totalEmployee;
    }

    @Override
    public int getTotalEmployeeByType(List<Employee> emps, Status empType) {
        if(empType == Status.PERMANENT){
            return Permanent.totalEmployee;
        }
        if (empType == Status.CONTRACT) {
            return Contract.totalEmployee;
        }
        if (empType == Status.MAGANG) {
            return Magang.totalEmployee;
        } else {
            return 0;
        }
    }
}
