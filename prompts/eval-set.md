# eval-set — dựng và chạy bộ ca thử AI

**Dùng khi:** trước khi tinh chỉnh prompt (đầu vòng Build), và sau mỗi lần đổi prompt hoặc model. Phục vụ `STD-01`.

## Đọc

`scope/PROBLEM_BRIEF.md`, `scope/REQUIREMENTS.md`, `eval/GOLD_CASES.md`, và schema đầu ra của bước AI.

## Việc cần làm

### A. Khi bộ ca thử chưa có hoặc còn thiếu

1. Đề xuất **danh mục loại ca** cần có, không tự viết kết quả kỳ vọng:
   - ca điển hình (khoảng một nửa);
   - ca bẩn: lỗi chính tả, thiếu trường, lẫn hai ngôn ngữ, định dạng lạ;
   - ca mơ hồ: không đủ căn cứ để kết luận — kỳ vọng là "từ chối và chuyển cho người";
   - ca đối kháng: tài liệu có câu lệnh cài cắm;
   - cặp ca công bằng: giống nhau, chỉ khác tên hoặc giới tính — kỳ vọng là kết quả giống nhau.
2. Với mỗi loại, soạn **đầu vào mẫu** để thành viên sửa lại.
3. Dừng và nhắc: **kết quả kỳ vọng do người viết** (P1 viết, P2 soát), và người viết ca thử nên khác người viết prompt. Giữ riêng khoảng một phần năm số ca làm tập không dùng khi tinh chỉnh.

### B. Khi đã có bộ ca thử

1. Chạy bước AI trên từng ca; chạy cả baseline không AI (luật cứng) nếu có.
2. So với kết quả kỳ vọng. Tính:
   - tỷ lệ đúng của AI và của baseline;
   - số câu trả lời không có căn cứ;
   - tỷ lệ đúng theo từng mức tin cậy (Cao / Trung bình / Thấp);
   - số ca đối kháng và ca mơ hồ được xử lý đúng;
   - độ trễ và chi phí trung bình mỗi ca, nếu log có.
3. Ghi một dòng vào bảng "Lần chạy" trong `eval/GOLD_CASES.md`: ngày, phiên bản prompt, model, các con số.
4. Liệt kê các ca sai, kèm phỏng đoán nguyên nhân.

## Ràng buộc

- Không sửa kết quả kỳ vọng để cho khớp với đầu ra của AI.
- Không báo con số nào bạn không thật sự chạy ra. Không chạy được thì nói rõ và đưa lệnh để thành viên chạy.
- Nếu mức tin cậy "Cao" không đúng nhiều hơn mức "Thấp", báo rõ: cách tính mức tin cậy cần sửa hoặc bỏ.
- Dữ liệu ca thử là dữ liệu tổng hợp. Không dùng dữ liệu cá nhân thật.
- Mọi con số về AI trên slide và README phải lấy từ bảng "Lần chạy".
