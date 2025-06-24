void main() { 

        // Declare a string variable by concatenating 
        // multiple string literals 

        var string = 
            'Welcome' 
            'to' 
            'i-exceed'; //implicit concatenation 
        print(string); // Output: Welcometoi-exceed 

        // Declare two separate string variables 
        var str = ' Coding is   '; 
        var str1 = 'Fun'; 

        // Print the concatenated string using the `+` operator 
        print(str + str1); 

        print(str.length); // 10 

        print(str.isEmpty); // false 

        print(str.isNotEmpty); // true 

        // toLowerCase - Converts to lowercase 
        print('Lowercase: ${str.toLowerCase()}'); 

        // toUpperCase - Converts to uppercase 
        print('Uppercase: ${str.toUpperCase()}'); 

        // trim - Removes leading and trailing spaces 
        print('Trimmed: "${str.trim()}"'); 

        // contains - Checks if a string contains another string 
        print('Contains "Coding": ${str.contains("Coding")}'); 

        // startsWith - Checks if a string starts with a given   substring 
        print('Starts with "F": ${str1.startsWith("F")}'); 

        // endsWith - Checks if a string ends with a given substring 
        print('Ends with "n": ${str1.endsWith("n")}'); 

        // indexOf - Returns index of first occurrence of substring 
        print('Index of "is": ${str.indexOf("is")}'); 

} 

 