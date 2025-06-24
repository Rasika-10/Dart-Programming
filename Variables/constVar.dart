

// Compile-time constant, must be known at compile time.
void main()
{

    const pi=3.14;
    //pi=3.141; // ❌ Error: const variable can't be reassigned
    print(pi);


    //if we get date time for now using const it will show error..because date and time will be change 
    //rather we can use final for it because it is set on runtime
   
             //const currentTime1= DateTime.now(); // ❌ Error: not a compile-time constant

    final currentTime = DateTime.now(); 
    print(currentTime);
}