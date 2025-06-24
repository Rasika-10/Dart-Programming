class Vehicle
{
    String? name;
    String? type;
    int? wheels;
    String s="   Welcome";

    Vehicle(String name,String type,int wheels)
    {
        this.name=name;
        this.type=type;
        this.wheels=wheels;
    }

    void display()
    {
        print("Vehicle Name : $name");
        print("Vehicle Type : $type");
    }
}



