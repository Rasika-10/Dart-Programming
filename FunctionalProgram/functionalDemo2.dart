void main()
{
    // Pass a function as a parameter
    double amt=200;
    checkOut(applyDiscount,amt);
}
void checkOut(Function operation,double val)
{
    operation(val);
}

void applyDiscount(double d)
{
    double res=d*0.8;//discount of 20%
    print("Final Amount: $res"); 
}