import Cocoa

//1.Khởi tạo một mảng số nguyên và in ra từng phần tử.
let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number)
}

//2.Tìm phần tử lớn nhất/nhỏ nhất trong mảng.
let Numbers = [1, 5, 10, 17, 9]
if let maxNumber = Numbers.max() {
    print("phan tu lon nhat la: \(maxNumber)")
}
if let minNumber = Numbers.min() {
    print("phan tu nho nhat la: \(minNumber)")
}

//3.đảo ngược mảng
var numbers = [1, 2, 3, 4, 5]
numbers.reverse()
print(numbers)

//4.tính tổng các phần tử trong mảng
let numbers = [1, 2, 3, 4, 5]
let sum = numbers.reduce(0, +)
print(sum)

//5loại bỏ phần tử trùng lặp khỏi mảng
let numbers = [1, 2, 3, 3, 4, 5]
var seen: Set<Int> = []
let uniqueNumbers = numbers.filter { seen.insert($0).inserted }
print(uniqueNumbers)

//6kiểm tra một phần tử có tồn tại trong mảng không
let numbers = [1, 2, 3, 4, 5]
if numbers.contains(4) {
    print("co ton tai")
} else {
    print("khong ton tai")
}

//7 sắp xếp mảng theo thứ tự
//tăng
var numbers = [5, 2, 9, 1, 7]
let ascending = numbers.sorted()
print(ascending)
//giảm
let numbers = [5, 2, 9, 1, 7]
let descending = numbers.sorted(by: >)
print(descending)
 
// 8 tìm tất cả chỉ số của một phần tử cụ thể
let numbers = [1, 2, 2, 4, 5, 2, 6]
let target = 2

let indexes = numbers.enumerated().compactMap { (index, value) in value == target ? index : nil
}
print(indexes)
 
// 9 tìm phần tử lăp lại nhiều nhất
let numbers = [1, 3, 2, 3, 4, 3, 2, 1, 3]

// 1. Đếm số lần xuất hiện của từng phần tử
var frequency: [Int: Int] = [:]
for number in numbers {
    frequency[number, default: 0] += 1
}

// 2. Tìm phần tử có số lần xuất hiện lớn nhất
if let (mostFrequent, count) = frequency.max(by: { $0.value < $1.value }) {
    print("Phần tử lặp lại nhiều nhất là \(mostFrequent), xuất hiện \(count) lần.")
} else {
    print("Mảng rỗng.")
}

//10 Xoay mảng sang trái/phải k bước
// xoay sang trái k bước
func rotateLeft<T>(_ array: [T], by k: Int) -> [T] {
    let count = array.count
    guard count > 0 else { return array }
    let steps = k % count
    return Array(array[steps...] + array[..<steps])
}

let arr = [1, 2, 3, 4, 5]
let rotatedLeft = rotateLeft(arr, by: 2)
print(rotatedLeft)
// xoay sang phải k bước
func rotateRight<T>(_ array: [T], by k: Int) -> [T] {
    let count = array.count
    guard count > 0 else { return array }
    let steps = k % count
    return Array(array[(count - steps)...] + array[..<(count - steps)])
}

let rotatedRight = rotateRight(arr, by: 2)
print(rotatedRight)
