# AGENTS.md — ITCC 2026 Workspace

Luật cho mọi công cụ AI (Claude Code, Codex, Antigravity) làm việc trong workspace thi của đội.
Mục đích duy nhất của các luật này: **đội làm đúng đề, trong phạm vi đã chốt, và giải thích được mọi thứ mình nộp.**

Workspace này phải là repo **private**. Nó chứa case study và giải pháp của đội.

## Bản đồ file

| File | Vai trò | Ai được sửa |
|---|---|---|
| `STATUS.md` | Giai đoạn hiện tại, hạn nộp, trạng thái đóng băng | P1 |
| `case/CASE.md` | Nguyên văn case, đánh số đoạn `P1`, `P2`… | Không ai. Chỉ dán một lần |
| `case/CRITERIA.md` | Tiêu chí chấm chính thức từng vòng | Chỉ dán từ email BTC |
| `case/CLARIFICATIONS.md` | Câu hỏi đã gửi BTC và trả lời (`CLAR-xx`) | P1 |
| `case/CHANGE_REQUESTS.md` | Yêu cầu thay đổi ở Vòng 3 (`CR-xx`) | Chỉ dán từ BTC |
| `scope/PROBLEM_BRIEF.md` | Vấn đề, người dùng chính, Must prove | Cả ba đồng ý |
| `scope/REQUIREMENTS.md` | Ma trận truy vết `REQ-xx` | Cả ba đồng ý |
| `scope/SCOPE.md` | Must prove / Should / Nice / KHÔNG LÀM | Cả ba đồng ý |
| `scope/ASSUMPTIONS.md` | Giả định và cách kiểm chứng | P1 |
| `scope/PARKING_LOT.md` | Ý tưởng ngoài phạm vi | Ai cũng thêm được |
| `docs/memory/` | `PROGRESS`, `DECISIONS`, `LESSONS`, `AI_JOURNAL`, `RISKS` | Ai cũng thêm được; không sửa mục cũ |

Kiến thức nền nằm ở repo playbook: https://github.com/thydynh03/itcc-2026-playbook (thư mục `kb/`). Không chép `kb/` vào đây.

## Mười hai luật

1. **Đọc trước khi làm.** Đầu mỗi phiên đọc `STATUS.md`, `scope/PROBLEM_BRIEF.md`, `scope/SCOPE.md`. Chỉ mở file khác khi việc đang làm cần đến.
2. **Đề bài chỉ nằm trong `case/`.** Không suy diễn nội dung case từ trí nhớ, từ playbook, hay từ "thông lệ ngành". Thứ tự ưu tiên khi mâu thuẫn: `CHANGE_REQUESTS.md` → `CLARIFICATIONS.md` → `CASE.md` → mọi thứ khác.
3. **Chế độ PRE-CASE.** Nếu `case/CASE.md` còn trống: không giả định case, không đề xuất giải pháp cụ thể, không viết mã sản phẩm.
4. **Không có `REQ-ID` thì không làm.** Mọi việc phải gắn với một `REQ-xx` trong `scope/REQUIREMENTS.md`. Không gắn được → dừng, soạn dòng cho `scope/PARKING_LOT.md`, báo P1. Không tự tạo `REQ` mới để hợp thức hóa.
5. **Danh sách KHÔNG LÀM là cứng.** Không đề xuất lại một mục trong đó, trừ khi có `CR-xx` chính thức.
6. **Cổng theo giai đoạn.** Chỉ làm loại việc mà giai đoạn trong `STATUS.md` cho phép (bảng bên dưới).
7. **Bốn nhãn.** Mọi nhận định về case hoặc cuộc thi mang một nhãn: `FACT` (kèm `Px`, `CLAR-xx`, `CR-xx` hoặc nguồn), `INFERENCE`, `ASSUMPTION`, `UNKNOWN`. Không bịa số liệu, người liên quan, hệ thống, quy định. Cái gì case không nói là `UNKNOWN`.
8. **Không tự đổi đề và phạm vi.** Không sửa `case/`. Chỉ sửa `scope/` khi thành viên nói rõ cả ba đã đồng ý.
9. **Quyết định kỹ thuật phải ghi trước.** Thêm thư viện, đổi kiến trúc, đổi model, đổi mô hình dữ liệu → soạn một mục `D-xx` cho `docs/memory/DECISIONS.md` (prompt `decision`) và chờ người có thẩm quyền quyết.
10. **Ghi AI Journal.** Cuối mỗi phiên, soạn mục cho `docs/memory/AI_JOURNAL.md` (prompt `journal`), kể cả những gì bạn làm sai hoặc bị đội bác.
11. **Explain-back.** Sau khi tạo mã hoặc nội dung, giải thích ngắn: nó làm gì, vì sao làm vậy, chỗ nào có thể sai. Nhắc thành viên rằng không merge thứ họ chưa giải thích lại được.
12. **An toàn và trung thực.** Không khóa bí mật trong repo hay trong mã phía trình duyệt. Không dữ liệu cá nhân thật. Không gắn cứng kết quả AI rồi trình bày như chạy thật. Phần giả lập phải có nhãn trên giao diện. Thư viện mã nguồn mở phải ghi tên và giấy phép trong README.

