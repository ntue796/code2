# 15/5/25
## Đã học:
### Swift:
- Kiểu dữ liệu cơ bản và tập hợp
- Khai. báo hằng và biến
- 10 bài toán về mảng
+ 

### Ngôn ngữ C
- Thuật toán
- Các bước giải 1 thuật toán
### Git, github, sourcetree
- Cách xoá một file
- Cách commit các file lên github
##  Khó khăn:
- Không nhớ thao tác commit
- Không hiểu được bài 5 và 7 -> 10
- Chưa học được string, mảng string

# 16/5/25
## Thời gian biểu:
- 8h -> 10h: 5 bài code
- 15h -> 18h: 10 bài code
- 18h -> 19h: sửa format file readme và chỉnh sửa code.
- 21h -> 23h30: xem lại 15 bài code

# 17/5/25
## Đã học:
- 11 bài code
- Định nghĩa về từ điển, mảng, tập hợp.

# 18/5/25
## Đã học:
### Những điều cơ bản: 
#### Kiểu dữ liệu: có 3 kiểu
##### KDL nguyên thuỷ
- Int: số nguyên
- Double: giá trị dấu phẩy động
- Bool: Boolean ( true or false)
- String: văn bản
##### KDL tập hợp
- Array
- Set 
- Dictionary
#### Hằng số và biến
- Định nghĩa
- Khai báo 
- Cách đặt tên
- In
#### Số nguyên
- Số nguyên có dấu và số nguyên không dấu
- Giới hạn số nguyên
#### Số dấu phẩy động
- Double: số dấu phẩy động 64 bit
- Float: số dấu phẩy động 32 bit
#### Boolean
#### Tuple: nhóm nhiều giá trị thành một hợp chất duy nhất
#### Optionals
### Các toán tử cơ bản
#### Toán tử là một ký hiệu hoặc cụm từ đặc biệt mà bạn sử dụng để kiểm tra, thay đổi hoặc kết hợp các giá trị. 
#### Thuật ngữ
- Các toán tử một ngôi hoạt động trên một mục tiêu duy nhất. Các toán tử tiền tố xuất hiện ngay trước mục tiêu của chúng(!a), toán tử hậu tố thì ngược lại(a!)
- Các toán tử nhị phân hoạt động trên 2 mục tiêu và là trung tố vì xuất hiện giữa 2 mục tiêu của chúng.
- Các toán tử ba ngôi hoạt động trên 3 mục tiêu, chỉ có một toán tử 3 ngôi, toán tử điều kiện.
#### Toán tử gán
#### Toán tử số học
#### Toán tử còn lại
#### Toán tử trừ/cộng một ngôi
#### Toán tử gán hợp chất
#### Toán tử so sánh
#### Toán tử logic
- Toán tử logic NOT
- Toán tử logic AND
- Toán tử logic OR
## Kế hoạch
- Học xong 2 phần: The Basics và Basic Operators trong 1 ngày

