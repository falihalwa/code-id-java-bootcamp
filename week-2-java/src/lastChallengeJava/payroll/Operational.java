package lastChallengeJava.payroll;

public class Operational extends PayrollItem implements IndependentToSalary{
    private int days;
    private double lunch;
    private double transport;
    public static double totalOperational = 0;

    public Operational(int days, double lunch, double transport) {
        this.days = days;
        this.lunch = lunch;
        this.transport = transport;
    }

    @Override
    public void calc() {
        setTotalPayroll(days * (lunch + transport));
        totalOperational += (days * (lunch + transport));
    }
}
