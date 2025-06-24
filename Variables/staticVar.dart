//static variables must always be declared inside a class. 
//You cannot use static at the top-level (outside of a class) 
//doing so will result in a compile-time error.

class Count
{
    static int count=0;  //static - Used to share a variable across all instances of a class.
    
    void increment()
    {
        count++;
        print("Count: $count");
    }
}

void main()
{
    Count c=new Count();
    c.increment();  //count:1
    c.increment();  //count:2


}