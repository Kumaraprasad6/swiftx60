import UIKit

// MARK: Structs
// ========structs============
// def: A struct (short for structure) is a custom data type that encapsulates related properties and behaviors.
// syntax: struct StructName { // properties and methods }
// usage: Structs are used to model complex data types, group related data together, and define behaviors associated with that data.

struct Team {
    // stored properties
    var name: String
    var members: [String]
}

let teamA = Team(name: "MI", members: ["Rohit", "Ishan", "Suryakumar"])
print("Team Name: \(teamA.name), Members: \(teamA.members)")

// computed properties
struct City {
    var name: String
    var isCapital: Bool
    
    var capitalStatus: String {
        return isCapital ? "\(name) is the capital city." : "\(name) is not a capital city."
    }
}

let cityA = City(name: "Mumbai", isCapital: true)
let cityB = City(name: "Pune", isCapital: false)

print(cityA.capitalStatus)
print(cityB.capitalStatus)

// property observers
struct Distance {
    var trip: String
    var kilometers: Double {
        didSet {
            if kilometers > 500 {
                print("Reached the destination of \(trip)!")
            } else {
                print("Distance travelled \(kilometers) kms.")
            }
        }
    }
}

var trip = Distance(trip: "Goa", kilometers: 0.0)
trip.kilometers = 100.0
trip.kilometers = 250.5
trip.kilometers = 400.75
trip.kilometers = 501.0

// functions
struct Country {
    var name: String
    var population: Int
    
    func calulatePopulationDensity(area: Double) -> Double {
        return Double(population) / area
    }
}

let countryA = Country(name: "India", population: 1400000000)
let density = countryA.calulatePopulationDensity(area: 3287263.0).rounded() // area in square kilometers
print("Population Density of \(countryA.name): \(density) people per square kilometer.")

// mutating methods
// usage: Mutating methods are used when you need to modify the properties of a struct from within its own methods.
struct Bank {
    var name: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
        print("Deposited \(amount). New balance is \(balance).")
    }
}

var myBank = Bank(name: "Banco Rio Bank", balance: 1000.0)
myBank.deposit(500.0)
myBank.deposit(250.0)

print("Final balance in \(myBank.name): \(myBank.balance)")

// properties and functions of strings
let strangerString = "Stranger Things"
print("\(strangerString.count)")
print("\(strangerString.uppercased())")
print("\(strangerString.hasPrefix("Stranger"))")
print("\(strangerString.components(separatedBy: " "))")

// properties and functions of arrays
var breakingArray = ["Walter White", "Jesse Pinkman", "Saul Goodman", "Hank Schrader", "Gus Fring"]
print("Number of characters: \(breakingArray.count)")
print("Sorted characters: \(breakingArray.sorted())")
print("First character: \(breakingArray.first ?? "N/A")")
print("Index of 'Saul Goodman': \(breakingArray.firstIndex(of: "Saul Goodman") ?? 0)")
print("Reversed characters: \(breakingArray.reversed())")
print("Add character: \(breakingArray.append("Mike Ehrmantraut")), new characters: \(breakingArray)")
print("Remove last character: \(breakingArray.dropLast())")
print("Remove character at index 2: \(breakingArray.remove(at: 2))")

// initializers
struct Character {
    var name: String
    var role: String
    
    init() {
        name = "Anonymous"
        role = "Unknown"
        print("Character created")
    }
}

var mainCharacter = Character()
mainCharacter.name = "Walter White"
mainCharacter.role = "Professor"

print("Character Name: \(mainCharacter.name), Role: \(mainCharacter.role)")

// instance initializers
// usage: Initializers with parameters are used to create instances of a struct with specific initial values for its properties.
struct Movie {
    var title: String
    var director: String
    
    init(title: String, director: String) {
        self.title = title
        self.director = director
        print("Movie '\(title)' directed by \(director).")
    }
}

let movieA = Movie(title: "Inception", director: "Christopher Nolan")
print(movieA)

// Lazy properties
// usage: Lazy properties are used when the initial value of a property is computationally expensive to create or when it depends on other properties that may not be initialized yet.
struct Music {
    var director: String
  