## Cổng theo giai đoạn

| Giai đoạn (`STATUS.md`) | Được làm | Không được làm |
|---|---|---|
| `PRE-CASE` | Đọc, luyện tập | Mọi việc về case hoặc giải pháp |
| `R1-DISCOVER` · 4 giờ đầu | Đọc case, problem statement, câu hỏi làm rõ | Viết mã, bàn công nghệ |
| `R1-DISCOVER` | Phân tích, proposal, spike kỹ thuật, prototype | Mã sản phẩm |
| `GAP-1` | Khung dự án, dữ liệu tổng hợp, ca thử | Việc phụ thuộc yêu cầu Vòng 2 chưa công bố |
| `R2-BUILD` | Mã sản phẩm cho `REQ` Must prove và Should | `REQ` nhóm Nice khi Must prove chưa xong |
| `GAP-2` | Sửa lỗi, tăng khả năng thay đổi, luyện pitch | Tính năng mới |
| `R3-DELIVER` | Việc gắn với `CR-xx`; hoàn thiện đường demo | Tính năng mới ngoài `CR-xx` |
| Đóng băng (48 giờ trước hạn) | Sửa lỗi trên đường demo, tài liệu | Mọi tính năng |

## Phép kiểm tra phạm vi

Chạy trước mỗi việc (prompt `scope-check`):

```
1. Gắn với REQ-ID nào?                          không có → OUT
2. REQ đó ở Must prove / Should?                Nice / KHÔNG LÀM → OUT
3. Giai đoạn hiện tại cho phép loại việc này?   không → OUT (hoãn)
4. Mâu thuẫn với CASE / CLARIFICATIONS / CR?    có → SAI ĐỀ, dừng
Kết luận: IN · OUT → PARKING_LOT · UNCLEAR → hỏi P1
```

Khi thành viên yêu cầu một việc cho kết quả `OUT` hoặc `SAI ĐỀ`: nói rõ kết quả và lý do, **không làm**, và đề xuất bước tiếp. Nếu thành viên vẫn muốn làm, họ phải cập nhật `scope/` trước.

## Quyền quyết định

| Lĩnh vực | Người quyết |
|---|---|
| Phạm vi, ưu tiên, thông điệp | P1 — Consultant / Product Lead |
| Kiến trúc, model, kiểm soát AI, bảo mật | P2 — Solution Architect / AI Lead |
| Cách hiện thực, thứ tự build, đóng băng demo | P3 — Full-stack / Delivery Lead |
| Người dùng chính, phạm vi MVP, mô hình dữ liệu | Cả ba |

AI đưa phương án và khuyến nghị; AI không quyết thay đội.

## Quy ước

- Commit và tiêu đề PR: `REQ-07: mô tả`, `CR-01: mô tả`, `fix: …`, `docs: …`, `chore: …`.
- Trả lời thành viên bằng tiếng Việt. Nội dung nộp cho BTC (proposal, slide, README sản phẩm) bằng tiếng Anh.
- Prompt nằm trong `prompts/`: `onboard`, `case-breakdown`, `scope-check`, `req-trace`, `decision`, `journal`, `red-team`, `judge`, `change-request`, `pre-submit`, `drift-check`.
