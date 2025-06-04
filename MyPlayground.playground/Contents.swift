//1 Khởi tạo một mảng string và in ra từng phần tử
let a: [String] = ["tue", "tina", "cop"]
for name in a {
    print("\(name)")
}
//2 Tìm phần tử lớn nhất/ nhỏ nhất trong mảng
let b: [Int] = [1, 2, 3, 4, 5]
if let maxb = b.max() {
    print("Phần tử lớn nhất là: \(maxb)")
}
if let minb = b.min() {
    print("Phần tử nhỏ nhất là: \(minb)")
}
//3 Đảo ngược mảng
let c: [Int] = [1, 2, 3, 4, 5]
let reversedC = c.reversed()
print(Array(reversedC))
//4 Tính tổng các phần tử trong mảng
//let d: [Float] = [1.2, 2.3, 3.4, 3.5, 9.9]
//let sum = d.reduce(0, )
//print("Tổng là: \(sum)")
let d: [Int] = [1, 2, 3, 4, 5]
let sum = d.reduce(0, +)
print("\(sum)")



//5 loại bỏ phần tử trùng lặp khỏi mảng
let e: [String] = ["tue", "tue", "tina", "tina", "cop"]
var seenE: Set<String> = []
let uniqueE = e.filter { seenE.insert($0).inserted }
print(uniqueE)
//6 Kiểm tra một phần tử có tồn taị trong mảng không
let f: [Float] = [3.4, 4.5, 6.8, 8.9, 2.3]
if f.contains(1.2) {
    print("Có tồn tại")
} else {
    print("Không tồn tại")
}
//7 Sắp xếp mảng theo thứ tự tăng/giảm
let g: [Int] = [1, 2, 3, 4, 5, 6, 7]
let ascending = g.sorted()
print(ascending)
let descending = g.sorted(by: >)
print(descending)
//8 Tìm tất cả các chỉ số của một phần tử cụ thể
let h: [String] = ["tue", "tina", "cop", "tina", "quyen", "tina"]
let target = "tina"
var indices: [Int] = []
for (index, value) in h.enumerated() {
    if value == target{
        indices.append(index)
    }
}
print(indices)
//9 Tìm phần tử lặp lại nhiều nhất
let iss: [Float] = [1.2, 3.4, 5.6, 7.8, 9.0, 5.6]
var counts: [Float: Int] = [:]
for i in iss {
    counts[i, default: 0] += 1
}
if let (mostFrequentI, maxCount) = counts.max(by: { $0.value < $1.value }) {
    print("Phần tử lặp lại nhiều nhất là: \(mostFrequentI) với \(maxCount) lần")
}
//10 Xoay mảng sang trái hoặc sang phải k bước
let j: [String] = ["tue", "tina", "cop", "quyen"]
func rotateLeft<T>( j: [T], by k: Int) -> [T] {
    let count = j.count
    let offset = k % count
    return Array(j[offset...] + j[..<offset])
}
let rotatedLeft = rotateLeft(j: j, by: 3)
print(rotatedLeft)

