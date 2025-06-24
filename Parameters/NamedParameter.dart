
    // while named parameter are placed in the curly braces{String name,,,}
    // it must be nullable or contains default value or required

//make paramters nullable - String?
void namedWithNullable({String? name, int? age}) {
  print("Name: $name, age: $age");
}

//provide default values
void namedWithDefault({String city="Namakkal", String? state}) {
  print("City: $city, State: $state");
}

//use required keyword
void namedWithRequired({required String interest,int languageKnown=2}) {
  print("Interest: $interest, LanguageKnown: $languageKnown");
}

void main() {
  namedWithNullable(age:22,name:"Rasika");
  namedWithDefault(state:"TamilNadu");
  namedWithRequired(interest:"Pencil Art");

}





