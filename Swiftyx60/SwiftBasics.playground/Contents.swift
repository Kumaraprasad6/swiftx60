import UIKit

// MARK: Simple Types
// =================Variables================
// Def: Variables are named storage locations that can hold different types of data and can be modified after their initial assignment.
// Syntax: Variables are defined using the 'var' keyword followed by the variable name and an
// Usage: Variables are commonly used to store data that can change over time, such as user input, calculations, or temporary values.
var greeting = "Hello, playground"
print(greeting)

greeting = "Hello, world!"
print(greeting)

// Multi line strings
var multiLineString = """
This is a multi-line string.
breakdown
which prints the \n symbol as a new line.
"""

var multiLineString2 = """
This is another multi-line string. \
where next line symbol \
is ignored
"""

// There are different data types in Swift, basically used to define the type of data a variable can hold
// most commonly used data types are String, Int, Double, Boolean

// Integer
var myInt: Int = 42
print("My integer is \(myInt)")
// myInt = "This will cause an error"

// Double
var myDouble: Double = 3.14
print("My double is \(myDouble)")

// Boolean
var isBoolean: Bool = true
print("My boolean is \(isBoolean)")

// Swift is a type safe language, which detects the type of variable at compile time
// type inferred, can be declared explicitly

// String Interpolation
var name = "Tom cat"
print("Hello, \(name)! Welcome to Swift programming.")

var age = 20
print("\(name) is \(age) years old.")

// Summary: Variables are mutable storage locations that can hold different types of data.
// the memory of variables are allocated at runtime

// ===============Constants=============
// def: Constants are named storage locations that hold data which cannot be modified after their initial assignment.
// Syntax: Constants are defined using the 'let' keyword followed by the constant name and an initial value.
// Usage: Constants are commonly used to store data that should remain unchanged throughout the program, such as configuration values, fixed settings, or mathematical constants.
let constantGreeting = "Hello, constant world!"
print(constantGreeting)
// constantGreeting = "This will cause an error"
print(constantGreeting)

// Type annotations
// Type annotations are used to explicitly specify the type of a variable or constant.
var myInt2: Int = 42
var myString: String = "Hello, Swift!"
var myDouble2: Double = 3.14
var isBoolean2: Bool = true
print("Int: \(myInt2), String: \(myString), Double: \(myDouble2), Bool: \(isBoolean2)")


// Summary: Constants are immutable storage locations that hold data which cannot be changed after their initial assignment.
// the instance or memory of constants are fixed at compile time
// Constants are useful for ensuring data integrity and preventing accidental modifications.

// MARK: Complex Types
// =======================Arrays===================
// Def: Arrays are ordered collection of values of the same type that are stored as a single value.
// Syntax: Arrays are defined using square brackets [] and can be mutable or immutable based on how they are declared.
// Usage: Arrays are commonly used to store lists of items, such as names, numbers, or objects.

let fruits = ["Apple", "Banana", "Cherry"]
print("Fruits: \(fruits)")

let numbers: [Int] = [1, 2, 3, 4, 5]
print("Numbers: \(numbers)")

let mixedArray: [Any] = ["Hello", 42, 3.14, true]
print("Mixed Array: \(mixedArray)")

let emptyArray: [String] = []
print("Empty Array: \(emptyArray)")

let myFruit = fruits[0]
print("First fruit: \(myFruit)")

let fruitCount = fruits.count
print("Number of fruits: \(fruitCount)")

// let unknownFruit = fruits[10]
// it will crash because index out of range, never access an index that is out of bounds
// To safely access elements, we can use optional binding

// Summary: Arrays maintain the order of elements and allow duplicates.
// Arrays are value types, because they are copied when assigned to a new variable or passed to a function.
// Advantages of arrays include ordered collection, ability to store duplicates, and easy access using index.
// Disadvantages include potential for out-of-bounds errors and slower membership checking compared to sets.

// =====================Sets========================
// Def: Sets are unordered collection of values of the same type that are stored as a single value. Each value in a set must be unique.
// Syntax: Sets are defined using the Set type and can be mutable or immutable based on how they are declared.
// Usage: Sets are commonly used to store unique items, such as tags, categories, or identifiers.

let colors = Set(["Red", "Green", "Blue"])
print("Colors: \(colors)")

let uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5]
print("Unique Numbers: \(uniqueNumbers)")

var emptySet = Set<String>()
print("Empty Set: \(emptySet)")

