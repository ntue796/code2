
// the basics
//   báo ngầm đinh
let hi8 = 10
//khai báo tường minh
let hi9: [Int] = [11]
// Khai báo hằng số và biến
let hi = 10 // khai báo một hằng số mới có tên là:... và gán cho nó một giá trị là:...
var hello = 0 // khai báo một biến mới có tên là:... và gán cho nó giá trị ban đầu là:...
// có thể khai báo nhiều hằng số hoặc nhiều biến trên một dòng
var hi1 = 10, hello1 = 1000
let hi2 = 20, hello2 = 2000
// chú thích loại (Type Annotations): làm rõ về loại giá trị mà hằng số hoặc biến có thể lưu trữ
var hello3: String
// dấu hai chấm trong phần khai báo có nghĩa: " kiểu "
// đọc là: khai báo biến mới có tên là:... thuộc kiểu...
// có thể định nghĩa nhiều biến liên quan cùng loại trên một dòng.
var green, blue, red: String
// đặt tên hằng số và biến
//có thể thay đổi giá trị của một biến hiện có thành một giá trị khác có kiểu tương thích.
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// in hằng số và biến
print(friendlyWelcome)
print("giá trị hiện tại của friendlyWelcome là: \(friendlyWelcome)")
// muốn viết nhiều câu lệnh trên một dòng ta dùng " ; "
let tue = 18; print(tue)
// có thể truy cập giá trị tối thiểu và tối đa của mỗi kiểu số nguyên bằng các thuộc tính minvà của nó max:
let minValue = UInt16.min
let maxValue = UInt16.max
// chuyển đổi số nguyên
let twoThousand: UInt16 = 2000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
// chuyển đổi số nguyên và số thực
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
let pi2 = three + Int(pointOneFourOneFiveNine)
// Type Alias: tên thay thế cho kiểu hiện có
typealias hehe = UInt16
var min = hehe.min
// Boolean: Các giá trị Boolean được gọi là logic, vì chúng chỉ có thể đúng hoặc sai.
let hello4 = false
let hello5 = true
if hello4 {
    print("ngoc tue")
} else {
    print("vo thi ngoc tue")
}

// Tuples: nhóm nhiều giá trị thành một giá trị hợp chất duy nhất. Các giá trị trong tuple có thể thuộc bất kỳ loại nào và không nhất thiết phải cùng loại với nhau.
let hello6 = (123, "tue", 1.23)
let khaibaokhac: (Int, String, Double) = (123, "tue", 1.23)
// phân tích nội dung của một tuple thành một hằng số hoặc biến riêng biệt
let (statusNumberInt, statusName, statusNumberDouble) = hello6
print("The status int is \(statusNumberInt)")
print("The status name is \(statusName)")
print(" the status double is \(statusNumberDouble)")
// Nếu bạn chỉ cần một số giá trị của tuple, hãy bỏ qua các phần của tuple có dấu gạch dưới ( _)
let (justTheStatusNumberInt, _, _) = hello6
print("The status code is \(justTheStatusNumberInt)")

// bạn có thể truy cập các giá trị phần tử riêng lẻ trong một bộ bằng cách sử dụng số chỉ mục bắt đầu từ số 0
print("The status int is \(hello6.0)")
print("The status name is \(hello6.1)")
print("The status double is \(hello6.2)")
// Bạn có thể đặt tên cho từng phần tử riêng lẻ trong một bộ khi bộ đó được định nghĩa:
//let hello7: (Int, String) = (tue: 18, tina: "one")
let hello7: (age: Int, name: String) = (age: 18, name: "one")

//  bạn có thể sử dụng tên phần tử để truy cập giá trị của các phần tử đó:
print("The status name is \(hello7.age)")
print("The status name is \(hello7.name)")

let ngoctue: [Int]
// Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

if convertedNumber == nil {
    print("convertedNumber contains some integer value.")
}


//var surveyAnswer: String?

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}


let myNumber = Int(possibleNumber)
if let myNumber {
    print("My number is \(myNumber)")
}



let yourName: String = "someone"
let myName: String? = "hi "

