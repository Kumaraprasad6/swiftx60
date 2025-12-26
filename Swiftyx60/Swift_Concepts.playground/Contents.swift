import UIKit

// MARK: Loops
// =============FOR LOOP=============
// def: For loop is used to iterate over a sequence (like an array, dictionary, or range) a specific number of times.
// syntax: The syntax for a for loop in Swift is as follows: for item in collection { // code to be executed }
// usage: For loops are commonly used when you know the number of iterations in advance or when iterating over a collection of items.

///#1
let fruits = ["Apple", "Banana", "Cherry", "Orange", "Mango"]
for fruit in fruits {
    print("I like to eat \(fruit).")
}

///#2
for number in 1...5 {
    print("Number: \(number)")
}

///#3
for character in "Hello, World!" {
    print("each character: \(character)")
}

///#4
for index in 0..<fruits.count {
    print("Fruit at index \(index): \(fruits[index])")
}

///#5
for (index, fruit) in fruits.enumerated() {
    print("Fruit \(index + 1): \(fruit)")
}

///#6
for day in ["Sunday", "Monday", "Tuesday"] {
    print("Today is \(day).")
}

///#7
for index in stride(from: 10, to: 0, by: -2) {
    print("Countdown: \(index)")
}

// summary: For loops are helpful for iterating over collections and performing actions a specific number of times.
// the drawbacks are that they may not be suitable for scenarios where the number of iterations is unknown or dynamic.

// ===========WHILE LOOP=============
// def: While loop is used to repeatedly execute a block of code as long as a specified condition is true.
// syntax: The syntax for a while loop in Swift is as follows: while condition { // code to be executed }
// usage: While loops are commonly used when the number of iterations is not known in advance and depends on a condition.

let destinationKms = 20
var currentKms = 0

while currentKms < destinationKms {
    currentKms += 2
    print("You have traveled \(currentKms) kms.")
}
print("Reached destination which was \(destinationKms) kms away.")

// summary: While loops are useful for scenarios where the number of iterations is uncertain and depends on dynamic conditions.
// the drawbacks are that they can lead to infinite loops if the condition is never met, so careful management of the loop condition is necessary.

// ===========REPEAT-WHILE LOOP=============
// def: Repeat-while loop is similar to a while loop, but it guarantees that the code block will be executed at least once before checking the condition.
// syntax: The syntax for a repeat-while loop in Swift is as follows: repeat { // code to be executed } while condition
// usage: Repeat-while loops are commonly used when you want to ensure that the code block runs at least once, regardless of the condition.

var maxChances = 3

repeat {
    print("\(maxChances) left : Play again")
    maxChances -= 1
} while maxChances > 0

print("Game over! No more chances left.")

// summary: Repeat-while loops are useful when you need to execute a block of code at least once before evaluating the condition.
// the drawbacks are similar to while loops, as they can also lead to infinite loops if the condition is never met.

// exit loops
let depthInKms = 20
var currentDepth = 0

while currentDepth < depthInKms {
    currentDepth += 2
    if currentDepth > 15 {
        print("Too deep! Need oxygen supply.")
        break
    }
    print("Current depth: \(currentDepth) kms.")
}
print("Reached maximum depth of \(currentDepth) kms.")

// breaking multiple loops
outerLoop: for index in 1..<10 {
    for value in 1...5 {
        print("product of \(index) and \(value) is \(index * value)")
        
        if index * value > 20 {
            print("Product exceeded 20, exiting both loops.")
            break outerLoop
        }
    }
}

// skipping items
for number in 1...10 {
    if number % 2 == 1 {
        continue // Skip odd numbers
    }
    print("Even number: \(number)")
}

// summary: exit and skip functionalities in loops provide control over the flow of execution within loops.
// they allow you to break out of loops or skip specific iterations based on conditions, enhancing the flexibility of loop constructs.
// the drawbacks are that excessive use of break and continue statements can make code harder to read and maintain.
