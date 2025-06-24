
//conditional operators
//1: condition ? expression1 : expersion2  -->If condition is true, executes expr1; otherwise, executes expr2
//2: expersion1 ?? exppression2  -->If expr1 is non-null, returns its value; otherwise, returns expr2.

void main()
{
          //first one
          int a = 5;
          var c = (a < 10) ? "Statement is Correct" : "Statement is Wrong";
          print(c);
    
        
          // 2nd one Conditional statement
          int? n;
          // Warning: Operand of null-aware operation '??' has type 'int' which excludes null.
          // For batter practice make both same type to avoid warning
          // var d = n ?? 10;
          var d = n ?? "n has Null value";
          print(d);
    
          // After assigning value to n
          n = 10;
          // we make it all ready null safe 
          //d = n ? ? "n has Null value";
          d = n;
          print(d);
}