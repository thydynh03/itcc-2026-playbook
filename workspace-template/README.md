# ITCC 2026 — Workspace của đội

**Repo này phải để private.** Nó chứa case study và giải pháp của đội.

## Ngày nhận case (19/10)

1. Mỗi người đọc email của BTC và case **một mình, không dùng AI**, trong 30 phút.
2. P1 dán nguyên văn case vào `case/CASE.md`, đánh số đoạn `P1`, `P2`…; dán tiêu chí chấm vào `case/CRITERIA.md`.
3. Đổi `STATUS.md` sang `R1-DISCOVER`, điền hạn nộp và giờ chốt.
4. Cả đội viết problem statement chung vào `scope/PROBLEM_BRIEF.md`.
5. Gửi câu hỏi làm rõ cho BTC; ghi vào `case/CLARIFICATIONS.md`.
6. Chạy prompt `case-breakdown`, rồi `req-trace` để lập `scope/REQUIREMENTS.md`.
7. Chốt `scope/SCOPE.md`, gồm cả danh sách KHÔNG LÀM.

Bốn giờ đầu không viết mã.

## Mỗi ngày

| Khi | Việc | Prompt |
|---|---|---|
| Trước một việc mới | Kiểm tra phạm vi | `scope-check` |
| Trước một lựa chọn kỹ thuật | Ghi quyết định | `decision` |
| Cuối phiên làm việc với AI | Ghi nhật ký | `journal` |
| Mỗi tối (vòng Build) | Kiểm tra trôi | `drift-check` |
| Giữa và cuối vòng | Phản biện | `red-team`, `judge` |
| 24 giờ trước hạn nội bộ | Kiểm tra nộp bài | `pre-submit` |
| Nhận yêu cầu thay đổi | Đánh giá tác động | `change-request` |

## Cấu trúc

- `case/` — đề bài. Không sửa.
- `scope/` — phạm vi đã chốt. Sửa khi cả ba đồng ý.
- `docs/memory/` — tiến độ, quyết định, bài học, AI Journal, rủi ro.
- `prompts/`, `templates/` — chép từ playbook.
- `AGENTS.md` — 12 luật cho AI.

Kiến thức nền: https://github.com/thydynh03/itcc-2026-playbook