# 19/5/25
## Đã học
### Strings and Characters
### Collection Types
#### Arrays: Mảng lưu trữ các giá trị cùng loại trong danh sách có thứ tự. Cùng một giá trị có thể xuất hiện trong mảng nhiều lần ở các vị trí khác nhau .
##### Cú pháp viết tắt của kiểu mảng: 
- Cú pháp đầy đủ Array<Element> 
- Cú pháp viết tắt [Elemnet]
##### Tạo một mảng rỗng: ()
##### Tạo một mảng với giá trị mặc định
##### Tạo 1 mảng bằng cách thêm 2 mảng lại với nhau
##### Tạo 1 mảng với 1 mảng theo nghĩa đen
##### Truy cập và sửa đổi một mảng
#### Sets: Một tập hợp lưu trữ các giá trị riêng biệt cùng loại trong một bộ sưu tập không có thứ tự xác định. Bạn có thể sử dụng một tập hợp thay vì một mảng khi thứ tự các mục không quan trọng hoặc khi bạn cần đảm bảo rằng một mục chỉ xuất hiện một lần.
##### Cú pháp: Set<Element>
##### Tạo và khởi tạo một tập hợp rỗng: ()
##### Tạo một set với một mảng literal
##### Truy cập và sửa đổi một tập hợp
##### Thực hiện các phép toán tập hợp
##### Các phép toán tập hợp cơ bản
- .intersection(): Giao (phần tử chung của 2 tập hợp)
- .symmertriDifference(): phần tử chỉ xuất hiện ở 1 trong 2 tập hợp
- .union(): Hợp (tất cả phần tử của 2 tập hợp)
- .subtracting(): Hiệu (phần tử có trong A nhưng không có trong B)
##### Thiết lập thành viên và bình đẳng
- .isSubset(of:): kiểm tra xem 1 tập hợp có phải là tập con của tập hợp khác hay không (A nằm trong B và có thể bằng B)
- .isSuperset(of:): kiểm tra xem 1 tập hợp có phải là tập cha của tập hợp khác hay không (A chứa tất cả phần tử B, có thể bằng B)
- .isStrictSubset(of:): kiểm tra xem một tập hợp có phải là tập con đúng của một set hay không (A nằm trong B và bé hơn B)
- .isStrictSuperset(of:): kiểm tra xem một tập hợp có phải là tập cha đúng của một set hay không (A chứa tất cả của B và lớn hơn B)
- .isDisjoint(with:): xác định xem hai tập hợp có giá trị chung hay không
#### Dictionary: Từ điển lưu trữ các liên kết giữa các khóa cùng loại và các giá trị cùng loại trong một tập hợp không có thứ tự xác định. Mỗi giá trị được liên kết với một khóa duy nhất , đóng vai trò là mã định danh cho giá trị đó trong từ điển.
##### Cú pháp: Dictionary<key, value>
##### Tạo một từ điển rỗng: [:]
##### Tạo một từ điển với một từ điển theo nghĩa đen
##### Truy cập và sửa từ điển
## Kế hoạch
- Học 2 phần Strings và Characters, Collection Types trong 1 ngày

# 20/5/25
## Đã học:
### Control Flow
#### Vòng lặp For-in: sử dụng vòng lặp for- in để lặp qua một chuỗi, chẳng hạn như các mục trong một mảng, dãy số hoặc ký tự trong một chuỗi.
#### Vòng lặp While: Một vòng lặp while thực hiện một tập hợp các câu lệnh cho đến khi điều kiện trở thành false. Các loại vòng lặp này được sử dụng tốt nhất khi số lần lặp không được biết trước khi lần lặp đầu tiên bắt đầu. Cung cấp 2 loại vòng lặp while.
- while: Đánh giá tình trạng của nó khi bắt đầu mỗi lần chạy qua vòng lặp.
- repeat-while: Đánh giá tình trạng của nó vào cuối mỗi lần chạy qua vòng lặp.
##### While: Vòng lặp while bắt đầu bằng cách đánh giá một điều kiện duy nhất. Nếu điều kiện là true, một tập hợp các câu lệnh được lặp lại cho đến khi điều kiện trở thành false.
##### Repeat- while: Biến thể khác của vòng lặp while, được gọi là vòng lặp repeat- while, thực hiện một lần chạy qua khối vòng lặp trước, trước khi xem xét điều kiện của vòng lặp. Sau đó, nó tiếp tục lặp lại vòng lặp cho đến khi điều kiện là false.
#### Conditional Statemanets( Vòng lặp có điều kiện)
##### If: Ở dạng đơn giản nhất, câu lệnh if có một điều kiện if duy nhất. Nó thực thi một tập hợp các câu lệnh chỉ khi điều kiện đó là true.
##### Switch: Một câu lệnh switch xem xét một giá trị và so sánh nó với một số mẫu khớp có thể có. Sau đó, nó thực thi một khối mã thích hợp, dựa trên mẫu đầu tiên khớp thành công. Một câu lệnh switch cung cấp một phương án thay thế cho câu lệnh if để phản hồi nhiều trạng thái tiềm năng.
##### Các câu lệnh chuyển giao điều kiện:
- Continue: Bỏ qua phần còn lại của vòng lặp hiện tại, chuyển sang lần lặp tiếp theo
- Break: Thoát khỏi vòng lặp hoặc thoát khỏi switch
- Fallthrough: Trong switch, tiếp tục chạy xuống case tiếp theo dù điều kiện không đúng
## Kế hoạch:
- Học xong Control Flow
- Làm 4 bài code.
