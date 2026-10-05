# req-trace — cập nhật và kiểm tra ma trận truy vết

**Dùng khi:** sau khi phân tích case, và sau mỗi lần thêm hoặc sửa tính năng.

## Đọc

`case/CASE.md`, `case/CLARIFICATIONS.md`, `case/CHANGE_REQUESTS.md`, `scope/REQUIREMENTS.md`, `scope/SCOPE.md`. Với cột "Tính năng" và "Test", tìm trong mã bằng tìm kiếm, không đọc cả repo.

## Việc cần làm

1. **Độ phủ từ case xuống.** Liệt kê mọi câu trong case nêu một nhu cầu, mục tiêu hoặc ràng buộc. Câu nào chưa có `REQ` tương ứng → báo "thiếu REQ", kèm số đoạn `Px` và trích nguyên văn.
2. **Độ phủ từ REQ lên.** `REQ` nào không truy được về một đoạn case, một trả lời của BTC, hoặc một change request → báo "REQ không có nguồn". Đây là dấu hiệu tự thêm yêu cầu.
3. **Độ phủ xuống sản phẩm.** Với mỗi `REQ` thuộc Must prove hoặc Should: đã có tính năng chưa, đã có test chưa, đã có bước demo chưa.
4. **Mã không có REQ.** Tính năng hoặc màn hình nào trong mã không gắn với `REQ` nào → báo "làm ngoài phạm vi".

## Trả ra

- Bảng thay đổi đề xuất cho `scope/REQUIREMENTS.md` (chỉ các dòng thêm hoặc sửa).
- Bốn danh sách: thiếu REQ · REQ không có nguồn · REQ chưa có test hoặc bước demo · làm ngoài phạm vi.
- Một câu kết luận: ma trận đang phủ bao nhiêu trên tổng số yêu cầu của case.

## Ràng buộc

- Cột "Nguồn" phải là `P<số>` kèm trích nguyên văn, `CLAR-xx`, hoặc `CR-xx`. Không ghi "suy ra".
- Không tự đổi nhóm phạm vi của một `REQ`. Đó là quyết định của P1.
- Chỉ ghi file khi thành viên đồng ý.
