import UIKit

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