func rotateRight<T>( j: [T], by k: Int) -> [T] {
    let count = j.count
    let offset = k % count
    return Array(j[(count - offset)...] + j[..<(count - offset)])
}
let rotatedRight = rotateRight(j: j, by: 3)
print(rotatedRight)
//11 Tạo hai tập hợp số thực và tìm phần giao
let setA: Set<Float> = [1.2, 3.4, 4.5, 5.6, 7.8]
let setB: Set<Float> = [1.2, 5.4, 6.8, 7.8, 5.6]
let intersection = setA.intersection(setB)
print("phần giao của hai tập hợp là: \(intersection)")
//12 Tìm phần tử chỉ có trong tập hợp C mà không có trong tập hợp D
let setC: Set<String> = ["tue", "tina", "cop", "anh", "bao"]
let setD: Set<String> = ["tue", "quyen", "cop", "anh"]
let diference = setC.subtracting(setD)
print("Các phần tử chỉ có trong tập hợp C là: \(diference)")
//13 Kiểm tra xem 1 tập hợp có là tập hợp con của tập khác không
let setE: Set<Float> = [1.2, 2.1, 3.1, 4.1, 5.1]
let setQ: Set<Float> = [1.2, 2.1, 3.1, 4.8, 5.6, 6.7]
if setE.isSubset(of: setQ) {
    print("setE là tập con của setQ")
} else {
    print("setE không là tập con của setQ")
}
//14 Kiểm tra tính rỗng của một tập hợp
let t: Set<String> = ["Tue"]
if t.isEmpty {
    print("Tập hợp đang rỗng")
} else {
    print("Tập hợp không rỗng")
}
//15 Kiểm tra 2 tập hợp có phần tưt chung không
let setN: Set<Int> = [1, 2, 5, 9, 8, 7, 6]
let setM: Set<Int> = [11, 3, 4, 12, 10]
if !setN.isDisjoint(with: setM) {
    print("Hai tập hợp có phần tử chung")
} else {
    print("Hai tập hợp không có phần tử chung")
}
//16 Đếm số phần tử duy nhất trong một mảng dùng Set.
let p: [String] = ["tue", "tina", "cop", "tue", "tina"]
let uniqueP = Set(p)
print("Số phần tử duy nhất trong mảng là: \(uniqueP)")
//17 Kiểm tra một chuỗi có chứa tất cả ký tự duy nhất không.
func isUnique(_ x: String) -> Bool {
    let characters = Array(x)
    let uniqueCharacters = Set(characters)
    return characters.count == uniqueCharacters.count
}
let input = "aacdefg"
if isUnique(input) {
    print("Chuỗi '\(input)' chứa toàn ký tự duy nhất.")
} else {
    print("Chuỗi '\(input)' có ký tự lặp lại.")
}
//18 Tạo một tập hợp từ một chuỗi và in ra các ký tự duy nhất.
let v: [String] = ["tue", "tina", "tue"]
let uniqueCharacters = Set(v)
print("Các ký tự duy nhất là: \(uniqueCharacters)")
//19 Xóa phần tử nhỏ nhất/lớn nhất khỏi Set.
var hi: Set<Float> = [1.2, 2.3, 3.4, 4.5, 5.6]
if let minElement = hi.min() {
    hi.remove(minElement)
}
print("Sau khi xoá phần tử nhỏ nhất:", hi)
if let maxElement = hi.max() {
    hi.remove(maxElement)
}
print("Sau khi xoá phần tử lớn nhất:", hi)
//20 So sánh 2 Set<String> để kiểm tra tính tương đương.
let set1: Set<Int> = [1, 2, 3, 4, 5]
let set2: Set<Int> = [2, 3, 4, 5, 6]
if set1 == set2 {
    print("Hai set tương đương nhau")
} else {
    print("Hai set không thương đương nhau")
}
//21 Tạo một dictionary lưu tên và tuổi, sau đó in tất cả các cặp key-value.
let people: [String: Int] = ["tue": 18, "tina": 1, "cop": 3]
for (name, age) in people {
    print("Tên: \(name), tuổi: \(age)")
}
//22 Tìm tuổi lớn nhất trong dictionary.
if let (name, age) = people.max(by: {$0.value < $1.value} ) {
    print("Người có tuổi lớn nhất là: \(name) với \(age) tuổi")
}
//23 Đếm số lần xuất hiện của từng chữ cái trong chuỗi.
let text = "vothingoctue"
var letterCounts: [Character: Int] = [:]
for char in text {
    letterCounts[char, default: 0] += 1
}
for (char, count) in letterCounts {
    print("Ký tự \(char) xuất hiện \(count) lần")
}
//24 Tạo một dictionary để nhóm tên theo chữ cái đầu tiên.
let names = ["tue", "anh", "bao", "quyen", "truong"]
var groupedNames: [Character: [String]] = [:]
for name in names {
    if let firtsChar = name.first {
        groupedNames[firtsChar, default: []].append(name)
    }
}
for (key, value) in groupedNames {
    print("\(key): \(value)")
}
//25 Lấy tất cả key hoặc tất cả value từ dictionary.
let family = ["tue": 18, "tina": 1, "cop": 3]
let keys = family.keys
print("Keys:" ,Array(keys))
let values = family.values
print("Values:" , Array(values))
//26 Đảo key và value trong dictionary
let number1 = ["tue": 18, "tina": 1, "cop": 3]
let reversed = Dictionary(uniqueKeysWithValues: number1.map { ($1, $0) })
print(reversed)
//27 Cập nhật giá trị cho một key cụ thể.
var number2 = ["tue": 18, "tina": 1, "cop": 3]
number2["tina"] = 2
print(number2)
//28 Xóa key khỏi dictionary nếu thỏa điều kiện.
var number4 = ["tue": 18, "tina": 1, "cop": 3]
number4 = number4.filter { $0.value >= 1 }
print(number4)
//29 Tìm tất cả key có value lớn hơn n.
let number5 = ["tue": 18, "tina": 1, "cop": 3, "quyen": 28]
let n = 3
let keysGreaterThanN = number5.filter { $0.value > n }.map { $0.key }
print("Các key có value lớn hơn \(n):", keysGreaterThanN)
//30 Tìm key có value lớn nhất.
let number3 = ["tue": 18, "tina": 1, "cop": 3]
if let maxEntry = number3.max(by: { $0.value < $1.value }) {
    print("Người có tuổi lớn nhất là \(maxEntry.key), với tuổi \(maxEntry.value)")
}
//31 Chuyển một mảng sang set để lọc trùng rồi chuyển lại về mảng.
let a2: [String] = ["tue", "tina", "cop", "tina", "cop"]
let uniqueArray = Array(Set(a2))
print(uniqueArray)
//32 Đếm số lần xuất hiện của từ trong đoạn văn (word frequency).
import Foundation

