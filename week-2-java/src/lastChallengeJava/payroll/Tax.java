package lastChallengeJava.payroll;

public class Tax extends PayrollItem implements DependentToSalary{
    private double pph;
    private double tapera;
    public static double totalTax = 0;

    public Tax(double pph, double tapera) {
        this.pph = pph;
        this.tapera = tapera;
    }

    @Override
    public void calc(double baseSalary) {
        setTotalPayroll(baseSalary * (pph + tapera));
        totalTax += (baseSalary * (pph + tapera));
    }
}
