class Mobile
{
    String? _mobileName;
    String? mobileType;
    int? _ram,_n;


    //default constructor
    Mobile()
    {
      print("Default Constructor");
    }

    //named constructor
    Mobile.call({String? mobileName,String? mobileType,int? ram,int? n})
    {
        _mobileName=mobileName;
        this.mobileType=mobileType;
        _ram=ram;
        _n=n;
        
        print(_ram!+_n!);
    }

    void display()
    {
        print("Mobile name : $_mobileName");
        print("Mobile Type : $mobileType");
        print("RAM : $_ram");
     
    }
    
}

void main()
{
    Mobile m1=Mobile();
    Mobile m2=Mobile.call(mobileName:"Redmi",mobileType:"MIUI",ram:128,n:20);
    m2.display();
    print(m2._mobileName);
      
}