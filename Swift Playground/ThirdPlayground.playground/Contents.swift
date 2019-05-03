import UIKit
import Foundation


// var str = "Hello, playground"
// Divisible by 3, 5, 3 and 5


for number in 1...100 {
    if number%3 == 0 && number%5==0{ // Modulus
        print("FizzBuzz")
    }else if number%3 == 0{
        print("Fizz")
    }else if number%5==0 {
        print("Buzz")
    }else{
        print(number)
    }
}
print("\n\n\n\n\n")
 

// ----------------------------------------------------------------------------
// Multiplication Table 1 to 10
for x in 1...10{
    for y in 1...10{
        print("\(x) x \(y) = \(x*y)")
    }
    print("---------------")
}

// ----------------------------------------------------------------------------
// Palindrome

var firstSentence = "Kasur ini Rusak"
var secondSentence = "Ibu ratna antar Ubi"
var check:String=""

var reversed = String(firstSentence.reversed())
if firstSentence.lowercased() == reversed.lowercased(){ // untuk cek ingat, case sensitive
    print("\(firstSentence) & \(reversed) -> True")
}else{
    print("False")
}

// ----------------------------------------------------------------------------


var grade = 73


if grade < 40{
    print("\(grade) : Failed")
}else{
    if grade > 38{
        if grade % 5 >= 3{
            print(grade + 5 - (grade % 5 )) // kelipatan 5 kurang dari 2
        }else{
            print(grade - (grade % 5))
        }
   
    }
    //print(grade)
}
