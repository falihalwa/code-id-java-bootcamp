package lastChallengeJava.payroll;

public class Insurance extends PayrollItem implements DependentToSalary{
    private int dependent;
    private int self = 1;
    private double medical;
    public static double totalInsurance = 0;;

    public Insurance(int dependent, double medical) {
        this.dependent = dependent;
        this.medical = medical;
    }

    @Override
    public void calc(double baseSalary) {
        setTotalPayroll(baseSalary * (dependent + self) * medical);
        totalInsurance += (baseSalary * (dependent + self) * medical);
    }
}
