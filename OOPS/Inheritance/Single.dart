//Single Inheritance
class Vehicle
{
    int? vId;
    String? vName;
    String? regNo;

    Vehicle()
    {
        print("Vehicle Default constructor");
    }
    
    Vehicle.call(int vId,String vName,String regNo)
    {
         this.vId=vId;
         this.vName=vName;
         this.regNo=regNo;
    }

}
class Car extends Vehicle
{
    String? vType;

    Car()
    {
        print("Car Default constructor");
    }
   
    Car.callCar(int vId,String vName,String regNo,String vType):super.call(vId,vName,regNo)  //we can use super like this only
    {
        this.vType=vType;
    }

    void display()
    {
        print("ID: $vId");
        print("Name: $vName");
        print("Reg No: $regNo");
        print("Type: $vType");

    }
    
}
void main()
{
     Car();
     Car c=Car.callCar(1,"Toyota","TN32V51","Speed car");
     c.display();
     //we can access the variable of the class
     print(c.vName);


}