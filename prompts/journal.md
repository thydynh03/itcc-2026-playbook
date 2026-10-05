# journal — ghi AI Journal cho phiên vừa xong

**Dùng khi:** cuối mỗi phiên làm việc với AI. BTC yêu cầu nộp AI Journal theo mẫu sau Vòng 2.

## Việc cần làm

Nhìn lại phiên làm việc này và soạn các mục journal. Mỗi lần dùng AI có ý nghĩa là một mục: một phân tích, một thiết kế, một đoạn mã, một lần phản biện.

## Mẫu một mục

```
### AJ-<số> — <mục đích trong một câu>
- Ngày, vòng, giai đoạn: <YYYY-MM-DD>, <R1 | R2 | R3>, <Research | Analyze | Design | Build | Test | Red Team | Pitch>
- Người phụ trách: <tên>
- Công cụ và model: <…>
- Prompt: <nguyên văn, hoặc tên file trong prompts/>
- AI trả ra: <2–3 dòng>
- Kiểm chứng: <đối chiếu case | mở nguồn | chạy test | explain-back với ai>
- Kết quả: <Chấp nhận | Sửa rồi dùng | Bác>
- AI sai ở đâu: <cụ thể, hoặc "không phát hiện">
- Đội quyết định: <gì, vì sao>
- Bằng chứng: <commit, test, D-xx>
```

## Ràng buộc

- **Trung thực.** Không tô đẹp. Nếu thành viên chưa kiểm chứng, ghi "chưa kiểm chứng" và nêu việc cần làm.
- Ghi rõ những lần AI sai, bịa, hoặc đề xuất bị bác. Đây là phần có giá trị nhất của journal.
- Trường "Kiểm chứng" và "Đội quyết định" phải do thành viên xác nhận. Nếu bạn không biết, hỏi; không tự điền.
- Thêm vào cuối `docs/memory/AI_JOURNAL.md`, không sửa mục cũ.
- Sau khi ghi, cập nhật các con số ở trang tổng hợp đầu file: tổng số mục, số Chấp nhận / Sửa / Bác.
