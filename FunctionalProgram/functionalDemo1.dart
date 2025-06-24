void main()
{
    int x=3;
    // Assigning the function to a variable
    var cubeVar=cube;
    print("Cube of $x: ${cubeVar(x)}");

    //it assign the return value of function to the variable
    int y=2;
    var cubeVar1=cube(y);
    print("Cube of $x: $cubeVar1");

}
int cube(int x)
{
    return x*x*x;
}