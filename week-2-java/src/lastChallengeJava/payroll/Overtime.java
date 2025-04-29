package lastChallengeJava.payroll;

public class Overtime extends PayrollItem implements IndependentToSalary{
    private int hours;
    private double overtime;
    public static double totalOvertime = 0;

    public Overtime(int hours, double overtime) {
        this.hours = hours;
        this.overtime = overtime;
    }

    @Override
    public void calc() {
        setTotalPayroll(hours * overtime);
        totalOvertime += (hours * overtime);

    }
}