if myName != nil {
    print(myName!)
} else {
    print("my name is nil")
}

if let constantMyName = myName {
    var combine = constantMyName + yourName
} else {
    print("my name is nil")
}


// Basic Operators
// toán tử gán
let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

// toán tử số học
1 + 4
1 - 2
1 / 2
1 * 5
8 % 3
"hi, " + "tue"

// toán tử trừ một ngôi
let five = 5
let minusFive = -five
let plusFive = -minusFive
// toán tử cộng một ngôi
let minusSix = -6
let alsoMinusSix = +minusSix
// toán tử gán hợp chất
var c = 4
c -= 2
// toán tử so sánh
1 == 1
2 != 2
3 > 1
3 < 2
3 >= 4
4 <= 5
// toán tử so sánh thường được dùng trong các câu lệnh điều kiện
let d = "tue"
if d == "ngoctue" {
    print("hello, tue")
} else {
    print("hi tue \(d)")
}
// có thể so sánh hai tuple nếu chúng có cùng kiểu và cùng số lượng giá trị
(2, "dog") == (2, "dog")
// toán tử điều kiện 3 ngôi
let g = 2
let h = true
let k: Int
if h {
    k = g + 50
} else {
    k = g + 20
}
// toán tử Nil-Coalescing
var number: Int? = nil
var number2 = number ?? 1
// Closede Range Operators
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// toán tử logic
//Logic KHÔNG ( !a)
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
//Logic VÀ ( a && b)
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
//Logic HOẶC ( a || b)
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


// Strings and Character
// String literals: is a sequence of characters surrounded by double quotation marks (").
let someString = "Some string literal value"
//tạo một giá trị String rỗng làm điểm khởi đầu cho việc xây dựng một chuỗi dài hơn, hãy gán một chuỗi ký tự rỗng cho một biến hoặc khởi tạo một Stringthể hiện mới bằng cú pháp khởi tạo
var emptyString = ""
var anotherEmptyString = String()
// kiểm tra xem một giá trị String có trống hay không bằng cách kiểm tra thuộc tính Boolean của nó:isEmpty
if emptyString.isEmpty {
    print("Nothing to see here")
}
//String Mutability(khả năng thay đổi chuổi):Bạn chỉ ra liệu một String cụ thể có thể được sửa đổi (hoặc đột biến) hay không bằng cách gán nó cho một biến (trong trường hợp đó, nó có thể được sửa đổi) hoặc cho một hằng số (trong trường hợp đó, nó không thể được sửa đổi):
var variableString = "Horse"
variableString += " and carriage"

// Working with Characters
//có thể truy cập các giá trị character riêng lẻ cho một Chuỗi bằng cách lặp qua chuỗi với vòng lặp for-in:
for character in "Dog!" {
    print(character)
}
//bạn có thể tạo một hằng số hoặc biến Character độc lập từ một chuỗi ký tự đơn bằng cách cung cấp chú thích kiểu Character:
let exclamationMark: Character = "?"
//Giá trị chuỗi có thể được xây dựng bằng cách truyền một mảng giá trị Ký tự làm đối số cho trình khởi tạo của nó:
let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)
print(catString)
"""
Tham số (parameter) là biến được định nghĩa trong hàm để nhận giá trị.

Đối số (argument) là giá trị bạn truyền vào tham số khi gọi hàm.

"""
//Concatenating Strings and Characters:nối chuỗi và ký tự
//Các giá trị chuỗi có thể được cộng lại (hoặc nối lại) bằng toán tử cộng (+) để tạo ra một giá trị chuỗi mới:
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
//Bạn cũng có thể thêm giá trị String vào biến String hiện có bằng toán tử gán cộng (+=):
var instruction = "look over"
instruction += string2
//Bạn có thể thêm giá trị Character vào biến String bằng phương thức append() của kiểu String
let exclamationMark1: Character = "!"
welcome.append(exclamationMark)
//String Interpolation: là cách chèn giá trị của biến, biểu thức hoặc hàm trực tiếp vào chuỗi bằng cú pháp đặc biệt trong Swift.
//biểu thức
let a1 = 5
let b1 = 7
print("Tổng là \(a1 + b1)")
//Accessing and Modifying a String: truy cập và sửa đổi một chuỗi
//Bạn có thể sử dụng cú pháp chỉ số dưới để truy cập Character tại một chỉ mục String cụ thể
let greeting = "Ngoc Tue"
greeting[greeting.startIndex]

