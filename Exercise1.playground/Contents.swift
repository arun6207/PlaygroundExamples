import Foundation

//variable creation
//var : mutable means which will change and not constant
//let : Immutable means constant and cannt be changed at any time

//Mutable String
var str1: String = "Hello world" //since its a var you can change it - mutable
str1 = "New world"

//Integer
var value: Int = 10
var value2 = 20

//integer mutable array
var arrayOfIntValues = [1,2,8,10]
arrayOfIntValues.append(36)
arrayOfIntValues.insert(20, at: 0) //add value 20 at 0th position - output is [20,1,2,8,10,36]

//string mutable array
var arrayOfStringValues = ["value1","value2","value3","value4"]
arrayOfStringValues.append("value6")

//mutable dictionary of type [Int: String] - key value pari

var dict: [Int: String] = [1001: "value1",
                           1002: "value2",
                           1003: "value3"]

dict[1004] = "value4" //which is equal to append

print("value for key 1001 \(String(describing: dict[1001]))")



//immutable String
let str = "Sample text" //let is constant and you can not change - immutable
let array = [1,30,40,50] //immutable
let dict1 = [1001: "value1",
             1002: "value2",
             1003: "value3"]

//class example - mutable

class Employee {
    
    var staffId: Int
    var name: String
    var depart: String
    
    init(employeeId: Int, employeeName: String, department: String) {
        self.staffId = employeeId
        self.name = employeeName
        self.depart = department
    }
    
}

let classObject1 = Employee(employeeId: 20, employeeName: "Kiran", department: "CSE")

//copy employee object to new object
var classObject2 = classObject1
classObject2.depart = "EEE"

print(classObject2.depart) //EEE
print(classObject1.depart) //EEE - Since its a reference type this is also EEE, eventhough you changed second object dept


//immutable
struct StructEmployee {
    
    var staffId: Int
    var name: String
    var depart: String
    
    init(employeeId: Int, employeeName: String, department: String) {
        self.staffId = employeeId
        self.name = employeeName
        self.depart = department
    }
    
    func changeDayButtonClicked(value1: String, value2: String) -> String {
        return value1 + value2
    }
}

let strcutValue1 = StructEmployee(employeeId: 20, employeeName: "Kiran", department: "CSE")

let finalValue = strcutValue1.changeDayButtonClicked(value1: "Hello", value2: "World")

//copy employee object to new object
var strcutValue2 = strcutValue1
strcutValue2.depart = "EEE"

print(strcutValue1.depart) //EEE
print(strcutValue2.depart)//CSE - Since its a value type this won't change

print(finalValue)


