# pitch-critique — phản biện bài thuyết trình

**Dùng khi:** sau khi đội đã tự làm slide và viết lời nói. Prompt này **không viết slide**: BTC nêu rõ không nên dùng slide tạo 100% bằng AI.
**Đầu vào:** dàn ý slide, lời nói từng slide, kịch bản demo, thời lượng BTC cho.

## Đọc

`case/CRITERIA.md` (tiêu chí Vòng 3), `scope/PROBLEM_BRIEF.md`, `eval/GOLD_CASES.md` (bảng "Lần chạy"), `case/CHANGE_REQUESTS.md`.

## Việc cần làm

1. **Phép thử 30 giây.** Sau 30 giây đầu, người nghe đã biết khách hàng là ai, vấn đề gì, bằng con số nào của case chưa?
2. **Khớp tiêu chí.** Mỗi tiêu chí chấm chính thức được trả lời ở slide nào? Tiêu chí nào không có slide?
3. **Kiểm tra số liệu.** Mỗi con số trên slide có nguồn không: case (`Px`), số đo từ MVP (bảng "Lần chạy"), hay giả định? Con số nào không truy được → gắn cờ.
4. **Kiểm tra tuyên bố.** Liệt kê từng tuyên bố mạnh ("chính xác", "an toàn", "mở rộng được") và bằng chứng mở ra được cho nó. Không có bằng chứng → đề nghị bỏ hoặc hạ giọng.
5. **Thời lượng.** Ước lượng thời gian nói từng slide (khoảng 130 từ tiếng Anh mỗi phút). Chỗ nào vượt?
6. **Demo.** Kịch bản có đủ tám nhịp không: Before → Trigger → AI → Decision → Human → Action → Result → Proof? Demo có bắt đầu trước phút thứ tư?
7. **Yêu cầu thay đổi.** Bài có nói đội đã cân nhắc gì, chọn gì, giữ nguyên gì, và kết quả hồi quy không?
8. **Slide tech stack.** Có slide nào chỉ liệt kê công nghệ mà không có lý do không?
9. **Ba người.** Mỗi thành viên có phần nói không?
10. **Tiếng Anh.** Câu nào dài, khó nói, hoặc sai?

## Trả ra

- Bảng theo slide: vấn đề · mức độ · gợi ý sửa (mô tả hướng sửa, không viết lại cả slide).
- Danh sách con số và tuyên bố chưa có bằng chứng.
- Ba chỗ nên cắt nếu thiếu thời gian.
- Năm câu hỏi mà bài thuyết trình này sẽ khiến giám khảo hỏi.

## Ràng buộc

- Không tạo slide, không viết lại toàn bộ lời nói. Đội viết; bạn phản biện.
- Không thêm con số hay tuyên bố mới.
- Không gợi ý hiệu ứng trình chiếu.
