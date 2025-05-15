import Cocoa

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



var isBlue: Bool = false
isBlue = true

var hp = 100

if hp == 0 {
    print("main is dead")
}

var mana = 0
var manaOfSkill = 10

var canUseSkill = manaOfSkill >= mana && hp > 0


if canUseSkill {
    print("you can use this skill")
    } else {
    print("you cannot use this skill at this time")
}


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
