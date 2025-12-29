import UIKit

// MARK: Optionals
// =========optionals============
// def: An optional is a type that can hold either a value or nil, indicating the absence of a value.
// syntax: var variableName: Type? // for optional variable
// usage: Optionals are used to handle situations where a value may be missing or undefined, preventing runtime errors and enabling safer code.

var distance: Int? // optional variable
distance = 100
print("Distance: \(String(describing: distance))")

// unwrapping optionals
var height: Int? = nil

if let unwrappedHeight = height {
    print("Height: \(unwrappedHeight)")
} else {
    print("Height value is nil, give a proper value")
}

// unwrapping using guard
func checkAge(age: Int?) {
    guard let validAge = age else {
        print("Age is nil, please provide a valid age")
        return
    }
    print("Age is \(validAge)")
}
checkAge(age: nil)
checkAge(age: 25)

// difference between guard let vs if let - guard let is used for early exit, while if let is used for conditional execution within a specific scope.
// which means after guard let, the unwrapped variable is accessible throughout the rest of the function, whereas with if let, it's only accessible within the if block.
// guard let is often preferred for input validation at the beginning of functions, rest of the code is a happy path.

// force unwrapping
let weight = "70"
let convertedWeight = Int(weight)!

print("Converted Weight: \(convertedWeight)")
// Force unwrapping should be used with caution, as it can lead to runtime crashes if the optional is nil.
// it should be used only when you are certain that the optional contains a non-nil value.

// implicitly unwrapped optionals
var speed: Int! = nil
if speed != nil {
    print("Speed: \(speed!)")
} else {
    print("Speed is nil")
}
// implicitly unwrapped optionals are used when a variable is expected to have a value after its initial assignment, but it may start as nil.

// nil coalescing operator
// provide a default value if the optional is nil.
func getHeight(userHeight: Int?) -> Int? {
    if let userHeight = userHeight {
        return userHeight
    }
    return nil
}

let userHeight = getHeight(userHeight: nil) ?? 170
print("User Height: \(userHeight)")

// optional chaining
// used to safely access properties, methods, and subscripts on an optional that might currently be nil.

let cities = ["Singapore", "Hong Kong", "Bangkok"]
let uppercaseCities = cities.first?.uppercased() // optional chaining ignores the call if first is nil
print("Uppercase first city: \(String(describing: uppercaseCities))")

// optional try
// optional try allows you to handle errors by returning an optional value, where a failure results in nil instead of throwing an error.
enum DataError: Error {
    case dataNotFound
}

func fetchData(shouldFail: Bool) throws -> String {
    if shouldFail {
        throw DataError.dataNotFound
    }
    return "Data fetched successfully"
}

let result = try? fetchData(shouldFail: true)
print("Fetch result: \(String(describing: result))")

// failable initializers
// used to create instances of a class, struct, or enum that might fail during initialization.

struct City {
    let name: String
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}

let validCity = City(name: "Tokyo")
print("Valid city: \(String(describing: validCity))")

let invalidCity = City(name: "")
print("Invalid city: \(String(describing: invalidCity))")

// typecasting with optionals
// it is used to safely downcast an instance of a superclass to a subclass, returning an optional value.

class Vehicle {
    func description() -> String {
        return "This is a vehicle"
    }
}

class Car: Vehicle {
    override func description() -> String {
        return "This is a car"
    }
}

let myVehicle: Vehicle = Car()
if let myCar = myVehicle as? Car {
    print(myCar.description())
} else {
    print("myVehicle is not a Car")
}

// The as? operator attempts to downcast myVehicle to Car, returning nil if the downcast fails, thus preventing runtime errors.
