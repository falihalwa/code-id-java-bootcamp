package day04.part05;

public abstract class Person {
    private String nationalId;
    private String fullName;

    //constructor
    public Person(String nationalId, String fullName) {
        this.nationalId = nationalId;
        this.fullName = fullName;
    }

    //method abract
    abstract String InfoPerson();
}
