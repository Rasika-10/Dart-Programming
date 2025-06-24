import "dart:io";
void main()
{
    print("Enter a name:");
    //user string input
    String? name=stdin.readLineSync();
    print("Name: $name");

    //user integer input
     print("Enter a number:");
    int? n=int.parse(stdin.readLineSync()!);
    print("Number: $n");

}