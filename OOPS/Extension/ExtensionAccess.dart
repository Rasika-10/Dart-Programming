import "Extension.dart";

extension Details on Vehicle
{
    String detail(String str)
    {
        return "Registration number: $str \nWheels : $wheels";
    }
}

//we also use without the extension name-->but mandatory to provide the name
extension on Vehicle
{
    String trimAndReplace(String rt,String rb)
    {
        return s.trim().replaceAll(rt,rb);
    }
}

extension addDetails on Vehicle
{
    Map details()
    {
        Map<dynamic,dynamic> details={};
        details["Name"]=name;
        details["Type"]=type;
        return details;

    }
}


void main()
{
    Vehicle v=Vehicle("Car","Toyota",4);
    v.display();
    print(v.detail("TN32V51"));
    print(v.trimAndReplace('e','x'));
    print(v.details());

}