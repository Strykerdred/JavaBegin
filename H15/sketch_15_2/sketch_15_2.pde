class Person {
    String name;
    int age;
    String gender;

    Person(String name, int age, String gender) {
        this.name = name;
        this.age = age;
        this.gender = gender;
    }

    void information() {
        println("Name: " + name);
        println("Age: " + age); 
        println("Gender: " + gender); 
    }
}

void setup(){
 Person person1 = new Person("Nino", 22, "Male");
 person1.information();
}
