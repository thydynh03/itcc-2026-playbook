# AGENTS.md — ITCC 2026 Playbook

Luật cho mọi công cụ AI làm việc trong repo này (Claude Code, Codex, Antigravity).

## Repo này là gì

Kho kiến thức, prompt và khung làm việc của một đội 3 người thi IT Consultant Challenge 2026. Repo **công khai** và **chỉ đọc** đối với thành viên. Việc thi thật diễn ra ở một workspace private tạo từ `workspace-template/`.

## Luật

1. **Ngôn ngữ.** Trả lời thành viên bằng tiếng Việt; giữ thuật ngữ kỹ thuật bằng tiếng Anh.
2. **Đọc có chọn lọc.** Đọc `kb/INDEX.md` trước, rồi chỉ mở đúng file cần. Không nạp cả `kb/`.
3. **Sự thật về cuộc thi** chỉ lấy từ các dòng có nhãn `FACT` trong `kb/00-overview-and-facts.md`. Phần còn lại của `kb/` là suy luận chiến lược của đội, không phải lời của BTC.
4. **Bốn nhãn.** Mọi nhận định về cuộc thi phải mang một nhãn: `FACT` (kèm nguồn), `INFERENCE`, `ASSUMPTION`, `UNKNOWN`. Không bịa tiêu chí chấm, số liệu, hay thông tin về giám khảo.
5. **Chưa có case.** Không đoán nội dung case. Không thiết kế giải pháp cụ thể cho bài thi. Được phép: giải thích kiến thức, luyện tập với case công khai trong thư mục `workspace/` (đã bị gitignore).
6. **Repo công khai.** Không ghi vào bất kỳ file nào được git theo dõi: nội dung case study, tiêu chí chấm BTC gửi qua email, giải pháp của đội, khóa bí mật, dữ liệu cá nhân.
7. **Không sửa `kb/`, `prompts/`, `workspace-template/`** theo yêu cầu thông thường. Nếu thấy sai, nêu rõ chỗ sai và đề nghị thành viên báo người giữ repo.
8. **Tiêu chí chính thức thắng.** Nếu thành viên cung cấp tiêu chí hoặc thông báo của BTC khác với `kb/`, làm theo BTC và chỉ ra chỗ `kb/` đã lỗi thời.
9. **Chơi đẹp.** Không giúp tìm cách biết trước case, liên hệ riêng giám khảo, dùng mã sai giấy phép, làm giả kết quả demo, hay tạo slide 100% bằng AI.
10. **Việc thi thật** không làm ở đây. Hướng thành viên chạy `scripts/new-workspace.sh` và làm trong workspace, nơi áp dụng `AGENTS.md` của workspace.

## Prompt có sẵn

File trong `prompts/`; Claude Code và Antigravity gọi được bằng `/tên`.

| Prompt | Dùng khi |
|---|---|
| `onboard` | Thành viên mới, hoặc đầu mỗi vòng |
| `case-breakdown` | Ngày nhận case |
| `scope-check` | Trước khi bắt đầu bất kỳ việc gì |
| `req-trace` | Sau khi thêm hoặc sửa tính năng |
| `decision` | Trước một lựa chọn kỹ thuật |
| `journal` | Cuối mỗi phiên làm việc với AI |
| `eval-set` | Trước khi tinh chỉnh prompt; sau mỗi lần đổi prompt hoặc model |
| `rai-audit` | Giữa vòng Build, trước khi đóng băng |
| `red-team` | Giữa và cuối mỗi vòng |
| `judge` | Trước khi nộp |
| `pitch-critique` | Sau khi đội đã tự làm slide |
| `change-request` | Khi nhận yêu cầu thay đổi ở Vòng 3 |
| `pre-submit` | 24 giờ trước hạn nộp |
| `drift-check` | Mỗi tối trong vòng Build |

Trừ `onboard`, các prompt này đọc `case/` và `scope/`, nên chỉ chạy đúng trong workspace.
