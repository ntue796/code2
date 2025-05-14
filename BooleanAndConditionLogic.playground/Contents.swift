import Cocoa

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






let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}