greeting[greeting.index(before: greeting.endIndex)]

greeting[greeting.index(after: greeting.startIndex)]

let index = greeting.index(greeting.startIndex, offsetBy: 6)
greeting[index]
//Sử dụng thuộc tính indices này để truy cập tất cả các chỉ mục của từng ký tự trong một chuỗi.
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}
//Inserting and Removing: chèn và xoá
//Để chèn một ký tự đơn vào chuỗi tại chỉ mục đã chỉ định, hãy sử dụng phương thức insert(_:at:) và để chèn nội dung của chuỗi khác tại chỉ mục đã chỉ định, hãy sử dụng phương thức insert(contentsOf:at:).
var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex)

welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))
//Để xóa một ký tự riêng lẻ khỏi chuỗi ở chỉ mục được chỉ định, hãy sử dụng remove(at:) và để xóa một chuỗi con ở phạm vi được chỉ định, hãy sử dụng removeSubrange(_:)
welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
//Substrings: chuỗi con: Substring là một phần của chuỗi (String) — bạn có thể trích xuất từ một chuỗi gốc để thao tác hoặc hiển thị. Trong Swift, Substring chia sẻ bộ nhớ với chuỗi gốc (nên nhanh hơn nhưng không nên giữ lâu).
let greeting1 = "Hello, world!"
let index1 = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
let beginning = greeting1[..<index]
let newString = String(beginning)


// Colection Types
// Array lưu trữ các value cùng loại trong danh sách có thứ tự. Cùng một giá trị có thể xuất hiện trong mảng nhiều lần với các vị trí khác nhau.
// Creating an Empty Array
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")

var someInts1 = [Int]()
print("someInts is of type [Int] with \(someInts1.count) items.")
//Creating an Array with a Default Value
var threeDoubles = Array(repeating: 0.0, count: 3)
//Tạo một mảng bằng cách thêm hai mảng lại với nhau
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
//Creating an Array with an Array Literal (Tạo một mảng với một mảng theo nghĩa đen): Một mảng theo nghĩa đen được viết dưới dạng một danh sách các giá trị, được phân tách bằng dấu phẩy, được bao quanh bởi một cặp dấu ngoặc vuông.
var shoppingList: [String] = ["Eggs", "Milk"]
//Truy cập và sửa đổi một mảng
//tìm ra số lượng phần tử trong một mảng hãy kiểm tra thuộc tính count chỉ đọc của mảng:
print("The shopping list contains \(shoppingList.count) items.")
//Sử dụng thuộc tính Boolean isEmpty như một phím tắt để kiểm tra xem thuộc tính count có bằng 0 hay không
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}
//Có thể thêm một mục mới vào cuối mảng bằng cách gọi append(_:)
shoppingList.append("Flour")
//thêm một mảng gồm một hoặc nhiều mục tương thích với toán tử gán cộng ( +=)
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
//Truy xuất giá trị từ mảng bằng cách sử dụng subscript syntax
var firstItem = shoppingList[0]
//có thể sử dụng cú pháp chỉ số dưới để thay đổi giá trị hiện tại ở một chỉ mục nhất định
shoppingList[0] = "Six eggs"
//có thể sử dụng cú pháp chỉ số dưới để thay đổi một phạm vi giá trị cùng một lúc
shoppingList[4...6] = ["Bananas", "Apples"]
//chèn một mục vào mảng tại chỉ mục đã chỉ định, hãy gọi phương thức của mảng:insert(_:at:)
shoppingList.insert("Maple Syrup", at: 0)
//xóa một mục khỏi mảng bằng remove(at:)
let mapleSyrup = shoppingList.remove(at: 0)

firstItem = shoppingList[0]

