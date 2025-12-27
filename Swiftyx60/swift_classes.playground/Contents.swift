import UIKit

//MARK: Classes
//===========classes============
// def: A class is a blueprint for creating objects that encapsulate data and behavior.
// syntax: class ClassName { // properties and methods }
// usage: Classes are used to model real-world entities, manage state, and implement object-oriented programming concepts like inheritance and polymorphism.

// class doesn't have default memberwise initializer like struct.
class Movie {
    let title: String
    let director: String
    
    // initializer // class constructor
    init(title: String, director: String) {
        self.title = title
        self.director = director
    }
    
    func description() -> String {
        return "\(title) directed by \(director)"
    }
}

let movieA = Movie(title: "Inception", director: "Christopher Nolan")
print("Movie: \(movieA.title), Director: \(movieA.director) ")

// inheritance or subclassing is supported by class which means one class can inherit properties and methods from another class.
class ActionMovie: Movie {
    let stuntMan: String
    
    init(title: String, stuntMan: String) {
        self.stuntMan = stuntMan
        super.init(title: title, director: "Unknown")
    }
}

let actionMovieA = ActionMovie(title: "Mad Max: Fury Road", stuntMan: "Tom Hardy")
print("Action Movie: \(actionMovieA.title), Stunt Man: \(actionMovieA.stuntMan) ")

// overriding methods: a subclass can provide its own implementation of a method defined in its superclass.
final class ComedyMovie: Movie {
    override init(title: String, director: String) {
        super.init(title: title, director: director)
    }
    
    override func description() -> String {
        return "\(title) is a hilarious comedy directed by \(director)"
    }
}

let comedyMovie = ComedyMovie(title: "The Hangover", director: "Todd Phillips")
print(comedyMovie.description())

// final classes: A final class cannot be subclassed, reason to prevent further inheritance.
// other usages of final keyword: final methods and final properties to prevent overriding in subclasses.

//class ComedyScene: ComedyMovie { // This will cause a compile-time error because ComedyMovie is final }

// reference type: classes are reference types, meaning that when you assign an instance of a class to a variable or constant, you are creating a reference to the same instance in memory.

class Music {
    var director: String
    
    init(director: String) {
        self.director = director
        print("Music director is \(director)")
    }
}

let musicA = Music(director: "Hans Zimmer")
print("Music A director: \(musicA.director)")

let musicB = musicA
print("Music B director: \(musicB.director)")

musicA.director = "John Williams"
print("Music A director after change: \(musicA.director)")
print("Music B director after change: \(musicB.director)")

// deinitializers: classes can have deinitializers, which are called when an instance of the class is about to be deallocated from memory.
class MovieCleanup {
    let title: String = "Avatar"
    
    init() {
        print("watched \(title) movie.")
    }
    
    func enjoy() {
        print("Enjoying the movie \(title)!")
    }
    
    deinit {
        print("Forgot the movie \(title) after watching it.")
    }
}

for _ in 1...3 {
    var movieCleanup = MovieCleanup()
    movieCleanup.enjoy()
}

// mutability: class instances can have mutable properties, even when the instance is assigned to a constant.

class Director {
    var name: String = ""
    var movies: [String] = []
    
    init(name: String) {
        self.name = name
    }
}

let nameOfDirector = Director(name: "Steven Spielberg")
nameOfDirector.movies = ["Jaws", "E.T.", "Jurassic Park"]
print("Director: \(nameOfDirector.name), Movies: \(nameOfDirector.movies)")

nameOfDirector.name = "Martin Scorsese"
nameOfDirector.movies = ["The Irishman", "Taxi Driver"]
print("Director: \(nameOfDirector.name), Movies: \(nameOfDirector.movies)")

// summary: Classes in Swift are powerful constructs that enable object-oriented programming through features like inheritance, method overriding, and reference semantics. They are ideal for modeling complex entities and managing state in applications.
// the choice between classes and structs should be based on the specific requirements of your application and the behavior you want to achieve.
// 1. Classes are reference types, while structs are value types.
// 2. Classes support inheritance, while structs do not.
// 3. Classes can have deinitializers, while structs cannot.
// 4. Structs have a default memberwise initializer, while classes do not.
// 5. Classes are typically used for more complex data models that require shared mutable state, while structs are often used for simpler data types that benefit from value semantics.
// 6. Mutability: Class instances can have mutable properties even when assigned to a constant, whereas struct instances assigned to a constant cannot have their properties modified.
// the memory management of classes involves reference counting, which can lead to retain cycles if not handled properly using weak or unowned references.
// the memory storage of classes is on the heap, which makes them suitable for larger data structures that need to be shared across different parts of an application.
// the sorting or searching in heap is less efficient compared to stack due to the overhead of reference counting and dynamic memory allocation.
// thread safety: Classes are not inherently thread-safe, so care must be taken when accessing class instances from multiple threads to avoid race conditions.
