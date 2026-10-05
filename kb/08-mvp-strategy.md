# 10. MVP STRATEGY — Build less, prove more

FAQ nói rõ: không cần hệ thống hoàn chỉnh; MVP phải thể hiện "chức năng cốt lõi, giá trị kinh doanh và tính khả thi" [FACT S2]. Ba cụm từ đó là ba thứ phải chứng minh.

## 10.1 Khung phân loại

| Nhóm | Định nghĩa | Ví dụ |
|---|---|---|
| **Must prove** | Thiếu thì ý tưởng chưa được chứng minh | Một luồng end-to-end cho một người dùng; bước AI chạy thật trên input mới; phê duyệt của người; audit; bộ ca thử có số; một con số KPI đo từ MVP |
| **Should have** | Làm tăng niềm tin | Ca biên (không chắc, injection, thiếu dữ liệu); dashboard KPI và chi phí; công tắc tắt AI; persona thứ hai ở mức xem |
| **Nice to have** | Làm đẹp | Đa ngôn ngữ, thông báo, biểu đồ nâng cao, giao diện tối |
| **Never build** | Tốn giờ, không chứng minh gì | Đăng nhập tự viết (dùng bộ chọn vai hoặc dịch vụ có sẵn); trang quản trị CRUD; trang cài đặt; đa khách hàng; microservices; tự tinh chỉnh model; ứng dụng di động; tích hợp thật với hệ thống ngoài (dùng adapter giả lập, **ghi rõ là giả lập**); thanh toán |

## 10.2 Thang cắt phạm vi

Cắt từ trên xuống, không bao giờ cắt hai dòng cuối:

1. Nice to have.
2. Persona thứ hai.
3. Dashboard (thay bằng một trang số liệu tĩnh sinh từ log).
4. Loại đầu vào thứ hai (chỉ giữ một loại tài liệu hoặc một kênh).
5. Tự động thực thi hành động (thay bằng "đã ghi nhận, giả lập gửi").
6. ~~Phê duyệt của người và audit~~ — **không cắt.**
7. ~~Bộ ca thử AI~~ — **không cắt.** Có thể giảm còn 15 ca.

## 10.3 Chiến lược theo số giờ làm việc thực còn lại

Vòng Build dài 7 ngày [FACT S1], nhưng đội là sinh viên hoặc fresher, số giờ thực có thể ít. Dùng các mức dưới khi kiểm đếm giờ còn lại.

### Còn 4 giờ — survival
- Một màn hình: nhập input → AI xử lý → kết quả có căn cứ → nút duyệt → dòng audit.
- Một lời gọi model có schema đầu ra; không truy xuất tài liệu, không hàng đợi.
- 10 ca thử chạy bằng script, ghi con số vào README.
- Deploy; quay video 2 phút.
- Nói thật trong README: đây là lát cắt tối thiểu, phần còn lại là kế hoạch.

### Còn 8 giờ
- Thêm: danh sách ca (hàng đợi), trang chi tiết có Decision Card đầy đủ, một ca biên (không chắc → chuyển người), dữ liệu seed 10–15 ca.
- 20 ca thử; một con số KPI (thời gian xử lý trước/sau, đo bằng đồng hồ).
- README "chấm trong 5 phút".

### Còn 24 giờ
- Luồng đầy đủ của Concept đã chọn; che dữ liệu cá nhân; ca injection; công tắc tắt AI; dashboard KPI + chi phí mỗi ca; adapter giả lập cho hệ thống đích.
- 30–40 ca thử, có ca do người không viết prompt soạn; bảng độ chính xác theo mức tin cậy.
- Decision log 6–10 mục; rà soát bảo mật; video 3 phút; kịch bản demo đóng băng.

### Final polish (24–48 giờ cuối, không thêm tính năng)
- Đóng băng tính năng. Chỉ sửa lỗi trên đường demo.
- Trạng thái rỗng, đang tải, lỗi trên mọi màn hình của đường demo.
- Chữ trên giao diện: tiếng Anh đúng, nhất quán thuật ngữ với case.
- Script reset dữ liệu demo về trạng thái ban đầu trong một lệnh.
- Chạy đường demo 5 lần liên tiếp không lỗi trên bản đã deploy, bằng mạng khác, máy khác.
- Kiểm tra link, quyền truy cập, tài khoản demo từ cửa sổ ẩn danh.