//xóa phần tử cuối cùng khỏi một mảng
let apples = shoppingList.removeLast()
//Lặp lại trên một mảng
//có thể lặp lại toàn bộ tập hợp các giá trị trong một mảng bằng vòng lặp for- in
for item in shoppingList {
    print(item)
}
//Nếu bạn cần chỉ số nguyên của từng mục cũng như giá trị của nó, hãy sử dụng enumerated()
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
//Sets: Set lưu trữ các giá trị riêng biệt cùng loại trong một bộ sưu tập không có thứ tự xác định.
//Set Type Syntax:  Set<Element>
//Creating and Initializing an Empty Set:
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
//Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

var favoriteGenres1: Set = ["Rock", "Classical", "Hip hop"]
//Accessing and Modifying a Set: truy cập và sửa đổi một tập hợp
//tìm ra số lượng phần tử trong một tập hợp, hãy kiểm tra thuộc tính count chỉ đọc của tập hợp đó
print("I have \(favoriteGenres.count) favorite music genres.")
// sử dụng thuộc tính Boolean như một phím tắt để kiểm tra xem thuộc tính có bằng :isEmpty
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
//có thể thêm một mục mới vào một tập hợp bằng cách gọi insert(_:)
favoriteGenres.insert("Jazz")
// có thể xóa một mục khỏi một tập hợp bằng cách gọi phương thức của tập hợp remove(_:)
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// kiểm tra xem một tập hợp có chứa một phần tử cụ thể hay không, hãy sử dụng contains(_:)
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
//Lặp lại trên một tập hợp
//có thể lặp lại các giá trị trong một tập hợp bằng vòng lặp for- in
for genre in favoriteGenres {
    print("\(genre)")
}
//lặp lại các giá trị của một tập hợp theo thứ tự cụ thể, hãy sử dụng sorted()
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
//Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//.union(): Hợp (tất cả phần tử của 2 tập hợp)
oddDigits.union(evenDigits).sorted()
//.intersection(): Giao (phần tử chung của 2 tập hợp)
oddDigits.intersection(evenDigits).sorted()
//.subtracting(): Hiệu (phần tử có trong A nhưng không có trong B)
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
//.symmertriDifference(): phần tử chỉ xuất hiện ở 1 trong 2 tập hợp
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
//Set Membership and Equality
let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["chicken", "dog", "cat"]
let cityAnimals: Set = ["cow", "cat"]
//.isSubset(of:): kiểm tra xem 1 tập hợp có phải là tập con của tập hợp khác hay không (A nằm trong B và có thể bằng B)
houseAnimals.isSubset(of: farmAnimals)
//.isSuperset(of:): kiểm tra xem 1 tập hợp có phải là tập cha của tập hợp khác hay không (A chứa tất cả phần tử B, có thể bằng B)
farmAnimals.isSuperset(of: houseAnimals)
//.isDisjoint(with:): xác định xem hai tập hợp có giá trị chung hay không
farmAnimals.isDisjoint(with: cityAnimals)
//Dictionaries: lưu trữ các liên kết giữa các khóa cùng loại và các giá trị cùng loại trong một tập hợp không có thứ tự xác định.

//Dictionary Type Shorthand Syntax: Dictionary<Key, Value>
//Creating an Empty Dictionary
var namesOfIntegers: [Int: String] = [:]
//Creating a Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//Accessing and Modifying a Dictionary
//bạn tìm ra số lượng phần tử trong mảng Dictionary bằng cách kiểm tra thuộc tính chỉ đọc của mảng count
print("The airports dictionary contains \(airports.count) items.")
//Sử dụng thuộc tính Boolean như một phím tắt để kiểm tra xem thuộc tính có bằng :isEmpty
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}
//có thể thêm một mục mới vào dictionary với cú pháp chỉ số dưới
airports["LHR"] = "London"
//có thể sử dụng cú pháp chỉ số dưới để thay đổi giá trị được liên kết với một khóa
airports["LHR"] = "London Heathrow"
//Phương pháp này trả về một giá trị tùy chọn của kiểu giá trị của từ điển.
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
//có thể sử dụng cú pháp subscript để lấy giá trị từ dictionary cho một khóa cụ thể.
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}
//có thể sử dụng cú pháp chỉ số để xóa một cặp khóa-giá trị khỏi từ điển bằng cách gán giá trị nil cho khóa đó
airports["APL"] = "Apple International"
airports["APL"] = nil
//xóa cặp khóa-giá trị khỏi từ điển bằng phương pháp này.
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary doesn't contain a value for DUB.")
}
//Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
//có thể truy xuất bộ sưu tập có thể lặp lại các khóa hoặc giá trị của từ điển bằng cách truy cập vào các thuộc tính keys và của nó values:
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
for airportName in airports.values {
    print("Airport name: \(airportName)")
}
//Nếu bạn cần sử dụng khóa hoặc giá trị của từ điển với API sử dụng một Arraythể hiện, hãy khởi tạo một mảng mới bằng thuộc tính keys or values:
let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)

