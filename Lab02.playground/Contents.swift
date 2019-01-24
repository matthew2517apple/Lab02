import UIKit

// Part A
print("Part A")
print("")
// All the variables in part A are constant within the time-frame of the app
// (therefore they should theoretically be declared with "let").
// However, some of them could assume multiple values in future versions of the app,
// so some of them will be decared with "var".

var busFareRegular = 2.50
var busFareRush = 3.25      // "Rush" short for "RushHour".

var numRidesRegular = 4     // times ridden at regular fare.
var numRidesRush = 8        // times ridden at rush hour.

let currencyUnit = "$"

let amountSpentRegular = busFareRegular * Double(numRidesRegular)
print("Amount spent on regular fare rides: \(currencyUnit)\(amountSpentRegular)")

let amountSpentRush = busFareRush * Double(numRidesRush)
print("Amount spent on rush hour rides: \(currencyUnit)\(amountSpentRush)")

let amountSpentTotal = amountSpentRegular + amountSpentRush
print("Total amount spent on bus rides: \(currencyUnit)\(amountSpentTotal)")

// Part B
print("")
print("Part B")
print("")

// An array containing the names of three ITEC classes:
var classList = [
    "Programming Logic and Design",
    "Apple Mobile",
    "Web Client and Server Programming"
]

// Add a class to the array:
classList.append("iOS Multiplayer Games")

print("Number of ITEC classes in array: \(classList.count)")

let maxNumCharsInClassName = 20

// Create a dictionary:
// (the next two lines are a bit non-standard)
var classDictionary = ["temp":99]
classDictionary.removeAll()

// Populate the dictionary:
for className in classList {
    classDictionary[className] = className.count
}

print("")   // newline for readability.
// Print all the class names, with lengths, and warnings where needed:
for classEntry in classDictionary {
    print("Class Name: \(classEntry.key),     Length of Name: \(classEntry.value)")
    if classEntry.value > maxNumCharsInClassName {
        // Use escape character to print quotes:
        print("  Warning: \"\(classEntry.key)\" has more than \(maxNumCharsInClassName) characters")
    }
}

// Part C
print("")
print("Part C")
print("")

let mixedCaseDeptNames = ["itec", "BTEc", "maTH"]

var deptNames = mixedCaseDeptNames.map({$0.uppercased()})

deptNames.append("APPLE MOBILE")

for deptIndex in 0...deptNames.count-1 {
    print(deptNames[deptIndex])
}
