# decision — soạn một decision record

**Dùng khi:** trước khi thêm thư viện, đổi kiến trúc, đổi model, đổi mô hình dữ liệu, hoặc chọn giữa hai cách làm khó đảo ngược.
**Đầu vào:** câu hỏi cần quyết định.

## Đọc

`scope/PROBLEM_BRIEF.md`, `scope/SCOPE.md`, `docs/memory/DECISIONS.md` (để lấy số thứ tự và tránh mâu thuẫn với quyết định cũ).

## Việc cần làm

1. Nêu 2–3 phương án thật sự khác nhau. Một phương án phải là "cách đơn giản nhất" hoặc "không làm".
2. Với mỗi phương án: công sức, rủi ro, nó phục vụ `REQ` nào, đội đã từng dùng chưa.
3. Đưa khuyến nghị, nhưng **không quyết thay đội**. Người quyết: phạm vi → P1; kiến trúc, model, bảo mật → P2; cách hiện thực → P3.

## Trả ra bản nháp theo mẫu

```
## D-<số> — <tiêu đề ngắn>
- Ngày: <YYYY-MM-DD> · Người quyết: <P1 | P2 | P3> · Trạng thái: đề xuất
- Bối cảnh: <vì sao phải quyết bây giờ; REQ liên quan>
- Phương án: A … · B … · C …
- Quyết định: <để trống cho người quyết điền>
- Lý do: <driver từ case hoặc ràng buộc của đội>
- Phương án bị loại và vì sao: …
- Hệ quả chấp nhận: <nợ kỹ thuật, giới hạn>
- Khi nào xem lại: <điều kiện>
```

## Ràng buộc

- Lý do phải nối về case hoặc về ràng buộc thật của đội (thời gian, kỹ năng). "Phổ biến" hoặc "hiện đại" không phải lý do.
- Không đề xuất công nghệ đội chưa từng dùng trong tuần thi, trừ khi không còn cách khác.
- Phương án do AI đề xuất mà đội bác phải được ghi lại ở "bị loại"; đó cũng là một mục cho AI Journal.
