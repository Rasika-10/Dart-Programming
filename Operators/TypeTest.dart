//type test operator 

void main() 

{ 
        String a = 'GFG'; 
        double b = 3.3; 

        // Using is to compare 
        print(a is String); 

        // Using is! to compare 
        print(b is! int); 

        //using as
        dynamic value = "Hello"; 
        // TypeCast dynamic -> String 
        String str= value as String; 
        print(str); 

} 