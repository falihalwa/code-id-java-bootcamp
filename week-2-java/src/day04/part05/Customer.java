package day04.part05;

public class Customer extends Person{

    private double totalPurchase;


    public Customer(String nationalId, String fullName) {
        super(nationalId, fullName);
    }

    public Customer(String nationalId, String fullName, double totalPurchase) {
        super(nationalId, fullName);
        this.totalPurchase = totalPurchase;
    }

    @Override
    String InfoPerson() {
        return "Total Purchase : "+this.totalPurchase;
    }
}
