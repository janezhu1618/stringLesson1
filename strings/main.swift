//
//  main.swift
//  strings
//
//  Created by Jane Zhu on 10/9/18.
//  Copyright © 2018 Jane Zhu. All rights reserved.
//

import Foundation
// concatenation
let firstName = "John"
let lastName = "Appleseed"
// use a variable full name to concatenate first anme and second name
let fullName = firstName + " " + lastName

print(fullName)
print("The person's fullname is \(fullName)")

// string interpolation
let year = 2018
// use string interpolation to print out the year 2018
print("the current year is \(year)")

// string literal
let name = "Eli"

// initialization - set a default value
var date: String = "October 9th, 2018"
print(date)

// test for empty string
let emptyString = ""

// using the ternary operator ?:
emptyString.isEmpty ? print("is empty") : print("not empty")

// alternate using if/else
if emptyString.isEmpty { // .isEmpty is a built in function that tests if the string is empty and results in a Boolean
    print("is empty")
} else {
    print("not empty")
}

// comparing strings
let str1 = "Pursuit"
let str2 = "C4Q"

str1 == str2 ? print("You're in both cohorts") : print("Pursuit to the dream")

// string formatting
let someString = String(format: "%.2f", 10.345) // initializes a string
print("using string formating to print 2 decimal places \(someString)")

// string mutilibity
let homePlanet = "earth"
// homePlanet = "mars"  won't work bc "let" is immutable
print(homePlanet)

var codingExperience = 0 // mutable
codingExperience = 10
print(codingExperience)
// changing something to a string

let stringExperience = String(codingExperience) // casting it as a string
print(codingExperience)

// Value Type - Stored in Memory
let movie = "Toy Story" // reference
var nextMovie = movie // mutable & value type
nextMovie += " 2" // will not change 'movie' but changes 'nextMovie', if nextMovie was a class it would alter movie's value
print(nextMovie)

// iterating through a string
let iOS = "iOS is awesome"
for letter in iOS { // using a for-in loop to print out every character of iOS String
    print(letter, terminator: "|") // does not default to a new line
}


// uppercase & lowercased
var testing = "TeStInG"
print(testing.lowercased())
print(testing.uppercased())

// count characters in a string
// .count is a property on a collection type - counts number of items in collection
print("there are \(iOS.count) characters in the string")

// drop the last character in a string.
print("dropping the last character \(iOS.dropLast())")

// uppercasing
print("making the whole statement uppercase \(iOS.uppercased())")
print(iOS.dropFirst())

// reversing
var greeting = "hello"
var reverse = String(greeting.reversed())
print("reverse greeting is \(reverse)")

// check if a string is a palindrome *spells same forward and backwards

let testPalindromeStr = "racecar"
var isPalindrome = String(testPalindromeStr.reversed())
isPalindrome == testPalindromeStr ? print("is a palindrome") : print("NOT a palindrome")

// comparing unicode scalar vs string literal
let unicodeSpace = "\u{20}" // unicode scalar for " " (space)
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("not equal")

// U+1F40D is snake
let unicodeSnake = "\u{1F40D}\u{1F609}"
for _ in 0...10 {
    print(unicodeSnake, terminator: "")
}
