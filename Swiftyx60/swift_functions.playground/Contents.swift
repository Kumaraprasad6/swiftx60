import UIKit

// MARK: Functions
// ============functions==================
// def: A function is a reusable block of code that performs a specific task. Functions can take inputs, called parameters, and can return outputs.
// syntax: functionName(parameter1: Type) -> ReturnType { // function body }
// Usage: Functions are used to organize code into manageable sections, promote code reuse, and improve readability.

// function definition
// function with no parameters
func welcomeMessage() {
    print("Welcome to Earth!")
}

// function call
welcomeMessage()

func sayHello(name: String) {
    print ("Hello, \(name)!")
}

sayHello(name: "Sachin")

// function with return type
func sumOfTwoInts(a: Int, b: Int) -> Int {
    print("Calculating sum of \(a) and \(b)")
    return a + b
}

let result = sumOfTwoInts(a: 5, b: 10)
print("Result: \(result)")

// function with default parameter value
func sendMessage(to: String, message: String = "Hello!") {
    if message.isEmpty {
        print("Send default message to the recipient.")
    }
    print("Sending message to \(to): \(message)")
}

sendMessage(to: "Robo")
sendMessage(to: "Bose", message: "Hi there!")

// variadic functions
func calculateAverage(numbers: Double...) -> Double {
    let total = numbers.reduce(0, +)
    print("Total sum: \(total)")
    return total / Double(numbers.count)
}

let average = calculateAverage(numbers: 4, 3, 2, 1)
print("Average: \(average)")

func concatenateStrings(_ strings: String...) -> String {
    return strings.joined(separator: "-")
}

let concatenated = concatenateStrings("hey", "there", "!")
print("concatenated: \(concatenated)")

// throw functions
enum NameError: Error {
    case emptyName
    case tooShort
}

func validateName(_ name: String) throws -> Bool {
    if name.isEmpty {
        throw NameError.emptyName
    } else if name.count < 3 {
        throw NameError.tooShort
    } else {
        return true
    }
}

do {
    let isValid = try validateName("On")
    print("Your name is valid: \(isValid)")
} catch {
    print("Enter a valid name.")
}

// inout functions
func increment(_ number: inout Int) {
    number += 1
    print("Incremented value: \(number)")
}

var counter = 1
increment(&counter)

func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
    print("Swapped values: a = \(a), b = \(b)")
}

var x = 5
var y = 10
swapValues(&x, &y)

// recursive functions
func swapNumbers(_ a: inout Int, _ b: inout Int, times: Int) {
    if times <= 0 {
        return
    }
    let temp = a
    a = b
    b = temp
    print("Swapped values: a = \(a), b = \(b)")
    swapNumbers(&a, &b, times: times - 1)
}

var m = 15
var n = 25
swapNumbers(&m, &n, times: 1)

// factorial function using recursion
func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

let factResult = factorial(5)
print("Factorial: \(factResult)")

// fibonacci function using recursion
func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}

let fibResult = fibonacci(6)
print("Fibonacci: \(fibResult)")

// fibonacci without recursion
func fibonacciIterative(_ n: Int) -> Int {
    var a = 0
    var b = 1
    if n == 0 {
        return a
    }
    
    for _ in 2...n {
        let temp = a + b
        a = b
        b = temp
    }
    return b
}

let fibIterativeResult = fibonacciIterative(6)
print("Fibonacci iterative: \(fibIterativeResult)")

// sum of array using recursion
func sumOfArray(_ arr: [Int], _ n: Int) -> Int {
    if n <= 0 {
        return 0
    } else {
        return arr[n - 1] + sumOfArray(arr, n - 1)
    }
}

let sumArrayResult = sumOfArray([1, 2, 3, 4, 5], 5)
print("Sum of array: \(sumArrayResult)")

// summary: functions are essential building blocks in Swift programming that help organize code, promote reuse, and enhance readability. They can take parameters, return values, and support advanced features like default parameters, variadic parameters, error handling, and recursion.
// Functions in Swift are considered first-class citizens, meaning they can be treated as values. They can be assigned to variables, passed as arguments to other functions, and returned from functions. Therefore, functions in Swift are value types in the sense that they can be manipulated like other value types (such as structs and enums). However, when you define a function within a class or struct, it becomes an instance method, which is associated with an instance of that class or struct. This means that the function can access and modify the instance's properties and state. In this context, the function behaves more like a reference type because it is tied to the instance's identity.