    init(director: String = "Anonymous") {
        self.director = director
        print("Music score composed...")
    }
}

struct Film {
    var title: String
    lazy var musicScore = Music()
    
    init(title: String) {
        self.title = title
        print("Film '\(title)' created.")
    }
}

var filmA = Film(title: "Interstellar")
print("Film title: \(filmA)")
filmA.musicScore.director = "Hans Zimmer"
print("Accessing music score composed by: \(filmA.musicScore)")

// static properties and methods
// usage: Static properties and methods are used to define behaviors or data that are shared across all instances of a struct, rather than being tied to a specific instance.
@MainActor // Ensures thread safety for static properties in a concurrent environment, swift is throwing an error without it.
struct Planet {
    static var numberOfPlanets = 0
    
    var name: String
    var typeofPlanet: String
    
    init(name: String, typeofPlanet: String) {
        self.name = name
        self.typeofPlanet = typeofPlanet
        Planet.numberOfPlanets += 1
    }
    
    static func planetInfo() -> String {
        return "There are currently \(numberOfPlanets) planets in the solar system."
    }
}
        
let earth = Planet(name: "Earth", typeofPlanet: "Terrestrial")
let jupiter = Planet(name: "Jupiter", typeofPlanet: "Gas Giant")
let saturn = Planet(name: "Saturn", typeofPlanet: "Gas Giant")

print("Total number of planets created: \(Planet.numberOfPlanets)")
print(Planet.planetInfo())

// summary: structs are a powerful feature in Swift that allows you to create custom data types with properties and behaviors. They provide a way to encapsulate related data and functionality, making your code more organized and maintainable. Structs are value types, meaning that when you create an instance of a struct and assign it to a variable or constant, you are working with a copy of the original instance. This behavior is different from classes, which are reference types. Understanding structs and their features is essential for effective Swift programming.
// structs are mostly used for modeling simple data types and grouping related data together.
// by default prefer structs over classes in Swift unless reference semantics are required, reason being structs are value types and provide better performance and safety.
// structs memory allocation happens on the stack, making them faster for small data types.
// structs do not support inheritance, which can lead to simpler and more predictable code.
// structs can conform to protocols, allowing for polymorphism and code reuse. And other features like computed properties, property observers, initializers, lazy properties, and static properties/methods enhance their functionality.
// understanding when to use structs versus classes is crucial for designing efficient and maintainable Swift applications.
// structs are thread-safe by default due to their value type nature, reducing the risk of data races in concurrent environments.
// structs can be nested within other structs, allowing for hierarchical data modeling.
// when to use structs by key considerations: use structs for small, lightweight data types that represent a single value or concept; use structs when you want value semantics (copy behavior); use structs when you want to take advantage of Swift's optimizations for value types; avoid using structs for complex data models that require inheritance or reference semantics.



// =======Access Controls========
// def: Access control is a mechanism that restricts access to certain parts of your code, such as properties, methods, and types.
// syntax: public, internal, fileprivate, private, open
// usage: Access control is used to encapsulate implementation details, protect sensitive data, and enforce modularity in the code.

struct Ship {
    private var shipID: Int
    var name: String
    var captain: String
    
    init(shipID: Int, name: String, captain: String) {
        self.shipID = shipID
        self.name = name
        self.captain = captain
    }
    
    func getShipDetails() -> String {
        return "Ship ID: \(shipID), Name: \(name), Captain: \(captain)"
    }
}

var ship1 = Ship(shipID: 14001, name: "Black Pearl", captain: "Jack Sparrow")

//ship1.shipID = 14002 // Error: 'shipID' is inaccessible due to 'private' protection level

print("Ship details: \(ship1.getShipDetails())") // only internal members can access the shipID

// summary: Access controls are essential for maintaining the integrity and security of your code by controlling how different parts of your program can interact with each other. With proper use of access control, we can create robust and maintainable codebases.
// By default , Swift uses 'internal' access level, which allows access within the same module.
// private access level restricts access to the enclosing declaration and its extensions within the same file.
// fileprivate access level allows access to the entire file where it is defined.
// public access level allows access from any module that imports the module where it is defined.
// open access level is similar to public but also allows subclassing and overriding outside the defining module.