let paragraph = """
hello, my name is ngoc tue
"""

let cleaned = paragraph
    .lowercased()
    .components(separatedBy: CharacterSet.alphanumerics.inverted)
    .filter { !$0.isEmpty }

var freq: [String: Int] = [:]

for word in cleaned {
    freq[word, default: 0] += 1
}

for (word, count) in freq.sorted(by: { $0.value > $1.value }) {
    print("\(word): \(count)")
}
//33 Tìm từ xuất hiện nhiều nhất trong mảng chuỗi.
let words = ["apple", "banana", "apple", "orange", "banana", "apple"]

var frequency: [String: Int] = [:]
for word in words {
    frequency[word, default: 0] += 1
}

if let (mostFrequentWord, count) = frequency.max(by: { $0.value < $1.value }) {
    print("Từ xuất hiện nhiều nhất là '\(mostFrequentWord)' với \(count) lần.")
} else {
    print("Không có từ nào.")
}
//34 Tạo dictionary String: [Int] để lưu thông tin nhiều giá trị cho một khóa.
import Foundation

var scoresByName: [String: [Int]] = [:]

func addScore(_ score: Int, for student: String, to dict: inout [String: [Int]]) {
    dict[student, default: []].append(score)
}

addScore(90, for: "tue", to: &scoresByName)
addScore(85, for: "tina", to: &scoresByName)
addScore(70, for: "cop", to: &scoresByName)

for (student, scores) in scoresByName {
    let average = scores.reduce(0, +) / scores.count
    print(" \(student): \(scores) -> Trung bình: \(average)")
}
//35 Tách các phần tử chẵn/lẻ trong mảng thành 2 dictionary.
import Foundation

let numbers = [1, 2, 3, 4, 5, 6, 7]

var evenNumbers: [Int: Int] = [:]  // index: value
var oddNumbers: [Int: Int] = [:]

for (index, number) in numbers.enumerated() {
    if number % 2 == 0 {
        evenNumbers[index] = number
    } else {
        oddNumbers[index] = number
    }
}

print("Số chẵn:")
for (index, number) in evenNumbers {
    print("Index \(index): \(number)")
}

print("\n Số lẻ:")
for (index, number) in oddNumbers {
    print("Index \(index): \(number)")
}
//36 Dùng Set để xác định các phần tử không trùng lặp trong nhiều mảng.
import Foundation

