//: Playground - noun: a place where people can play

import UIKit

// This playground is used to experiment with Swift standard types

//------------------------
// Variables and Inference:
//------------------------
/*
 Type Inference: The compiler infers the values for the variables and constants below using initial value
 Option-click on the variable or constant identifier to view the inferred type
 */

// variables "var" can change values anytime after declaration
var str = "Hello, playground"
str = "Hello, Swift"

// "let" denotes a constant value, which cannot be changed
let constStr = str
//constStr = "Hello World"    //causes an error since constStr is a constant

//The following specify the variable type (no type inference)
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool