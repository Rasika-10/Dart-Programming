
void main()
{
    Function inner=outerFunction();
    print(inner("Hello!!"));
} 
//a function that returns the another function
Function outerFunction()
{
    String innerFunction(String str)
    {
        return str;
    }

    return innerFunction;
}