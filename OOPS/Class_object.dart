class Student {
    // Fields
    String? name;
    int? age;

    // Method
    void displayInfo() {
        print("Name: $name");
        print("Age: $age");
    }
}

void main() {

    // Creating an object of the Student class
    Student student1 = Student();

    // Assigning values
    student1.name = "Alice";
    student1.age = 20;

    // Calling a method using the object
    student1.displayInfo();
}
