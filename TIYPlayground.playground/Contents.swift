//: Playground - noun: a place where people can play

import UIKit

//declare a constant named city and assign initial value to be "Houston"

let city = "Houston"


// declare a constant named state and assign initial value to be "Texas"

let state = "Texas"

// declare a var named zipcode and assign initial value to be 77042

var zipCode = "77042"


// declare a constant called firstName and assign its initial value "John"

let firstName = "John"

// declare a constant called lastName and assign its initial value "Doe"

let lastName = "Doe"


// declare a constant called fullName which is the concatentation of firstName and lastName. Example "John Doe" when appending firstName and lastName together

let fullName = firstName  + " " + lastName
print(fullName)

// use a string literal to print the values of city and temperature
// Example: The temperature in Houston is 85

var temperature = 85
// Use the city and temperature variables declared above in your string literals

let temperatureReport = "The temperature in "

print(temperatureReport + city + " is " +  String(temperature))

// create an array called cities and populate with the following "Houston", "Austin", "San Antonio", "Dallas"

var cities =  ["Houston", "Austin", "San Antonio","Dallas"]

// Change the "San Antonio" value to be "Sugarland"

cities[2] = "Sugar Land"
print(cities)

// create a String array called names of populate with the following names
// "John", "Mary", "Alex","Jack"
// make sure that the names array can only hold String values

var names = ["John", "Mary", "Alex", "Jack"]


// The following should not work
// let names = ["John","Mary","Alex",34]

// iterate through the names array and print out all the names

print(names)

// iterate through the cities array and print each city name after appending the state name. Example "Houston, TX"


// create a dictionary and initialize it with the following:
// Dictionary[String:String]

var airports: [String:String] =  ["Houston":"IAH","Costa Rica":"San Jose Airport","Las Angelos":"LAX Aiport"]

print(airports)


//  key = Houston   value = IAH
// key = Costa Rica   value = San Jose Airport
// key = Las Angelos   value = LAX Airport

// print the value of the key "Houston"

// iterate through the dictionary and print all the values of the airports

for (key, value) in airports {
print(airports)

}


// create a function called greet which prints "greetings to you" message

// call the function greet

func greet() {
    print("Greeting to you!")

}

greet()


// create a function called add which take two arguments of type int and returns the sum of ints

func add(a:Int, b:Int) -> Int {

let result = a + b
return result
 
}

// call the function add and pass the following arguments (2,5)
let someResult = add(a: 2, b: 5)
print(someResult)

// create a class called Person with the following properties
class Person {
    
    var firstName: String = ""
    var lastName: String = ""
}

// create the object of the class Person and assign the properties firstName and lastName with "John" and "Doe"

var person2 = Person()
person2.firstName = "John"
person2.lastName = "Doe"
print(person2.firstName)
print(person2.lastName)