// Control flow
//For-In Loops: You use the for-in loop to iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string.
//sử dụng vòng lặp for- in để lặp qua các mục trong một mảng:
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}
//có thể lặp lại một từ điển để truy cập các cặp key-value của nó.
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
//có thể sử dụng vòng lặp for- in với phạm vi số.
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// Nếu bạn không cần mỗi giá trị trong một chuỗi, bạn có thể bỏ qua các giá trị bằng cách sử dụng dấu gạch dưới thay cho tên biến.
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
//Sử dụng toán tử phạm vi nửa mở ( ..<) để bao gồm giới hạn dưới nhưng không bao gồm giới hạn trên.
let minutes = 60
for tickMark in 0..<minutes {
}
//Sử dụng hàm stride(from:to:by:) để bỏ qua các dấu tích không mong muốn.
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
}
// Các phạm vi đóng cũng khả dụng bằng cách sử dụng stride(from:through:by:) thay thế
let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
}
//While Loops
"""
Một whilevòng lặp thực hiện một tập hợp các câu lệnh cho đến khi điều kiện trở thành false. Các loại vòng lặp này được sử dụng tốt nhất khi số lần lặp không được biết trước khi lần lặp đầu tiên bắt đầu. Swift cung cấp hai loại whilevòng lặp:

while đánh giá tình trạng của nó khi bắt đầu mỗi lần chạy qua vòng lặp.

repeat- while đánh giá tình trạng của nó vào cuối mỗi lần chạy qua vòng lặp.
"""
//While: Vòng while lặp bắt đầu bằng cách đánh giá một điều kiện duy nhất. Nếu điều kiện là true, một tập hợp các câu lệnh được lặp lại cho đến khi điều kiện trở thành false.
"""
Dùng while khi:
Bạn muốn kiểm tra điều kiện trước khi chạy vòng lặp.

Không chắc rằng phần thân vòng lặp cần chạy ít nhất một lần.

📌 Ví dụ:
"""
var i = 1
while i <= 5 {
    print("...")
    i += 1
}
//Repeat-While: thực hiện một lần chạy qua khối vòng lặp trước, trước khi xem xét điều kiện của vòng lặp. Sau đó, nó tiếp tục lặp lại vòng lặp cho đến khi điều kiện là false.
"""
Dùng repeat-while khi:
Bạn muốn chắc chắn phần thân vòng lặp được thực hiện ít nhất 1 lần.

Điều kiện chỉ cần kiểm tra sau khi thực hiện một hành động.
"""
var number11 = 1
repeat {
    print("Number là \(number11)")
    number11 += 1
} while number11 <= 3
// Conditional Statements: câu lệnh có điều kiện
"""
Thường hữu ích khi thực thi các đoạn mã khác nhau dựa trên các điều kiện nhất định. Bạn có thể muốn chạy một đoạn mã bổ sung khi xảy ra lỗi hoặc hiển thị thông báo khi giá trị trở nên quá cao hoặc quá thấp.

bạn sử dụng câu lệnh if để đánh giá các điều kiện đơn giản với chỉ một vài kết quả có thể xảy ra. Câu lệnh switch phù hợp hơn với các điều kiện phức tạp hơn với nhiều hoán vị có thể xảy ra và hữu ích trong các tình huống mà việc khớp mẫu có thể giúp chọn một nhánh mã phù hợp để thực thi.
"""
// if: câu lệnh if có một điều kiện if duy nhất. Nó thực thi một tập hợp các câu lệnh chỉ khi điều kiện đó là true.
let age = 20
if age >= 18 {
    print("Bạn đủ tuổi để lái xe")
}
//Câu lệnh if có thể cung cấp một tập hợp các câu lệnh thay thế, được gọi là mệnh đề else, cho những tình huống khi điều kiện if là sai.
let isRaining = false