let array1 = [1, 2, 3, 4]
let array2 = [3, 4, 5, 6]
let array3 = [6, 7, 8]

let seta = Set(array1)
let setb = Set(array2)
let setc = Set(array3)


let allElements = array1 + array2 + array3


var frequency1: [Int: Int] = [:]
for num in allElements {
    frequency1[num, default: 0] += 1
}

let uniqueElements = frequency.filter { $0.value == 1 }.map { $0.key }

print("Các phần tử không trùng lặp trong các mảng là: \(uniqueElements)")
//37 So sánh 2 dictionary có giống nhau không
let dict1 = ["a": 1, "b": 2, "c": 3]
let dict2 = ["b": 2, "a": 1, "c": 3]

if dict1 == dict2 {
    print("Hai dictionary giống nhau.")
} else {
    print("Hai dictionary khác nhau.")
}
//38 Kiểm tra mảng có phải là permutation của nhau không.
func arePermutations<T: Comparable>(_ arr1: [T], _ arr2: [T]) -> Bool {
    return arr1.sorted() == arr2.sorted()
}

let a8 = [1, 2, 3, 4]
let b8 = [4, 3, 2, 1]

print(arePermutations(a8, b8))
//39 Duyệt một dictionary theo thứ tự tăng dần của key.

let scores = ["Charlie": 80, "Alice": 95, "Bob": 90]

for key in scores.keys.sorted() {
    if let value = scores[key] {
        print("\(key): \(value)")
    }
}
//40 Duyệt mảng và đếm số phần tử lớn hơn phần tử bên trái.
let numbers2 = [3, 5, 2, 6, 1, 8, 4]
var count = 0

for i in 1..<numbers.count {
    if numbers[i] > numbers[i - 1] {
        count += 1
    }
}

print("Số phần tử lớn hơn phần tử bên trái là: \(count)")
//41 tìm cặp số trong mảng có tổng là target
let numbers5 = [2, 7, 11, 15]
let target1 = 9
var seen = Set<Int>()

for number in numbers5 {
    let complement = target1 - number
    if seen.contains(complement) {
        print("Cặp số là: \(number) và \(complement)")
        break
    }
    seen.insert(number)
}
//42 Tìm tất cả các chuỗi con không trùng lặp trong chuỗi.
let start = "ab"
var result = Set<String>()

for i in 0..<input.count {
    for j in i+1...input.count {
        let start = input.index(input.startIndex, offsetBy: i)
        let end = input.index(input.startIndex, offsetBy: j)
        let substring = String(input[start..<end])
        result.insert(substring)
    }
}

print("Chuỗi con không trùng lặp:")
for s in result {
    print(s)
}
// 43 Gom nhóm từ là anagram
let word: [String] = ["eat", "tea", "ate"]

var anagramGroups = [String: [String]]()

for word in words {
    let sortedWord = String(word.sorted())
    if anagramGroups[sortedWord] != nil {
        anagramGroups[sortedWord]?.append(word)
    } else {
        anagramGroups[sortedWord] = [word]
    }
}

let result1 = Array(anagramGroups.values)
print("Các nhóm anagram:")
for group in result {
    print(group)
}
//44 Dò tìm chuỗi con dài nhất không lặp ký tự.
import Foundation

func longestUniqueSubstring(_ s: String) -> (substring: String, length: Int) {
    var currentSubstring = ""
    var longestSubstring = ""

    for char in s {
        if let index = currentSubstring.firstIndex(of: char) {
            currentSubstring.removeSubrange(...index)
        }
        currentSubstring.append(char)

        if currentSubstring.count > longestSubstring.count {
            longestSubstring = currentSubstring
        }
    }

    return (longestSubstring, longestSubstring.count)
}
let chuoi = "abcabcbb"
let ketqua = longestUniqueSubstring(input)
print("Chuỗi con dài nhất không lặp ký tự là: \"\(ketqua.substring)\"")
print("Độ dài: \(ketqua.length)")
//45 Kiểm tra từ điển có phải là palindrome không.
func isPalindrome(_ word: String) -> Bool {
    let cleaned = word.lowercased().filter { $0.isLetter || $0.isNumber }
    return cleaned == String(cleaned.reversed())
}
let word1 = "radar"
print("\(word1): \(isPalindrome(word1))")

