class Car
{
    int? _carNo;
    String? _carName;
    String? _carType;

    void setCarNo(int carNo)
    {
        this._carNo=carNo;
    }
    void setCarName(String carName)
    {
        this._carName=carName;
    }
    void setCarType(String carType)
    {
        this._carType=carType;
    }

    int? get getCarNo=> _carNo;
    String? get getCarName=>_carName;
    String? get getCarType=> _carType;
    
}

void main()
{
    Car c=Car();
    c.setCarNo(2);
    c.setCarName("Toyota");
    c.setCarType("Normal car");
    print(c.getCarNo);
    print(c.getCarName);
    print(c.getCarType);

}