if isRaining {
    print("Mang theo dù")
} else {
    print("Không cần dù hôm nay")
}
//Bạn có thể nối nhiều câu lệnh if lại với nhau để xem xét các mệnh đề bổ sung.
let score = 75

if score >= 90 {
    print("Xuất sắc")
} else if score >= 80 {
    print("Giỏi")
} else if score >= 70 {
    print("Khá")
} else {
    print("Trung bình hoặc yếu")
}
//Switch: Một câu lệnh switch cung cấp một phương án thay thế cho câu lệnh if để phản hồi nhiều trạng thái tiềm năng.
//dạng đơn giản nhất
"""
"switch <#some value to consider#> {
case <#value 1#>:
    <#respond to value 1#>
case <#value 2#>,
    <#value 3#>:
    <#respond to value 2 or 3#>
default:
    <#otherwise, do something else#>
}
"""
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the Latin alphabet")
case "z":
    print("The last letter of the Latin alphabet")
default:
    print("Some other character")
}
//Giống như các câu lệnh if, các câu lệnh switch cũng có dạng biểu thức:
let anotherCharacter: Character = "a"
let message = switch anotherCharacter {
case "a":
    "The first letter of the Latin alphabet"
case "z":
    "The last letter of the Latin alphabet"
default:
    "Some other character"
}
print(message)
//No Implicit Fallthrough: Không có sự suy giảm ngầm định
//Để tạo một trường hợp switch duy nhất khớp với cả "a"và "A", hãy kết hợp hai giá trị thành một trường hợp hợp thành, phân tách các giá trị bằng dấu phẩy.
let anotherCharacter1: Character = "a"
switch anotherCharacter1 {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}
//Interval Matching; phù hợp khoảng thời gian
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
//Tuples
"""
Bạn có thể sử dụng tuple để kiểm tra nhiều giá trị trong cùng một switchcâu lệnh. Mỗi phần tử của tuple có thể được kiểm tra với một giá trị hoặc khoảng giá trị khác nhau. Ngoài ra, sử dụng ký tự gạch dưới ( _), còn được gọi là mẫu ký tự đại diện, để khớp với bất kỳ giá trị nào có thể.
"""
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}
//Value Bindings
"""
Một trường hợp chuyển đổi có thể đặt tên cho giá trị hoặc các giá trị mà nó khớp với các hằng số hoặc biến tạm thời, để sử dụng trong phần thân của trường hợp. Hành vi này được gọi là ràng buộc giá trị, vì các giá trị được ràng buộc với các hằng số hoặc biến tạm thời trong phần thân của trường hợp.
"""
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
//Where: Một trường hợp switch có thể sử dụng một điều khoản where để kiểm tra các điều kiện bổ sung.
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
//Control Transfer Statements (các câu lệnh chuyển giao điều khiển) thay đổi thứ tự thực thi mã của bạn bằng cách chuyển quyền điều khiển từ đoạn mã này sang đoạn mã khác.
//Continue: Câu lệnh continue yêu cầu vòng lặp dừng những gì nó đang làm và bắt đầu lại ở đầu vòng lặp tiếp theo.
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)
//Break: Câu lệnh break là một câu lệnh điều khiển dòng lệnh dùng để thoát ngay lập tức khỏi vòng lặp (loop) hoặc câu lệnh switch khi một điều kiện nhất định được thoả mãn.
//Break in a Loop Statement: Dùng để thoát khỏi vòng lặp sớm mà không chờ đến khi điều kiện của vòng lặp trở thành sai.
var n = 1
while n <= 10 {
    if n == 6 {
        break
    }
    print(n)
    n += 1
}
//Break in a Switch Statement: Khi được sử dụng bên trong một câu lệnh switch, break khiến câu lệnh switch kết thúc ngay lập tức quá trình thực thi của nó và chuyển quyền điều khiển cho mã sau dấu ngoặc nhọn đóng của câu lệnh switch (})
let number13 = 2