let hasRed = colors.contains("Red")
print("Set contains Red: \(hasRed)")

let extraColors = Set(["Yellow", "Green", "Purple", "Yellow", "Green"])
print("Extra Colors (duplicates removed): \(extraColors)")

// Summary: The values in the set are stored based on the hash value of the elements, so the order of elements is not guaranteed.
// no duplicates allowed in sets due to hashing mechanism
// Where arrays are stored based on index positions, can be accessed using index
// Sets are faster for membership checking due to hashing mechanism
// Sets are value types, because they are copied when assigned to a new variable or passed to a function.
// Advantages of sets include uniqueness of elements and fast membership checking.
// Disadvantages include lack of order and inability to access elements by index.

// =================Tuples========================
// Def: Tuples are ordered collection of values of different types that are stored as a single value.
// Syntax: Tuples are defined using parentheses () and can contain values of different types.
// Usage: Tuples are commonly used to group related values together, such as coordinates, RGB values, or name-age pairs.

let person: (String, Int) = ("Steve", 30)
print("Person: \(person)")
print("Name: \(person.0), Age: \(person.1)")

let rgbColor: (red: Int, green: Int, blue: Int) = (255, 255, 0)
print("RGB - Green Color: \(rgbColor.green)")

// Summary: Tuples are useful for grouping related values together without creating a custom data type.
// Tuples can contain values of different types, making them flexible for various use cases.
// It have a fixed size and cannot be resized like arrays or sets.
// Tuples are value types, meaning they are copied when assigned to a new variable or passed to a function.
// Tuples have a fixed type, meaning the types of the elements cannot be changed after the tuple is created.
// Advantages are lightweight and easy to use for grouping related values.
// Disadvantages include lack of flexibility in size and type, and limited functionality compared to arrays and sets.

// Arrays vs Sets vs Tuples
// When to use Arrays: Use arrays when you need an ordered collection of values that can contain duplicates and when the order of elements matters.
// When to use Sets: Use sets when you need an unordered collection of unique values and when membership checking is important.
// When to use Tuples: Use tuples when you need to group related values together without creating a custom data type, especially when the values have different types.

// =================Dictionaries================
// Def: Dictionaries are unordered collection of key-value pairs where each key is unique and maps to a specific value.
// Syntax: Dictionaries are defined using square brackets [] with key-value pairs separated by colons (:) and can be mutable or immutable based on how they are declared.
// Usage: Dictionaries are commonly used to store data that needs to be accessed using unique keys, such as user profiles, settings, or configurations.

let pincodes = ["Mumbai": 400001, "Delhi": 110001, "Bangalore": 560001, "Hyderabad": 500001, "Chennai": 600001]
print("Pincodes: \(pincodes)")

let pincodeOfDelhi = pincodes["Delhi"]
print("Pincode of Delhi: \(String(describing: pincodeOfDelhi))")

let pincodeOfPune = pincodes["Pune"]
print("Pincode of Pune: \(String(describing: pincodeOfPune))") // nil

// default value while accessing dictionary
let pincodeOfKolkata = pincodes["Kolkata", default: 000000]
print("Pincode of Kolkata: \(pincodeOfKolkata)")

//Type annotations of dictionaries
let countryCodes: [String: String] = ["US": "United States", "IN": "India", "UK": "United Kingdom"]
let latitudeOfCountries: [String: Double] = ["US": 37.7747, "IN": 28.6139, "UK": 51.5074]
let isDevelopedCountry: [String: Bool] = ["US": true, "IN": false, "UK": true]

// Summary: Dictionaries are useful for storing and accessing data using unique keys.
// Dictionaries provide fast lookups based on keys. Advantages include fast access to values using keys, ability to store complex data structures, and flexibility in key-value pair types.
// Disadvantages include unordered nature, potential for key collisions, and increased memory usage compared to arrays
// Dictionaries are value types, meaning they are copied when assigned to a new variable or passed to a function.

// ===================Enumerations=================
// ===================Enumerations=================
// Def: Enumerations (enums) are user-defined data types that consist of a group of related values called cases.
// Syntax: Enums are defined using the enum keyword followed by the name of the enum and the cases enclosed in curly braces {}.
// Usage: Enums are commonly used to represent a fixed set of related values, such as directions, states, or options.

enum Direction {
    case north
    case south
    case east
    case west
}

