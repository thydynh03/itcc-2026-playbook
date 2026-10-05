# 2. JUDGE PSYCHOLOGY

Toàn bộ mục này là **[INFERENCE]**: tôi không biết giám khảo là ai. Tôi mô phỏng một consultant hoặc architect cấp senior của một công ty tư vấn CNTT, người hằng ngày phải chịu trách nhiệm về tiến độ, chất lượng và khách hàng.

## 2.1 Sau 20 proposal đầu tiên, tôi loại những đội nào?

Đến bài thứ 20 tôi đã đọc khoảng 12 phiên bản của "AI chatbot / AI assistant cho [khách hàng trong case]". Tôi loại:

- Bài mà tôi không tìm thấy vấn đề của khách hàng trong 30 giây đầu.
- Bài có giải pháp lắp được vào bất kỳ case nào. Nếu đổi tên khách hàng mà bài vẫn đúng thì bài không trả lời case.
- Bài hứa 12 tính năng trong 7 ngày.
- Bài có số liệu thị trường tròn trịa không nguồn, văn phong đều đều, không một con số nào lấy từ case. Tôi kết luận là AI viết và đội không đọc lại.
- Bài bỏ qua một ràng buộc mà case nêu rõ.
- Bài không có rủi ro, không có giả định. Người chưa nghĩ đủ sâu mới không thấy rủi ro.

Tôi giữ lại bài khiến tôi nghĩ: "Đội này đọc case kỹ hơn tôi tưởng", và bài có một quan sát về khách hàng mà tôi chưa thấy ở bài khác.

## 2.2 Sau 20 MVP, điều gì khiến tôi nhớ một đội?

- MVP mà tôi mở link lên là **dùng được ngay**, không cần cài, không cần hỏi mật khẩu.
- Tôi nhập một input xấu và hệ thống **không bịa**; nó nói "không đủ căn cứ" và chuyển cho người.
- Có một màn hình cho tôi thấy **AI đúng bao nhiêu phần trăm trên bao nhiêu ca thử**. Gần như không đội nào đo.
- README nói thẳng: "Phần này thật. Phần này giả lập. Phần này chưa làm, vì…".
- AI Journal có mục "AI đề xuất X, chúng tôi bác vì Y". Điều đó cho tôi biết có người đang lái.

Tôi quên các đội có giao diện đẹp và nhiều trang nhưng luồng chính dừng ở bước thứ hai.

## 2.3 Trong pitch, điều gì khiến tôi nghĩ "đây là đội thắng"?

- Họ nói về **khách hàng của tôi** trong 30 giây đầu, bằng con số của case.
- Demo chạy **một câu chuyện**, mỗi lần bấm đều có lý do.
- Khi tôi hỏi khó, họ **mở bằng chứng** thay vì nói thêm: log, test, decision record.
- Khi tôi hỏi điểm yếu, họ **nói ra trước** và có kế hoạch.
- Với change request, họ kể **họ đã cân nhắc gì và từ chối gì**, không chỉ "bọn em đã làm xong".
- Cả ba người đều trả lời được phần của người khác.
- Tôi tin rằng nếu thứ Hai tôi giao cho họ một khách hàng thật, họ sẽ không làm tôi xấu hổ.

## 2.4 Mười yếu tố khiến một đội nổi bật

1. Problem statement dùng lời và số liệu của case, có một insight riêng.
2. Phạm vi hẹp có chủ đích, kèm danh sách "không làm" có lý do.
3. Một luồng end-to-end chạy thật.
4. AI được đặt đúng chỗ: chỉ ở bước luật cứng không làm nổi, và đội chứng minh được điều đó.
5. Chất lượng AI được đo bằng bộ ca thử, có con số.
6. Kiểm soát AI nhìn thấy trên màn hình: bằng chứng, mức tin cậy, phê duyệt, audit.
7. Quyết định kỹ thuật có lý do và có phương án bị loại.
8. Trung thực về giới hạn, giả định, phần giả lập.
9. Change request được xử lý như một consultant.
10. Cả đội cùng sở hữu bài làm; giao tiếp rõ, tiếng Anh gọn.

