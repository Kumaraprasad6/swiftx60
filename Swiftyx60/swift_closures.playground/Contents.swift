import UIKit

// MARK: Closures
// =========closures============
// def: A closure is a self-contained block of functionality that can be passed around and used in your code.
// syntax: { (parameters) -> return type in // code }
// usage: Closures are used for callbacks, completion handlers, and functional programming techniques like map, filter, and reduce.

// closure
let simpleClosure = {
    print("This is a simple closure")
}

//simpleClosure() -> xcode crashing on this line, when we type the parentheses ()

// closure with parameters
let walkingClosure = { (steps: Int) in
    return "You have walked \(steps) steps today!"
}

print(walkingClosure(100))

// closure with return type
let destinationClosure = { (city: String) -> String in
    return "Welcome to \(city)!"
}

print(destinationClosure("Chennai"))

// closure as function parameter
let walking = {
    "I am walking"
}

func typeOfActivity(activity: () -> String) {
    print("Activity: \(activity())")
}

typeOfActivity(activity: walking)

// trailing closure
// it is used when the closure is the last parameter of a function, allowing you to write the closure outside the function parentheses.

typeOfActivity {
    "I am walking"
}

// trailing closure with parameters
func validate(name: (String) -> Void) {
    name("Swiftyx60")
}

validate { name in
    print("Validating name: \(name)")
}

// short hand parameters
func sendMessage(message: (String) -> String) {
    print(message("Swiftyx60!"))
}

sendMessage {
    "Sending a message to \($0)" // $0 refers to the first parameter
}

// closures with multiple parameters
func run(distance: (Int, String) -> String) {
    print(distance(5, "kilometers"))
}

run { (distance, unit) in
    "You have run \(distance) \(unit)"
}

// returning closures from functions
func walk() -> (Int) -> String {
    return { steps in
        "You have walked \(steps) steps"
    }
}

let walkingActivity = walk()
print(walkingActivity(1000))

// capturing values
func makeCounter() -> (String) -> Int {
    var count = 0
    return { name in
        count += 1
        print("Current count: \(count), for \(name)")
        return count
    }
}

let counter = makeCounter()
counter("Andaman") // Current count: 1
counter("Nicobar") // Current count: 2 //the count variable retains its value between calls, stays alive in the closure's context.

// escaping closures
// def: A escaping closure is a closure that is passed as an argument to a function but is called after the function returns.
// syntax: escaping keyword before the closure type in the function parameter list.
// usage: Escaping closures are commonly used in asynchronous operations, such as network requests or completion handlers.

func fetchData(completion: @escaping (String) -> Void) {
    DispatchQueue.global().async {
        // Simulate network delay
        print("Fetching data..., timeout in 5 seconds")
        sleep(5)
        completion("Data fetched from server")
    }
}

fetchData(completion: { value in
    print("received: \(value)")
})

// non-escaping closures
// def: A non-escaping closure is a closure that is passed as an argument to a function and is called within the function's scope.
// syntax: no special keyword is needed.
// usage: Non-escaping closures are used for synchronous operations where the closure is executed immediately within the function. By default, closures are non-escaping.

func processData(data: String, completion: (String) -> Void) {
    let processedData = data.uppercased()
    print("Processing data...")
    sleep(5)
    print("Data processed")
    completion(processedData)
}

processData(data: "swiftyx60") { result in
    print("Result: \(result)")
}

// summary: Closures are a powerful feature in Swift that allows you to encapsulate functionality and pass it around in your code. They can capture values from their surrounding context, making them versatile for various programming paradigms, including functional programming and asynchronous operations.
// todos: autoclosures, closure expressions, capturing lists, and memory management with closures (strong vs weak references).