let sunRiseDirection: Direction = .east
print("Sunrise Direction: \(sunRiseDirection)")

// Enums with raw values
enum NumberOfSides: Int {
    case triangle = 3
    case square = 4
    case pentagon = 5
    case hexagon = 6
}

let sidesOfSquare = NumberOfSides.square.rawValue
print("Number of sides in a square: \(sidesOfSquare)")

// Enums with associated values
enum Food {
    case pizza(toppings: [String])
    case burger(size: String)
    case salad(dressing: String)
}

let cheesePizza = Food.pizza(toppings: ["Cheese", "Tomato Sauce", "Olives"])
print("Ordered food: \(cheesePizza)")

// Summary: Enums provide a way to group related values together and give them meaningful names.
// Enums improve code readability and maintainability by using descriptive case names.
// Enums can have raw values of different types, such as Int, String, or Double. It can have associated values to store additional information for each case.
// Advantages include improved code readability, type safety, and ability to represent complex data structures.
// Disadvantages include limited flexibility in adding new cases and potential for increased complexity in certain scenarios.

// MARK: Operators and Conditions
// ====================Arithmetic Operators=================
// def: Arithmetic operators are symbols used to perform mathematical operations on numeric values.(+,-,*,/,%)
// syntax: Arithmetic operators are used between two numeric values or variables to perform calculations.
// usage: Arithmetic operators are commonly used in mathematical calculations, data processing, and algorithm implementations.

let sum: Int = 10 + 20
print("Sum: \(sum)")

let difference: Int = sum - 15
print("Difference: \(difference)")

let product: Int = sum * difference
print("Product: \(product)")

let quotient: Int = product / difference
print("Quotient: \(quotient)")

let remainder: Int = product % 12
print("Remainder: \(remainder)")

// Summary: Arithmetic operators are fundamental for performing mathematical calculations in Swift.
// They can be used with different numeric types, such as Int and Double.

// ==================Operator Overloading=================
let distance = 20 + 25
print("Distance: \(distance)")

let mountainName = "Mount " + "Everest"
print("Mountain Name: \(mountainName)")

let northCities = ["New Delhi", "Chandigarh", "Jaipur"]
let southCities = ["Bangalore", "Hyderabad", "Chennai"]

let southAndNorthCities = northCities + southCities
print("Cities in South and North: \(southAndNorthCities)")
// Summary: Operator overloading allows the same operator to be used with different data types.
// It enhances code readability and expressiveness by allowing intuitive operations on custom types.
// However, excessive operator overloading can lead to confusion and reduced code clarity if not used properly.
// It won't let us use the operator for different types if it's not defined for those types.

// ===================Compound Operators=================
// def: Compound operators are shorthand operators that combine an arithmetic operation with assignment.
// syntax: Compound operators are used with a variable on the left side and an arithmetic operation followed by an equal sign (=) on the right side.
// usage: Compound operators are commonly used to simplify code and make it more concise when performing arithmetic operations and updating variable values.

var weight = 70
weight += 5
print("Updated Weight after += : \(weight)")

var mountainQuote = "Mount Everest is the highest peak"
mountainQuote += " in the world."
print("Updated Mountain Quote after += : \(mountainQuote)")
// Summary: Compound operators provide a concise way to perform arithmetic operations and update variable values.
// They enhance code readability and reduce redundancy by combining operations into a single expression.

// ===================Comparison Operators=================
// def: Comparison operators are symbols used to compare two values and return a Boolean result indicating the relationship between them.(==, !=, >, <, >=, <=)
// syntax: Comparison operators are used between two values or variables to evaluate their relationship.
// usage: Comparison operators are commonly used in conditional statements, loops, and data validation.

let numberOfOceans = 5
let numberOfContinents = 7

if numberOfOceans > numberOfContinents {
    print("There are more oceans than continents.")
} else if numberOfOceans < numberOfContinents {
    print("There are more continents than oceans.")
} else if numberOfOceans == numberOfContinents {
    print("The number of oceans and continents are equal.")
} else if numberOfOceans != numberOfContinents {
    print("The number of oceans and continents are not equal.")
} else {
    print("Comparison could not be made.")
}

let isEarthLargerThanMars = true
let isEarthLargerThanJupiter = false

if isEarthLargerThanMars && isEarthLargerThanJupiter {
    print("Earth is larger than both Mars and Jupiter.")
} else if isEarthLargerThanMars || isEarthLargerThanJupiter {
    print("Earth is larger than either Mars or Jupiter.")
} else {
    print("Earth is not larger than Mars or Jupiter.")
}