let word2 = "hello"
print("\(word2): \(isPalindrome(word2))")
//46 Sử dụng reduce để thực hiện phép tính tích/tổng/phức tạp hơn.
// tổng
let so = [1, 2, 3, 4, 5]
let tong = so.reduce(0, +)
print("\(tong)")
// tích
let tich = so.reduce(1, *)
print("\(tich)")
// ghép chuỗi thành câu
let chuoix: [String] = ["Đi", "du", "lịch", "Nam", "Cát", "Tiên"]
let sentence = chuoix.reduce("", { $0 + ($0.isEmpty ? "" : " ") + $1 })
print(sentence)
// tính tổng các số chẵn
let evenSum = so.reduce(0) { $1 % 2 == 0 ? $0 + $1 : $0 }
print("Tổng số chẵn: \(evenSum)")
// tạo dictionary từ mảng
let ten = ["Tue", "Tina", "Cop", "ngoctue", "kimanh", "kimbao"]
let nameDict = ten.reduce(into: [:]) { result, name in
    result[name] = name.count
}
print(nameDict)
//47 Dùng filter để lấy các phần tử thỏa điều kiện
// lấy số chẵn từ mảng
let so1 = [1, 2, 3, 4, 5, 6]
let evenNumber = so1.filter { $0 % 2 == 0 }
print(evenNumbers)
// lấy chuỗi có độ dài lớn hơn 4
let ten1 = ["Tue", "Tina", "Cop"]
let longNames = ten1.filter { $0.count > 4 }
print(longNames)
// lấy số âm
let so2 = [-3, 0, 5, -1, 8]
let negativeValues = so2.filter { $0 < 0 }
print(negativeValues)
// lọc ký tự là nguyên âm
let characters = Array("hello, ngoctue")
let vowels = characters.filter { "aeiouAEIOU".contains($0) }
print(vowels)
// lấy phần tử chứa từ khoá
let sentences = ["có sức khoẻ là có tất cả", " ngoctue đang học Swift"]
let swiftSentences = sentences.filter { $0.contains("Swift") }
print(swiftSentences)
//48 Dùng map để biến đổi phần tử trong mảng
// nhân đối các số trong mảng
let so3 = [1, 2, 3, 4]
let double = so3.map { $0 * 2 }
print(double)
// Lấy độ dài các chuỗi
let names1 = ["Tue", "Tina", "Cop"]
let lengths = names1.map { $0.count }
print(lengths)
// viết hoa toàn bộ tên
let uppercased = names.map { $0.uppercased() }
print(uppercased)
// thêm hậu tố cho từng phần tử
let tagged = names.map { "1\($0)" }
print(tagged)
// biến đổi kiểu dữ liệu
let numbers1 = [1, 2, 3]
let strings = numbers1.map { "Số \($0)" }
print(strings)
//49 Tạo dictionary từ hai mảng: ["a", "b", "c"] và [1, 2, 3]
let tukhoa = ["a", "b", "c"]
let giatri = [1, 2, 3]
let dictionary1 = Dictionary(uniqueKeysWithValues: zip(tukhoa, giatri))
print(dictionary1)
//50 Tìm chuỗi con dài nhất trong mảng chuỗi có thứ tự tăng dần theo ký tự.
func longestIncreasingSubstring(in array: [String]) -> String {
    var maxSubstring = ""

    for str in array {
        var current = ""
        var longestInStr = ""

        for char in str {
            if let last = current.last, char > last {
                current.append(char)
            } else {
                current = String(char)
            }

            if current.count > longestInStr.count {
                longestInStr = current
            }
        }

        if longestInStr.count > maxSubstring.count {
            maxSubstring = longestInStr
        }
    }

    return maxSubstring
}
let strings1 = ["abc", "acdfg", "bdxz", "aefgklz", "az",]
let result2 = longestIncreasingSubstring(in: strings1)
print("Chuỗi con tăng dần dài nhất là: \(result2)")
