void main()
{
      var res=display("Adhi",21);
      print(res);

      var res1=display1("Rasika",22);
      print(res1);

      var res2=display2("Praveen",20);
      print(res2);

      //closure function inside main
      (name,age)
      {
         print("Name: $name\nAge: $age");
      }("Vanitha",37);
          
 
      print(greet());
      print(square(2));
      print(add(10,20));
}

//normal function
String display(String name,int age)
{
    return "Name: $name\nAge: $age";
}

//closure function
var display1=(String name,int age)
{
    return "Name: $name\nAge: $age";
};

//lambda experssion
var display2=(String name,int age)=> "Name: $name\nAge: $age";


//nullary function --> it takes zero parameter
String greet()
{
    return "Hello Everyone!!..";
}

//Unary function --> it takes one parameter
int square(int x)
{
    return x*x;
}

//Binary function --> it takes two parameter
int add(int x,int y)
{
    return x+y;
}

