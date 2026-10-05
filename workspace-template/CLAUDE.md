@AGENTS.md

## Riêng cho Claude Code

- Các prompt trong `prompts/` có sẵn dưới dạng slash command: `/scope-check`, `/drift-check`, `/journal`, …
- Chạy `/scope-check` trước khi bắt đầu một việc mới, kể cả khi người dùng không yêu cầu.
- Lọc output lệnh dài trước khi đưa vào context. Không đọc lại file vừa ghi.
