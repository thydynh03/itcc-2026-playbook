# SCOPE

Phạm vi đã chốt. Sửa file này cần cả ba thành viên đồng ý.

- Chốt ngày:
- Một người dùng chính:
- Một loại đầu vào:
- Một loại quyết định:

## Must prove — thiếu thì ý tưởng chưa được chứng minh

| REQ-ID | Nội dung |
|---|---|
| | |

## Should have — làm tăng niềm tin

| REQ-ID | Nội dung |
|---|---|
| | |

## Nice to have — chỉ làm khi Must prove và Should đã xong

| REQ-ID | Nội dung |
|---|---|
| | |

## KHÔNG LÀM

AI không được đề xuất lại các mục dưới đây, trừ khi có `CR-xx` chính thức.

| Mục | Lý do | Thay bằng |
|---|---|---|
| Đăng nhập tự viết | Không chứng minh gì | Bộ chọn vai hoặc dịch vụ có sẵn |
| Trang quản trị CRUD, trang cài đặt | Không nằm trên đường demo | — |
| Đa khách hàng, microservices | Không có yêu cầu đứng sau | Một ứng dụng, chia module |
| Tự tinh chỉnh model | Không có dữ liệu nhãn, không cần | Model có sẵn qua gateway |
| Ứng dụng di động | Ngoài phạm vi | Web |
| Tích hợp thật với hệ thống ngoài | Không tiếp cận được | Adapter giả lập, có nhãn |
| | | |

## Không bao giờ cắt

- Bước phê duyệt của con người và audit.
- Bộ ca thử AI (có thể giảm số ca, không bỏ).

## Thang cắt khi thiếu thời gian

Nice → persona thứ hai → dashboard → loại đầu vào thứ hai → tự động thực thi.
