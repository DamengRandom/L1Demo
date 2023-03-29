import UIKit

var greeting: String = "Hello, damon ~~"

greeting = "Unknown ~~"

// Wrong type, error occurred ~~
// greeting = 1 // error: mySyntaxTest.playground:7:12: error: cannot assign value of type 'Int' to type 'String'

var condition: Bool = true;

var swiftBinaryCheckValueOne: Float64 = 0.1;
var swiftBinaryCheckValueTwo: Float64 = 0.2;

let constantExample: String = "Hi, fixed constant ~~" ; // using "let" declare as constant

func checkBinaryValueIssueOutput(word: String) -> Double {
    if (condition) {
        print(word)
        print(swiftBinaryCheckValueOne + swiftBinaryCheckValueTwo) // also have this issue ...
    }
    
    return swiftBinaryCheckValueOne + swiftBinaryCheckValueTwo; // return does NOT mean we need to print it out
}

checkBinaryValueIssueOutput(word: greeting); // have to call with keyword "word:"

let result = checkBinaryValueIssueOutput(word: constantExample); // call function and execute second time ~~

print(result)

func secondNameSetupFunc(firstValue fv: Float, secondValue sv: Float) -> Float {
    return fv + sv;
}

func noParamNameSetupFunc(_ fv: Float, _ sv: Float) -> Int {
    return Int(fv + sv);
}

print(secondNameSetupFunc(firstValue: 1.2, secondValue: 2.3))
print(noParamNameSetupFunc(3.3, 4.5))
