/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var mixedCollection: [Any] = []

mixedCollection.append(3.14)
mixedCollection.append(42)
mixedCollection.append("Hello, World!")
mixedCollection.append(true)

for element in mixedCollection {
    print(element)
}

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for element in mixedCollection {
    if let intValue = element as? Int {
        print("The integer has a value of \(intValue)")
    } else if let doubleValue = element as? Double {
        print("The double has a value of \(doubleValue)")
    } else if let stringValue = element as? String {
        print("The string has a value of \(stringValue)")
    } else if let boolValue = element as? Bool {
        print("The boolean has a value of \(boolValue)")
    } else {
        print("Unknown type")
    }
}


//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection

var mixedsDictionary: [String: Any] = [:]

mixedsDictionary["number"] = 42
mixedsDictionary["pi"] = 3.14
mixedsDictionary["message"] = "Hello, World!"
mixedsDictionary["isTrue"] = true
mixedsDictionary["temperature"] = 25.5

print("Key/Value pairs within the collection:")
for (key, value) in mixedsDictionary {
    print("\(key): \(value)")
}


//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var mixedDictionary: [String: Any] = [
    "number": 42,
    "pi": 3.14,
    "message": "Hello, World!",
    "isTrue": true,
    "temperature": 25.5
]

var total: Double = 0.0

for (_, value) in mixedDictionary {
    if let intValue = value as? Int {
        total += Double(intValue)
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if let stringValue = value as? String {
        total += 1
    } else if let boolValue = value as? Bool {
        total += boolValue ? 2 : -3
    }
}


print("Total: \(total)")


//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0.0

for (_, value) in mixedDictionary {
    if let intValue = value as? Int {
        total2 += Double(intValue)
    } else if let doubleValue = value as? Double {
        total2 += doubleValue
    } else if let stringValue = value as? String {
        if let stringValueAsDouble = Double(stringValue) {
            total2 += stringValueAsDouble
        }
    }
}


print("Total2: \(total2)")


/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
