# scope-check — việc này có đúng đề và đúng phạm vi không?

**Dùng khi:** trước khi bắt đầu bất kỳ việc gì: một tính năng, một màn hình, một thư viện, một slide.
**Đầu vào:** mô tả việc định làm (tham số của người dùng).

## Đọc

`STATUS.md`, `scope/SCOPE.md`, `scope/REQUIREMENTS.md`. Chỉ mở `case/CASE.md`, `case/CLARIFICATIONS.md`, `case/CHANGE_REQUESTS.md` khi cần đối chiếu.

## Bốn câu hỏi, theo thứ tự

1. **Gắn với mã nào?** Tìm trong `scope/REQUIREMENTS.md`: `REQ-xx` (yêu cầu của case), `CRIT-xx` (tiêu chí chấm chính thức), hoặc `STD-xx` (chuẩn bắt buộc của đội). Việc hỗ trợ như deploy, test, dữ liệu seed, tài liệu: nêu mã mà nó phục vụ. Không có → `OUT`.
2. **Dòng đó thuộc nhóm nào?** Must prove hoặc Should → đi tiếp. Nice hoặc KHÔNG LÀM → `OUT`.
3. **Giai đoạn trong `STATUS.md` có cho phép loại việc này không?** (Xem bảng cổng giai đoạn trong `AGENTS.md`.) Không → `OUT (hoãn)`.
4. **Có mâu thuẫn với `case/CASE.md`, `CLARIFICATIONS.md` hoặc `CHANGE_REQUESTS.md` không?** Có → `SAI ĐỀ`.

## Trả ra đúng định dạng này

```
Việc: <một câu>
Mã truy vết: <REQ-xx | CRIT-xx | STD-xx | hỗ trợ cho <mã> | không có>
Nhóm phạm vi: <Must prove | Should | Nice | KHÔNG LÀM | chưa phân loại>
Giai đoạn: <giai đoạn hiện tại> — <cho phép | không cho phép>
Đối chiếu case: <khớp, trích đoạn Px | mâu thuẫn, trích đoạn Px | case không nói>
Kết luận: IN | OUT | OUT (hoãn) | SAI ĐỀ | UNCLEAR
Lý do: <một đến hai câu>
Bước tiếp: <làm | ghi vào scope/PARKING_LOT.md | hỏi P1: "<câu hỏi cụ thể>">
```

## Ràng buộc

- Không tự tạo mã mới để hợp thức hóa một việc. "Hỗ trợ cho <mã>" chỉ hợp lệ khi thiếu việc đó thì dòng kia không hoàn thành được.
- `UNCLEAR` khi case không nói và phạm vi chưa phân loại. Khi đó dừng và hỏi P1; không tự quyết.
- Nếu kết luận là `OUT`, soạn sẵn dòng để thêm vào `scope/PARKING_LOT.md`, nhưng chỉ ghi khi thành viên đồng ý.
- Không bắt đầu làm việc đó trong cùng lượt trả lời.
