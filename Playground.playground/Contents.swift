import Cocoa
// Array
var studentName1 = "tue"
var studentName2 = "truong"
var studentName3 = "quyen"
var studentName4 = "thuy"

var studentNames: [String] = ["tue", "truong", "quyen", "thuy"]
print(studentNames.count)
studentNames.append("halo")
print(studentNames.count)

studentNames.remove(at: 1)

print(studentNames.count)

var carNames = [String]()
print(carNames.count)

// boolean and condition
var skill1Name = "skill1"
var skill2name = "skill1"

if skill1Name == skill2name {
    print("they are the same name")
} else {
    print("they are not same")
}
    
let b = 10
var a = 5
a = b
9 % 4
var c = 1
c += 2
let name = "tue"
if name == "anh"{
    print("hello, tue")
} else {
    print("I am sorry, but i don't recognize you")
}

// constant and logical
let isBuilDebug = true

if !isBuilDebug != true {
    print("Build is not debug build")
}

let haveTicket = true
let isAdult = true
let isVIP = true

if haveTicket && isAdult || isVIP {
    print("Can get in the helicoper")
} else {
    print("You can not in the helicoper")
}

//dictionary
var numberToStrings = [Int: String]()

numberToStrings [1] = "one"

var students: [String: String] = ["SV1": "tue", "SV2": "anh", "SV3": "bao"]
print(" Size of students: \(students.count)")
students["SV4"] = "ABC"
students["SV4"] = "NEW ABC"

students["SV5"] = "HOA"
students["SV5"] = nil

for (masv, name) in students {
    print("\(masv): \(name)")
}
for key in students.keys {
    print("\(key)")
}
for value in students.values {
    print("\(value)")
}
//loops
var student1Score = 10
var student2Score = 5
var student3Score = 6
var student4Score = 9
var student5Score = 2

var sumOfScore = student1Score + student2Score + student3Score + student4Score + student5Score
var averageScore = sumOfScore / 5


var studentScores = [10, 5, 6, 9, 2, 7, 8, 9, 6, 5, 7, 8, 10, 5, 6, 9, 2, 7, 8, 9, 6, 5, 7, 8]
var sumScore = studentScores[0] + studentScores[1] + studentScores[2] + studentScores[3] + studentScores[4] + studentScores[5]
var averScore = sumScore / studentScores.count

var index = 0

var sumScore2 = 0
repeat {
    sumScore2 += studentScores[index]
    index += 1
} while(index < studentScores.count)
var aveScore = sumScore2 / studentScores.count

for i in 0..<studentScores.count {
    print("i= \(i)")
}

for x in 1..<10 {
    print("x= \(x)")
}
        
studentScores.forEach { score in
    print("i= \(score)")
}


let names = ["tue", "anh", "bao"]
for name in names {
    print("hello, \(name)!")

}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}


for i in 1...5 {
    print("lần thứ \(i)")
}

let fruits = ["táo", "chuối", "cam"]
for fruit in fruits {
    print("tôi thích ăn \(fruit)")
}

let scores = ["nam": 8, "lan": 10]
for (name, score) in scores {
    print("\(name) đạt \(score) điểm")
}


var i = 1
while i < 5 {
    print("i = \(i)")
    i += 1
}

var j = 1
repeat {
    print("j = \(j)")
    j += 1
} while j <= 5

//numbers
var age = 15 // Int

var number:Int = 32746283746513645

var number2 = 7.25

var number3: Float = 5.2


var s = 5 * 5
var t = 3 + 4
var h = 15 - 3
var c1 = 14 / 2

var c2 = 13 / 5
var c3 = 13 % 5

var randomNumber = 5

if randomNumber % 2 == 0 {
    var result = "day la so chan"
} else {
    var result = "day la so le"
}

var c4 = -13.4 / 2

var bt = (10 + 2) / 5 * (4 - 7)

//string
var greeting: String = "Hello, playground"

var generation = 5
var carBrand = "Honda"
var carModel = "Civic"
var carName = carBrand + " " + carModel
var carName2 = "\(carBrand) \(carModel) \(generation)"
carName.append(contentsOf: " 5")


var myName = "ngoc tue"
myName = myName.capitalized

var capsAll = "HAHAHA"
var lowercaseAll = capsAll.lowercased()

var message = "choi game ngu qua"
message.replacingOccurrences(of: "ngu", with: "ga")

if message.contains("ngu") {
    message = "******"
}



