# GOLD CASES — bộ ca thử AI

Phục vụ `STD-01`. Viết **trước** khi tinh chỉnh prompt. Dùng prompt `eval-set` để lập danh mục và để chạy.

Quy tắc:
- Kết quả kỳ vọng do **người** viết (P1 viết, P2 soát). Người viết ca thử nên khác người viết prompt.
- Không sửa kết quả kỳ vọng để khớp với đầu ra của AI.
- Dữ liệu tổng hợp; không dữ liệu cá nhân thật.
- Khoảng một phần năm số ca là tập giữ riêng (`holdout = có`), không dùng khi tinh chỉnh.
- Mỗi lần người dùng bác hoặc sửa một đề xuất của AI trong lúc thử, thêm ca đó vào đây.

## Danh sách ca

Loại: `điển hình` · `bẩn` · `mơ hồ` · `đối kháng` · `cặp công bằng`.

| Mã | Loại | Đầu vào (file hoặc mô tả) | Kết quả kỳ vọng | Người viết | Holdout | Gắn với |
|---|---|---|---|---|---|---|
| GC-01 | điển hình | `eval/inputs/…` | | | không | REQ-… |

Mục tiêu số lượng: 30–40 ca. Tối thiểu khi thiếu thời gian: 15 ca, vẫn phải có đủ năm loại.

## Lần chạy

Mọi con số về AI trên slide và README lấy từ bảng này.

| Ngày | Phiên bản prompt | Model | Số ca | Đúng (AI) | Đúng (baseline không AI) | Không có căn cứ | Đúng theo mức tin cậy C / TB / T | Ca đối kháng xử lý đúng | Chi phí mỗi ca | Ghi chú |
|---|---|---|---:|---:|---:|---:|---|---:|---|---|
| | | | | | | | | | | |

## Ca sai đáng chú ý

| Mã | Lần chạy | AI trả ra | Vì sao sai | Xử lý |
|---|---|---|---|---|
| | | | | |
