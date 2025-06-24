import "dart:io";
void main()
{
    //using print() --> brings the cursor to the next line 
    print("Helloo!!!");

    //using stdout.write() --> don't bring the cursor to the next line, it remains in the same line.
    stdout.write("Dart Programming");
   

    //stdout.write() by explicitly adding a newline character \n for the next line
    stdout.write("Output \n");
    stdout.write("New line");
}