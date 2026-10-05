# 18. ROUND-BY-ROUND PLAYBOOK

Lịch theo ngày dưới đây là [ASSUMPTION] về cách chia việc; các mốc ngày là [FACT S1]. Giờ chốt trong ngày hạn là [UNKNOWN], nên **hạn nội bộ luôn là tối hôm trước**.

## ROUND 1 — DISCOVER (19/10–26/10) · Goal: Get selected

### Lịch 7 ngày

| Ngày | Việc chính | Sản phẩm cuối ngày |
|---|---|---|
| T2 19/10 | Nhận case qua email. Chạy checklist 30 phút / 60 phút / 2 giờ / 4 giờ (Mục 4.2). Gửi câu hỏi làm rõ. Thay trọng số chấm | Problem Brief một trang; câu hỏi đã gửi; decision record đầu tiên |
| T3 20/10 | Nghiên cứu ngành; quy trình hiện tại; nguyên nhân gốc; 2 giờ tìm insight; ba phương án | Ma trận chọn phương án |
| T4 21/10 | Chốt giải pháp; phạm vi MVP; kiến trúc một trang; bắt đầu spike phần rủi ro nhất | Ma trận truy vết v1; sơ đồ kiến trúc |
| T5 22/10 | Kết quả spike; KPI và công thức ROI; lớp Responsible AI; bản nháp proposal v1 | Proposal v1; một con số thật từ spike |
| T6 23/10 | Red Team và Judge Agent; sửa ba điểm yếu lớn nhất | Proposal v2 |
| T7 24/10 | Prototype bấm được hoặc ảnh màn hình thật; chỉnh tiếng Anh; trình bày | Proposal v3 |
| CN 25/10 | Final review (4.2); người ngoài đọc thử 60 giây; **nộp** | Đã nộp; lưu xác nhận |
| T2 26/10 | Dự phòng. Chỉ dùng nếu có sự cố | — |

### Nội dung proposal

Định dạng chính thức là [UNKNOWN]; khi BTC thông báo thì theo đúng định dạng đó. Nội dung cần có:

| Phần | Nội dung | Bằng chứng kèm |
|---|---|---|
| Executive summary | Vấn đề, giải pháp, giá trị, vì sao khả thi — đọc trong 60 giây | — |
| Problem framing | Problem statement; insight; nguyên nhân gốc | Trích dẫn case có số đoạn |
| User | Người mua, người dùng chính, quy trình hiện tại | Sơ đồ as-is |
| Solution | Luồng to-be; cái gì thay đổi cho người dùng | Ảnh prototype |
| Business value | KPI chính + guardrail; công thức ROI | Nhãn nguồn từng số |
| Architecture | Một sơ đồ; ba driver; phương án bị loại | Decision record |
| AI | Bước nào AI, bước nào luật, vì sao | Kết quả spike |
| Feasibility | Phạm vi MVP; không làm; kế hoạch Vòng 2; rủi ro số một và cách giảm | Bảng Must prove |
| Responsible AI | Các kiểm soát sẽ xuất hiện trong sản phẩm | Phác thảo Decision Card |
| Assumptions and open questions | Bảng giả định; câu hỏi đã gửi BTC và trả lời | — |

### Checklist trước khi nộp Vòng 1

- [ ] Đúng định dạng, giới hạn trang, ngôn ngữ, tên file, kênh nộp theo email của BTC.
- [ ] Trang đầu trả lời: vấn đề gì, cho ai, giải pháp gì, giá trị bao nhiêu, vì sao làm được.
- [ ] Mỗi yêu cầu và ràng buộc trong case có trong ma trận truy vết; yêu cầu hoãn có lý do.
- [ ] Đổi tên khách hàng thì bài không còn đúng (đủ cụ thể).
- [ ] Có ít nhất một phương án không AI đã được cân nhắc và nêu lý do không chọn.
- [ ] Không số liệu nào thiếu nguồn hoặc nhãn giả định.
- [ ] Có một bằng chứng thật từ spike (ảnh, số đo).
- [ ] Có danh sách "không làm".
- [ ] Mỗi tiêu chí chấm chính thức được trả lời ở một chỗ dễ tìm.
- [ ] Không có đoạn văn nào mà cả ba người đều không giải thích được.
- [ ] Một người ngoài đội đã đọc thử.
- [ ] AI Journal có các mục của Vòng 1.
- [ ] Nộp trước hạn nội bộ; có ảnh chụp xác nhận nộp.