switch number13 {
case 1:
    print("Một")
case 2:
    print("Hai")
    break
case 3:
    print("Ba")
default:
    print("Không xác định")
}
//Fallthrough: Trong switch, tiếp tục chạy xuống case tiếp theo dù điều kiện không đúng
let number14 = 2

switch number14 {
case 1:
    print("Đây là số 1")
case 2:
    print("Đây là số 2")
    fallthrough
case 3:
    print("Đây là số 3")
default:
    print("Không xác định")
}
//Labeled Statements: các câu lệnh được gắn nhãn
//trong Swift cho phép bạn gắn nhãn (label) cho các vòng lặp hoặc khối điều kiện (loop, if, switch, block) để có thể kiểm soát luồng chương trình chính xác hơn, đặc biệt là khi sử dụng với break hoặc continue trong vòng lặp lồng nhau.
"""
Khi nào dùng labeled Statement
Khi bạn có nhiều vòng lặp lồng nhau và muốn:

Thoát khỏi một vòng lặp cụ thể (break label)

Bỏ qua một vòng lặp cụ thể (continue label)

Giúp tăng khả năng kiểm soát luồng logic khi xử lý nhiều tầng điều kiện phức tạp.

"""

// dùng với break
outerLoop: for i in 1...3 {
    for j in 1...3 {
        if i == 2 && j == 2 {
            break outerLoop  // thoát cả hai vòng
        }
        print("i = \(i), j = \(j)")
    }
}
// dùng với continue
outerLoop: for i in 1...3 {
    for j in 1...3 {
        if j == 2 {
            continue outerLoop  // bỏ qua phần còn lại của vòng trong và chuyển sang vòng ngoài tiếp theo
        }
        print("i = \(i), j = \(j)")
    }
}
//Early Exit:Một câu lệnh guard, giống như một câu lệnh if, thực thi các câu lệnh tùy thuộc vào giá trị Boolean của một biểu thức. Bạn sử dụng một câu lệnh guard để yêu cầu một điều kiện phải đúng để mã sau câu lệnh guard được thực thi. Không giống như một câu lệnh if, một câu lệnh guard luôn có một mệnh đề else — mã bên trong mệnh đề else được thực thi nếu điều kiện không đúng.
"""
"guard let là cách để unwrap an toàn giá trị optionals.

Dùng guard để thoát sớm khi không đủ điều kiện, giúp code gọn hơn, dễ đọc hơn.

Rất hữu ích trong các hàm có logic nhiều bước kiểm tra.
"""
// func(khai báo hàm) tên hàm(tham số: )
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "tue"])
greet(person: ["name": "ngoc tue", "location": "bình định"])
//Deferred Actions: hành động hoãn lại
//Không giống như các cấu trúc điều khiển luồng như if và while, cho phép bạn kiểm soát việc một phần mã của bạn có được thực thi hay không hoặc số lần thực thi, defer kiểm soát thời điểm một phần mã được thực thi. Bạn sử dụng khối defer để viết mã sẽ được thực thi sau, khi chương trình của bạn đạt đến cuối phạm vi hiện tại
var score2 = 1
if score2 < 10 {
    defer {
        print(score2)
    }
    score2 += 5
}
//mã sau đây cung cấp phần thưởng tạm thời cho điểm, bằng cách thêm và trừ 100 bên trong một đoạn mã
var score3 = 3
if score3 < 100 {
    score3 += 100
    defer {
        score3 -= 100
    }
    print(score3)
}
//bạn viết nhiều hơn một khối defer trong cùng một phạm vi, khối đầu tiên bạn chỉ định sẽ là khối cuối cùng được chạy.
var score4 = 3
if score4 < 10 {
    defer {
        print(score4)
    }
    defer {
        print("The score is:")
    }
    score4 += 5
}


