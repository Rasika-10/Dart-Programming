//Multilevel Inheritance
class Transport
{
    String? tranportRule;
    Transport({String? tranportRule})
    {
        this.tranportRule=tranportRule;
    }
}
class Vehicle extends Transport
{
    String? vType;
    String? fuelType;

    //parameterized constructor(named parameters)
    Vehicle({String? tranportRule,String? vType,String? fuelType}):super(tranportRule:tranportRule)
    {
        this.vType=vType;
        this.fuelType=fuelType;
    }
}
class Bike extends Vehicle
{
    int? id;
    String? brand;
    Bike({String? tranportRule,String? vType,String? fuelType,int? id,String? brand}):super(tranportRule:tranportRule,vType:vType,fuelType:fuelType)
    {
        this.id=id;
        this.brand=brand;
    }

    void display()
    {
        print("Transport Rule: $tranportRule");
        print("Vehicle Type: $vType");
        print("Fuel Type: $fuelType");
        print("ID: $id");
        print("Brand: $brand");
    }
}

void main()
{
    Bike b=new Bike(tranportRule:"Go Slow!!",vType:"Bike",fuelType:"Diesel",id:1,brand:"Honda");
    b.display();
}
