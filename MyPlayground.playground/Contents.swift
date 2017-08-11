//: Playground - noun: a place where people can play

import UIKit

/*This playground is used to experiment with Swift standard types */

//Variables and Inference:
/*
 Type Inference: The compiler infers the values for the variables and constants below using initial value
 Option-click on the variable or constant identifier to view the inferred type
 */

// variables "var" can change values anytime after declaration
var str = "Hello, playground"
str = "Hello, Swift"

//"let" denotes a constant value, which cannot be changed
let constStr = str
//constStr = "Hello World"    //causes an error since constStr is a constant

//The following specify the variable type (no type inference)
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

//Arrays and dictionaries are strongly typed
var arrayOfInts1: Array<Int>    //integer array
var arrayOfInts2: [Int]         //integer array
var dictionaryOfCapitalsByCountry1: Dictionary<String, String>  //dictionary
var dictionaryOfCapitalsByCountry2: [String:String]             //dictionary
var winiingLotteryNumbers: Set<Int>     //set

//Literals and subscripting
let number = 42
let fmStation = 91.1
let countingUp = ["one", "two"]
let secondElement = countingUp[1]   //subscripting (accessing array at index 1). Instance of String.
let nameByParkingSpace = [13:"Alice", 27:"Bob"]

//Initializers
//Instances describe calsses, structures and enumerations in Swift.
let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()

let defaultNumber = Int()   //defaults to 0
let defaultBool = Bool()    //defaults to false
let defaultFloat = Float()  //defaults to 0.0 (also just 0)

let meaningOfLife = String(number)          //initializing to value of "number" constant
let availableRooms = Set([205, 411, 412])   //initialing a set
let floatFromLiteral = Float(3.14)          //initializing float to ~pi
let easyPi = 3.14                           //float literals infer a type of Double
let floatFromDouble = Float(easyPi)         //creates Float from Double
let floatingPi: Float = 3.14                //creates Float from Double

//Properties
countingUp.count    //Array property for number of elements in array
emptyString.isEmpty //String property for whether or not a string is empty

//Instance methods
var countingUp2 = ["one", "two"]
countingUp2.append("three")         //appends the String "three" to end of Array