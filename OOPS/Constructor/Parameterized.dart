class Student {
   
    String? name;
    int? age;
    
    //one way of parameterized constructor 
    // Student(String name,int age)
    // {
    //     this.name=name;
    //     this.age=age;
    // }

    //another way of parameterized constructor 
    Student(this.name,this.age);
  
    void displayInfo() {
        print("Name: ${this.name}");
        print("Age: ${this.age}");
    }
}

void main() {

 
    Student student1 = Student("Adhi",21);
    student1.displayInfo();
}

