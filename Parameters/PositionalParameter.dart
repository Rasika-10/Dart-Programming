

//Positional Parameter
void positional(String name, int age) {
  print("Name: $name, Age: $age");
}


//Optional Positional Parameter -it must be enclosed in the [parameter,..]
void optionalPositional(String city,[int pin=637212,String state="TamilNadu"])
{
      print("City: $city");  
      print("State: $state");  
      print("PIN code: $pin");

}


void main() {
  positional("Adhi", 21);
  optionalPositional("Coimbatore",637008);

}