## ROUND 2 — BUILD (02/11–09/11) · Goal: Prove that the idea is real

### Lịch 7 ngày

| Ngày | P1 | P2 | P3 | Cuối ngày |
|---|---|---|---|---|
| T2 02/11 | Đọc kết quả và yêu cầu Vòng 2; cập nhật phạm vi; bắt đầu gold cases | Chốt Data and API Contract; schema đầu ra AI | Khung app đã deploy; dữ liệu seed; mock theo schema | URL chạy được (dù trống) |
| T3 03/11 | Gold cases 20 ca; nội dung giao diện | Luồng AI v1 sau gateway; kiểm tra tất định | Màn hình hàng đợi và chi tiết trên mock | Luồng AI chạy bằng script |
| T4 04/11 | Gold cases 30–40 ca (có ca do người khác viết) | Bộ ca thử chạy tự động; số đo đầu tiên | Nối giao diện với luồng AI thật; Decision Card | **Luồng end-to-end chạy lần đầu** |
| T5 05/11 | Kịch bản demo v1; số liệu KPI | Che dữ liệu cá nhân; ca injection; mức tin cậy | Phê duyệt, audit, adapter giả lập có nhãn | Demo nội bộ tối đầu tiên |
| T6 06/11 | ROI với số đo thật; README "chấm trong 5 phút" | Công tắc tắt AI; baseline luật; bảng so sánh | Dashboard KPI + chi phí; ca biên | Đủ nhóm Must prove |
| T7 07/11 | Red Team; AI Journal gom | Rà soát bảo mật; decision log hoàn chỉnh | **Đóng băng tính năng.** Trạng thái rỗng / lỗi; script reset | Bản ứng viên nộp |
| CN 08/11 | Video 3 phút; tài liệu | Chạy lại bộ ca thử; ghi số cuối | Chạy đường demo 5 lần; kiểm tra từ máy khác, ẩn danh; **nộp** | Đã nộp |
| T2 09/11 | Dự phòng | Dự phòng | Dự phòng | — |

### Development strategy
- Deploy ngày đầu; tích hợp mỗi ngày; nhánh chính luôn chạy được.
- Giao diện build trên mock đúng schema để không chờ luồng AI.
- Commit nhỏ, có ý nghĩa; lịch sử commit là bằng chứng quá trình.
- Không thêm công nghệ đội chưa dùng trong tuần này.

### MVP scope
Theo Mục 10: một persona, một loại đầu vào, một loại quyết định, luồng trọn vẹn.

### Architecture
- Một ứng dụng triển khai được, chia module rõ: tiếp nhận / xử lý AI / quy tắc / phê duyệt / audit / báo cáo.
- Một cơ sở dữ liệu quan hệ. Tìm kiếm theo ngữ nghĩa, nếu cần, dùng phần mở rộng vector của chính cơ sở dữ liệu đó.
- Gateway cho mọi lời gọi model; prompt là file có phiên bản; đầu ra theo schema có kiểm tra.
- Adapter cho hệ thống ngoài (giả lập, có nhãn).
- Cấu hình cho quy tắc, danh mục, ngưỡng.

### AI pipeline
```
Input → validate → mask PII → [retrieve context] → LLM (structured output)
      → schema check → rule checks → confidence signals → Decision Card
      → human approve / edit / reject → action → audit → feedback to test set
```

### Testing
| Lớp | Nội dung | Khi chạy |
|---|---|---|
| Unit | Quy tắc nghiệp vụ, che dữ liệu, kiểm tra schema | Mỗi lần push |
| AI test set | 30–40 gold cases; độ chính xác; tỷ lệ không có căn cứ; độ chính xác theo mức tin cậy; ca injection | Mỗi lần đổi prompt hoặc model |
| End-to-end | Kịch bản đường demo | Trước mỗi lần deploy |
| Thủ công | 3 người ngoài đội dùng thử không hướng dẫn | Ngày 5–6 |

### Deployment
- Nền tảng quen thuộc với đội; một lệnh hoặc một lần push là deploy.
- Bản dự phòng ở nền tảng thứ hai hoặc bản cục bộ.
- Tài khoản demo và dữ liệu seed sẵn; không cần đăng ký.
- Biến môi trường ở server; trần chi phí cho khóa API.

### Checklist trước khi nộp Vòng 2

