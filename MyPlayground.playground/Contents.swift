//: Playground - noun: a place where people can play

import UIKit

/*This playground is used to experiment with Swift standard types */

//-------------------------------------------------
//Variables and Inference:
//-------------------------------------------------
/*
 Type Inference: The compiler infers the values for the variables and constants below using initial value
 Option-click on the variable or constant identifier to view the inferred type
 */

// variables "var" can change values anytime after declaration
var str = "Hello, playground"   //initial String value
str = "Hello, Swift"            //changes String variable value

//"let" denotes a constant value, which cannot be changed
let constStr = str
//constStr = "Hello World"    //causes an error since constStr is a constant

//The following specify the variable type (no type inference, no values assigned)
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool
let newDouble: Double
let largeNum: Float80

//-------------------------------------------------
//Arrays and dictionaries are strongly typed
//-------------------------------------------------
//Swift standard library has three collections: Arrays, Dictionaries, and Sets.
var arrayOfInts1: Array<Int>    //integer array (strongly typed; can only contain Ints)
var arrayOfInts2: [Int]         //integer array (shorthand notation)
var dictionaryOfCapitalsByCountry1: Dictionary<String, String>  //dictionary
var dictionaryOfCapitalsByCountry2: [String:String]             //dictionary (shorthand notation)
var winiingLotteryNumbers: Set<Int>     //set

//-------------------------------------------------
//Literals and subscripting
//-------------------------------------------------
let number = 42
let fmStation = 91.1
let countingUp = ["one", "two"]     //literal array assignment
let secondElement = countingUp[1]   //subscripting (accessing array at index 1). Instance of String.
let nameByParkingSpace = [13:"Alice", 27:"Bob"] //literal dictionary assignment

//-------------------------------------------------
//Initializers
//-------------------------------------------------
//Instances describe calsses, structures and enumerations in Swift.
let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()
let emptyArrayOfStrings = Array<String>()
let emptyDictionary = [Int: Int]()
let emptyDictionaryOfStrings = Dictionary<String, String>()

let defaultNumber = Int()   //defaults to 0
let defaultBool = Bool()    //defaults to false
let defaultFloat = Float()  //defaults to 0.0 (also just 0)

let meaningOfLife = String(number)          //initializing to value of "number" constant
let availableRooms = Set([205, 411, 412])   //initialing a set
let floatFromLiteral = Float(3.14)          //initializing float to ~pi
let easyPi = 3.14                           //float literals infer a type of Double
let floatFromDouble = Float(easyPi)         //creates Float from Double
let floatingPi: Float = 3.14                //creates Float from Double

//-------------------------------------------------
//Properties
//-------------------------------------------------
countingUp.count    //Array property for number of elements in array
emptyString.isEmpty //String property for whether or not a string is empty

//-------------------------------------------------
//Instance methods
//-------------------------------------------------
var countingUp2 = ["one", "two"]
countingUp2.append("three")         //appends the String "three" to end of Array

//-------------------------------------------------
//Optionals (variable may not store a value at all)
//-------------------------------------------------
var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?

//the following may contain "nil" as a value or some Float value
var reading1: Float?
var reading2: Float?
var reading3: Float?

//values can be assigned to optionals
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7

/*
 Optionals require unwrapping to use their value since the value may be "nil", unlike non-optiona variables. There are two ways to unwrap an optional: optional binding and forced unwrapping 
 */

/* 
 Forced unwrapping: Append a "!" to end of optional. Less "safe" than optional binding since the optional may contain the value "nil"
 */
//let avgReading = (readng1 + reading2 + reading3)/3  //error (requires unwrapping
let avgReading = (reading1! + reading2! + reading3!)/3

/*
 Optional binding: Makes use of an if-let statement. Preferred method of unwrapping optionals.
 */

if  let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
        let avgReading = (r1 + r2 + r3)/3
    } else {
        let errorString = "Instrument reported a reading that was nil"
    }

//-------------------------------------------------
//Subscripting dictionaries
//-------------------------------------------------
let space13Assignee: String? = nameByParkingSpace[13]   //value is "Alice"
let space42Assignee: String? = nameByParkingSpace[42]   //value is "nil"

//It's common to use if-let when subscripting a dictionary (optional binding)
if let space13AssigneeTrue = nameByParkingSpace[13] {
    print("Key 13 is assigned in the dictionary!")
}

//-------------------------------------------------
//Loops and String Interpolation
//-------------------------------------------------

//for loop
let range = 0..<countingUp.count
for i in range {
    let string = countingUp[i]
    //Use 'string'
}

//enumerating items in array
for string in countingUp {
    //Use 'string'
}

//getting index of each item in array using enumerated, which returns a tuple
for (i, string) in countingUp.enumerated() {
    //(0, "one"), (1, "two")
}

//enumerating contents of a dictionary
for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"  //String interpolation
}
//String Interpolation: expressions encoled in \() are evaluated and inserted into the string at runtime

//-------------------------------------------------
//Enumerations and the Switch Statement
//-------------------------------------------------
//Enumeration: Type with a discrete set of values
enum PieType  {
    case apple
    case cherry
    case pecan
}
let favoritePie = PieType.apple

//Switch statement
let name: String
switch favoritePie {
    case .apple:
        name = "Apple"
    case .cherry:
        name = "Cherry"
    case . pecan:
        name = "Pecan"
}

//Switch statement that matches on ranges
let macOSVersion: Int = 3
switch macOSVersion {
    case 0...8:
        print("A big cat")
    case 9:
        print("Mavericks")
    case 10:
        print("Yosemite")
    case 11:
        print("El Capitan")
    case 12:
        print("Sierra")
    default:
        print("Greetings, people of the future! What's new in 10.\(macOSVersion)?")
}

//-------------------------------------------------
//Enumerations and raw values
//-------------------------------------------------
enum PieType2: Int {
    case apple = 0
    case cherry
    case pecan
}

let pieRawValue = PieType2.pecan.rawValue   //value of 2
if let pieType = PieType2(rawValue: pieRawValue) {
    //Got a valid 'pieType'!
}

