import UIKit

// MARK: Protocols
// =========protocols============
// def: A protocol is a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
// syntax: protocol ProtocolName { // requirements }
// usage: Protocols are used to define interfaces, enable polymorphism, and promote code reuse.

// protocol definition
protocol BankAccount {
    var accountNumber: String { get set}
}

struct SavingsAccount: BankAccount {
    var accountNumber: String
}

let mySavings = SavingsAccount(accountNumber: "SA123456")
print("Account Number: \(mySavings.accountNumber)")

// protocol inheritance
protocol CurrentAccount: BankAccount {
    var overdraftLimit: Double { get set }
}

protocol SalaryAccount: BankAccount {
    var employerName: String { get set }
    var employeeAccountNumber: String { get set }
}

// all the inherited protocols
protocol AccountOperations: CurrentAccount, SalaryAccount, BankAccount {
    var companyAccountNumber: String { get set }
}

// extensions
// def: extensions allow you to add new functionality to existing types, including protocols.
// syntax: extension TypeName { // new functionality }
// usage: Extensions are used to add methods, computed properties, and conform to protocols without modifying the original type.

extension Int {
    func squared() -> Int {
        return self * self
    }
    
    var isOdd: Bool {
        return self % 2 != 0
    }
}

let number = 5
print("Squared: \(number.squared())")
print("Is Odd: \(number.isOdd)")

// protocol conformance via extension
struct CompanyFinanceAccount: AccountOperations {
    var companyAccountNumber: String
    var employeeAccountNumber: String
    var employerName: String
    var overdraftLimit: Double
    var accountNumber: String
}

// using extension the same protocol can have different behavior based on certain conditions
extension BankAccount {
    func accountDetails() {
        if accountNumber.hasPrefix("APP") {
            print("This is a Company Account with Account Number: \(accountNumber)")
        } else if accountNumber.hasPrefix("EMP") {
            print("This is an Employee Account with Account Number: \(accountNumber)")
        } else {
            print("This is a General Bank Account with Account Number: \(accountNumber)")
        }
    }
}

let companyAccount = CompanyFinanceAccount(companyAccountNumber: "APP987654", employeeAccountNumber: "EMP123456", employerName: "TechCorp", overdraftLimit: 5000.0, accountNumber: "APP987654")
companyAccount.accountDetails()
print("Employer: \(companyAccount.employerName), Employee Account Number: \(companyAccount.employeeAccountNumber)")

// protocol-oriented programming
protocol Branch {
    var branchName: String { get set }
    func branchDetails() -> String
}

// default implementation via extension
extension Branch {
    func branchDetails() -> String {
        return "\(branchName)"
    }
}

struct BankBranch: Branch {
    var branchName: String
}

let mainBranch = BankBranch(branchName: "Fort Mumbai")
print("main branch: \(mainBranch.branchDetails())")