- [ ] Đúng mọi thứ BTC yêu cầu nộp (định dạng [UNKNOWN] cho đến khi có email).
- [ ] URL mở được từ cửa sổ ẩn danh, mạng khác, máy khác.
- [ ] Đường demo chạy 5 lần liên tiếp không lỗi.
- [ ] README: mục đích một câu; cách chấm trong 5 phút; tài khoản demo; cái gì thật / giả lập / chưa làm; kiến trúc; cách chạy; số đo AI; thư viện mã nguồn mở và giấy phép; phần nào do đội phát triển [FACT S2 yêu cầu nêu rõ].
- [ ] Bộ ca thử AI có kết quả ghi trong repo.
- [ ] Không có khóa bí mật trong repo hoặc trong mã phía trình duyệt (quét cả lịch sử).
- [ ] Không có dữ liệu cá nhân thật.
- [ ] Phần giả lập có nhãn trên giao diện.
- [ ] Video dự phòng 3 phút.
- [ ] Decision log 6–10 mục.
- [ ] AI Journal đầy đủ, đã ánh xạ sang mẫu của BTC, có trang tổng hợp.
- [ ] Cả ba người explain-back được mọi module.
- [ ] Nộp trước hạn nội bộ; lưu xác nhận.

## ROUND 3 — DELIVER (16/11–21/11) · Goal: Make judges remember us as the winner

### Lịch 6 ngày

| Ngày | Việc chính |
|---|---|
| T2 16/11 | Nhận kết quả, yêu cầu Vòng 3 và change request (thời điểm chính xác [UNKNOWN]). Chạy quy trình Mục 11: hiểu → đánh giá tác động → phương án → khuyến nghị. Gửi câu hỏi làm rõ |
| T3 17/11 | Hiện thực change request trên nhánh riêng; thêm ca thử; hồi quy |
| T4 18/11 | Merge; đóng băng tính năng; cập nhật kịch bản demo và slide 11; pitch v1 |
| T5 19/11 | Tập 1 và 2 có bấm giờ; Q&A 30 câu; sửa slide; chuẩn bị thư mục bằng chứng |
| T6 20/11 | Tập 3 trước người ngoài; tổng duyệt kỹ thuật (thiết bị, mạng, dự phòng); **không sửa code** sau 18:00 |
| T7 21/11 | Chung kết. Đến sớm; thử thiết bị; reset dữ liệu; mở sẵn các tab bằng chứng |

### Change request strategy
Mục 11. Sản phẩm: Change Impact Assessment một trang; bản hiện thực; kết quả hồi quy; một nhịp trong demo; slide 11.

### Final polish
Chỉ trên đường demo: chữ, trạng thái, tốc độ, dữ liệu seed hợp lý. Không tính năng mới ngoài change request.

### Demo
Bản 3 phút trong pitch; sẵn sàng bản 5 và 8 phút nếu được thêm thời gian (Mục 12).

### Pitch
Mục 13. Khi biết thời lượng chính thức, cắt theo bản 7 hoặc 9 phút.

### Q&A
Mục 14. Phân công người trả lời theo lĩnh vực; bảng "câu hỏi → tab bằng chứng".

### Backup plan

| Hạng mục | Chính | Dự phòng 1 | Dự phòng 2 |
|---|---|---|---|
| Ứng dụng | Bản deploy chính | Bản deploy thứ hai | Chạy cục bộ |
| Model | Nhà cung cấp chính | Model dự phòng qua gateway | Chế độ phát lại có nhãn |
| Mạng | Mạng hội trường | Điểm phát sóng di động A | Điểm phát sóng di động B |
| Thiết bị | Laptop 1 | Laptop 2 đã đăng nhập sẵn | — |
| Slide | Bản trình chiếu | PDF | PDF trên USB và trên điện thoại |
| Demo | Trực tiếp | Video 3 phút | Ảnh chụp trong phụ lục |
| Người | Người nói chính | Mỗi phần có người thứ hai đã tập | — |

### Failure recovery
- Quy tắc 10 giây: lỗi không tự hết sau 10 giây thì chuyển phương án, không sửa trực tiếp trước giám khảo.
- Một người được chỉ định trước là người quyết định chuyển phương án.
- Nói thật điều đang xảy ra trong một câu, rồi tiếp tục câu chuyện.
- Nếu bị hỏi về sự cố: giải thích nguyên nhân có thể, và chỉ ra thiết kế dự phòng của sản phẩm cho đúng tình huống đó (model lỗi → chế độ thủ công). Sự cố trở thành minh họa.
- Nếu một thành viên vắng: hai người còn lại đã tập phần của người đó.


