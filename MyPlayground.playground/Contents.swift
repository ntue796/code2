//1 Khởi tạo một mảng string và in ra từng phần tử
let a: [String] = ["tue", "tina", "cop"]
for string in a {
    print("\(string)")
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
let d: [Float] = [1.2, 2.3, 3.4, 3.5, 9.9]
let sum = d.reduce(0, +)
print("Tổng là: \(sum)")
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
let setM: Set<Int> = [1, 3, 4, 7, 8, 10]
if !setN.isDisjoint(with: setM) {
    print("Hai tập hợp có phần tử chung")
} else {
    print("Ha tập hợp không có phần tử chung")
}