## 2.5 Mười lỗi khiến một đội rất dễ bị loại

1. Giải pháp không khớp case hoặc bỏ sót ràng buộc case nêu rõ.
2. "Chatbot cho mọi thứ" không có lý do vì sao là chatbot.
3. Phạm vi quá rộng, không gì chạy trọn.
4. Nội dung AI sinh không kiểm chứng: số bịa, trích dẫn bịa, slide 100% AI (điều BTC đã nói rõ là không nên [FACT S2]).
5. Demo giả (kết quả gắn cứng) mà trình bày như thật. Một câu hỏi "cho tôi nhập thử" là lộ.
6. Không trả lời được "nếu AI sai thì sao".
7. Không giải thích được code của chính mình.
8. Lộ khóa API, lộ dữ liệu cá nhân, hoặc dùng dữ liệu thật của người khác trong demo.
9. Nộp trễ, link chết, thiếu AI Journal, sai định dạng.
10. Pitch là bài đọc tech stack; một người nói hết, hai người đứng nhìn.

## 2.6 Judge Decision Matrix

| Factor | Judge wants | Weak team | Strong team | Champion team |
|---|---|---|---|---|
| Hiểu bài toán | Thấy khách hàng của mình trong bài | Chép lại case | Tóm tắt đúng, có persona | Có insight riêng; truy vết từng yêu cầu của case đến tính năng, test và bước demo |
| Phù hợp case | Giải pháp sinh ra từ case | Idea có sẵn, ép vào | Khớp các yêu cầu chính | Khớp cả ràng buộc ngầm; nói rõ yêu cầu nào hoãn và vì sao |
| Giá trị kinh doanh | Con số tin được | "Tăng hiệu quả" | Có KPI và ước tính | Công thức + giả định + phân tích độ nhạy + số đo từ MVP |
| Vai trò của AI | AI có cần thật không | AI để gây ấn tượng | AI ở bước hợp lý | So sánh có/không AI trên cùng bộ ca thử; tắt AI sản phẩm vẫn chạy thủ công |
| Chất lượng AI | Biết AI đúng cỡ nào | "Chạy khá ổn" | Thử tay vài ca | Bộ ca thử viết tay, có số, chạy lại mỗi lần đổi prompt |
| Responsible AI | Kiểm soát thật | Một slide nguyên tắc | Có human approval | Bằng chứng, mức tin cậy có căn cứ, phê duyệt, audit, từ chối trả lời — tất cả trong demo |
| Quyết định kỹ thuật | Lý do, không phải danh sách | Liệt kê công nghệ | Giải thích lựa chọn | Decision log có phương án bị loại; change request chứng minh kiến trúc đúng |
| MVP | Chạy thật | Mockup hoặc nhiều trang dở | Luồng chính chạy | Luồng chính chạy + ca biên + ghi rõ phần giả lập + giám khảo tự nhập được |
| Tính khả thi | Tin là làm tiếp được | Lộ trình mơ hồ | Lộ trình theo giai đoạn | Kế hoạch pilot có cổng đánh giá, ước lượng nhân lực, nợ kỹ thuật được ghi lại |
| Dùng AI khi làm bài | Có kiểm soát | Giấu hoặc phó mặc | Liệt kê công cụ | Journal có prompt, kết quả, cách kiểm chứng, cái bị bác, tỷ lệ chấp nhận |
| Change request | Tư duy tư vấn | Code ngay hoặc từ chối | Làm xong | Đánh giá tác động, ba phương án, khuyến nghị, hồi quy, nói rõ phần giữ nguyên |
| Demo | Một câu chuyện | Bấm lung tung, lỗi | Trơn tru | Có trước/sau, có số đo, có ca biên, có dự phòng, giám khảo điều khiển được |
| Pitch và Q&A | Tin tưởng | Đọc slide | Rõ ràng | Mở bằng chứng để trả lời; tự nêu điểm yếu; cả ba cùng trả lời |
| Teamwork | Một đội thật | Một người gánh | Chia vai rõ | Trả lời chéo phần của nhau |