let pacific = "Pacific Ocean"
let atlantic = "Atlantic Ocean"

if pacific == atlantic {
    print("Both are the same ocean.")
} else if pacific > atlantic {
    print("Pacific Ocean comes after Atlantic Ocean alphabetically.")
} else if pacific < atlantic {
    print("Pacific Ocean comes before Atlantic Ocean alphabetically.")
} else {
    print("Comparison could not be made.")
}

// Summary: Comparison operators are essential for evaluating relationships between values in Swift.
// They enable conditional logic and decision-making in code.
// Comparison operators can be used with different data types, such as Int, Double, String, and Bool.
// Strings are compared based on their alphabetical order.

// ====================Conditional Statements==================
// def: Conditional statements are used to execute different blocks of code based on certain conditions.(if, else if, else, switch)
// syntax: Conditional statements are structured using keywords like if, else if, else, and switch, followed by conditions and code blocks.
// usage: Conditional statements are commonly used for decision-making in programs, allowing different actions based on varying conditions.

let temperature = 30
if temperature > 30 {
    print("It's a hot day.")
} else if temperature < 15 {
    print("It's a cold day.")
} else {
    print("It's a moderate day.")
}

// Logical Operators
// def: Logical operators are symbols used to combine or negate Boolean values.(&&, ||, !)
// syntax: Logical operators are used between Boolean values or expressions to evaluate complex conditions.
// usage: Logical operators are commonly used in conditional statements and loops to create more complex decision-making logic.

let isRaining = true
let isSunny = false

if isRaining && isSunny {
    print("It's a rainy and sunny day, look out for rainbow")
} else if isRaining || isSunny {
    print("It's either raining or sunny.")
} else if !isRaining && !isSunny {
    print("It's neither raining nor sunny.")
}

// Summary: Conditional statements enable decision-making in Swift programs based on varying conditions.
// Logical Operators allow for the combination and negation of Boolean values to create complex decision making logic.
// They enhance code readability and maintainability by providing clear control flow structures.

// Ternary Operator
// def: The ternary operator is a shorthand conditional operator that evaluates a condition and returns one of two values based on the result.
// syntax: The ternary operator is structured as condition ? valueIfTrue : valueIfFalse.
// usage: The ternary operator is commonly used for simple conditional assignments and expressions.

let heightOfMountEverst = 8848
print("Mount Everest is \(heightOfMountEverst > 8000 ? "taller" : "shorter") than 8000 meters.")

// Summary: The ternary operator provides a concise way to perform simple conditional assignments and expressions in Swift.
// It enhances code readability by reducing the need for verbose if-else statements for simple conditions.

// ==============Switch Statements=================
// def: Switch statements are control flow structures that allow for multiple possible execution paths based on the value of a variable or expression.
// syntax: Switch statements are structured using the switch keyword followed by the variable or expression to be evaluated and multiple case blocks.
// usage: Switch statements are commonly used for handling multiple discrete values and executing different code blocks based on those values.

let dayOfWeek = "Monday"
switch dayOfWeek {
case "Monday", "Tuesday", "Wednesday":
    print("It's a weekday.")
case "Thursday", "Friday":
    print("It's almost the weekend.")
case "Saturday", "Sunday":
    print("It's the weekend!")
default:
    print("Holiday for Earthlings!")
}

// Summary: Switch statements provide a structured way to handle multiple discrete values in Swift.
// Switch statements must be exhaustive, meaning all possible values must be covered either through cases or a default case.
// Keyword 'fallthrough' is used to jump to nexrt case without checking its condition.

// Range Operators
// def: Range operators are symbols used to create ranges of values in Swift.(..<, ...)
// syntax: Range operators are used to define a range of values between two endpoints.
// usage: Range operators are commonly used in loops, array slicing, and conditional statements.

let bmiValue = 26.5

switch bmiValue {
case ..<18.5:
    print("Underweight")
case 18.5..<24.9:
    print("Normal weight")
case 25..<29.9:
    print("Overweight")
default:
    print("Obesity")
}

// Summary: Range operators provide a convenient way to define ranges of values in Swift.
// Advantages include concise syntax and ease of use in loops and conditional statements.
// Disadvantages include potential confusion with inclusive and exclusive ranges if not used carefully.
