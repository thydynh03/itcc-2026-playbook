# rai-audit — rà soát Responsible AI và bảo mật

**Dùng khi:** giữa vòng Build, trước khi đóng băng, và sau khi hiện thực một yêu cầu thay đổi. Phục vụ `STD-02`, `STD-03`, `STD-07`, `STD-08`.

## Đọc

Luồng AI trong mã (tìm đúng file, không đọc cả repo), các file prompt, cấu hình deploy, `README.md` của sản phẩm.

## Mười ba kiểm soát

Với mỗi mục, kết luận **Có / Một phần / Thiếu**, kèm đường dẫn `file:dòng` làm bằng chứng, và nó xuất hiện ở bước nào của demo.

| # | Kiểm soát | Câu hỏi kiểm tra |
|---|---|---|
| 1 | Input validation | Loại file, kích thước, trường bắt buộc có bị kiểm tra trước khi gọi model không? |
| 2 | Data privacy | Chỉ gửi cho model các trường cần thiết? Dữ liệu demo có nhãn "synthetic"? |
| 3 | PII protection | Dữ liệu cá nhân có bị che trước khi gọi model không? Xem được bản đã che không? |
| 4 | Prompt injection | Nội dung tài liệu có nằm trong vùng phân cách, tách khỏi chỉ dẫn? Model có công cụ thực thi nào không? Có ca thử tấn công? |
| 5 | Hallucination | Không có căn cứ thì hệ thống có từ chối không? Câu không trích dẫn có bị loại? |
| 6 | Grounded generation | Mỗi kết luận có trích đoạn nguồn mở ra được không? |
| 7 | Confidence | Mức tin cậy tính từ tín hiệu kiểm chứng được, hay từ con số model tự báo? |
| 8 | Human approval | Hành động nào đổi trạng thái, tiền hoặc gửi ra ngoài mà không qua người duyệt? |
| 9 | Audit log | Có lưu đầu vào, phiên bản prompt, model, đầu ra, người duyệt, thời điểm? Tầng ứng dụng có sửa hoặc xóa được không? |
| 10 | Explainability | Người duyệt thấy quy tắc nào đạt, quy tắc nào không, cái gì chưa kiểm? |
| 11 | Fallback | Model hết thời gian chờ hoặc lỗi thì luồng có kẹt không? Tắt AI có chạy thủ công được? |
| 12 | Monitoring | Có số liệu duyệt / sửa / bác, độ trễ, lỗi? |
| 13 | Cost control | Có giới hạn token, trần chi phí, đo chi phí mỗi ca? |

## Bảo mật cơ bản

- Khóa bí mật: có nằm trong repo, trong lịch sử git, hoặc trong mã phía trình duyệt không?
- Phân quyền: một vai có đọc được dữ liệu của vai khác không?
- File tải lên: có bị thực thi hoặc lưu ở nơi truy cập công khai không?
- Phụ thuộc: thư viện nào không rõ giấy phép hoặc không được ghi trong README?
- Dữ liệu: có dữ liệu cá nhân thật ở bất kỳ đâu không?

## Trả ra

- Bảng 13 kiểm soát: trạng thái · bằng chứng · bước demo.
- Danh sách phát hiện bảo mật, xếp theo mức độ.
- Ba việc nên sửa trước, mỗi việc gắn một `STD-xx`.
- Những gì **không kiểm tra được** bằng cách đọc mã, cần thành viên thử tay.

## Ràng buộc

- Không sửa mã trong lượt này.
- "Có" chỉ khi chỉ ra được dòng mã. Mô tả trong README không phải bằng chứng.
- Không đề xuất kiểm soát vượt mức MVP (ví dụ chuỗi băm cho audit); ghi vào `scope/PARKING_LOT.md` nếu đáng nhắc.
- Phát hiện mức nghiêm trọng (lộ khóa, dữ liệu cá nhân thật) phải nêu ở dòng đầu tiên.
