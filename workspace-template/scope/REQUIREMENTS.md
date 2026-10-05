# REQUIREMENTS — ma trận truy vết

Mỗi dòng truy được ngược về nguồn và xuôi đến bước demo. Việc nào không gắn với một dòng ở đây thì không làm.

Ba loại mã:

| Loại | Nghĩa | Nguồn hợp lệ |
|---|---|---|
| `REQ-xx` | Yêu cầu hoặc ràng buộc của case | `P<số>` kèm trích nguyên văn, `CLAR-xx`, hoặc `CR-xx`. Không ghi "suy ra" |
| `CRIT-xx` | Tiêu chí chấm chính thức | Nguyên văn trong `case/CRITERIA.md`, ghi rõ vòng |
| `STD-xx` | Chuẩn bắt buộc của đội | Danh sách cố định bên dưới. Thêm mới cần cả ba đồng ý |

- **Kiểu:** F (chức năng) · NF (phi chức năng) · C (ràng buộc).
- **Nhóm:** Must prove · Should · Nice · KHÔNG LÀM · Hoãn (kèm lý do).

## Yêu cầu của case (REQ)

| Mã | Yêu cầu | Kiểu | Nguồn | Nhóm | Tính năng | Test | Bước demo | Trạng thái |
|---|---|---|---|---|---|---|---|---|
| REQ-01 | | | P… — "…" | | | | | |

## Tiêu chí chấm chính thức (CRIT)

Điền khi BTC email tiêu chí của từng vòng. Mỗi tiêu chí một dòng; cột "Bằng chứng" là thứ đội sẽ đưa ra để được điểm tiêu chí đó.

| Mã | Vòng | Tiêu chí (nguyên văn) | Trọng số | Bằng chứng của đội | Nằm ở đâu trong bài nộp | Trạng thái |
|---|---|---|---|---|---|---|
| CRIT-01 | | | | | | |

## Chuẩn bắt buộc của đội (STD)

Đây là những thứ case sẽ không yêu cầu nhưng quyết định bài có đáng tin hay không. Căn cứ: BTC nêu "ứng dụng AI có trách nhiệm", yêu cầu đội "kiểm chứng nội dung do AI tạo", "giải thích và bảo vệ được toàn bộ bài làm", MVP thể hiện "chức năng cốt lõi, giá trị kinh doanh và tính khả thi", và nêu rõ phần nào do đội phát triển.

| Mã | Chuẩn | Nhóm | Áp dụng từ | Bằng chứng | Trạng thái |
|---|---|---|---|---|---|
| STD-01 | Bộ ca thử AI viết tay, có baseline không AI, chạy lại mỗi lần đổi prompt hoặc model (`eval/GOLD_CASES.md`) | Must prove | Vòng 2 | Bảng kết quả theo lần chạy | |
| STD-02 | Mọi đầu ra AI hiện căn cứ và mức tin cậy có lý do; người phê duyệt trước khi thực thi; có audit | Must prove | Vòng 2 | Decision Card và bảng audit trong demo | |
| STD-03 | Không dữ liệu cá nhân thật; che dữ liệu cá nhân trước khi gọi model; không khóa bí mật trong repo | Must prove | Vòng 1 | Kết quả `rai-audit` | |
| STD-04 | Một con số KPI đo từ MVP (trước / sau) và chi phí mỗi ca | Must prove | Vòng 2 | Số đo có nhãn nguồn | |
| STD-05 | README cho người chấm: cái gì thật / giả lập / chưa làm; thư viện mã nguồn mở và giấy phép; phần đội phát triển | Must prove | Vòng 2 | `README.md` của sản phẩm | |
| STD-06 | Decision log và AI Journal cập nhật mỗi ngày, có cả mục AI sai hoặc bị bác | Must prove | Vòng 1 | `docs/memory/` | |
| STD-07 | Tắt AI thì luồng vẫn chạy thủ công; model lỗi có phương án dự phòng | Should | Vòng 2 | Công tắc tắt AI trong demo | |
| STD-08 | Ca biên: đầu vào không đủ căn cứ và đầu vào có câu lệnh cài cắm đều bị gắn cờ và chuyển cho người | Should | Vòng 2 | Ca thử tương ứng trong bộ ca thử | |
| STD-09 | Demo có dự phòng: bản cục bộ, video, mạng thứ hai | Should | Vòng 2 | Đã chạy thử từng phương án | |

## Yêu cầu của case chưa được đáp ứng

| Nguồn | Nội dung | Vì sao hoãn | Sẽ nói thế nào khi bị hỏi |
|---|---|---|---|
| | | | |
