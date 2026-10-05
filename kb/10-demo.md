# 12. DEMO STRATEGY

## 12.1 WOW Moment Engine

Một khoảnh khắc đáng nhớ là lúc giám khảo **tự thấy** điều gì đó mà họ đang nghi ngờ. Không hiệu ứng, không hoạt họa.

| | Khoảnh khắc | Điều giám khảo đang nghi | Cách tạo |
|---|---|---|---|
| **WOW #1** — 30 giây đầu | Vấn đề của khách hàng, bằng chính dữ liệu bẩn của họ | "Đội này có hiểu khách hàng không?" | Mở bằng một input thật-như-thật lấy từ bối cảnh case (một email lộn xộn, một hồ sơ thiếu) và một con số từ case: "Hôm nay việc này mất [X] phút mỗi ca, [N] ca mỗi ngày. Xem nhé." Vào demo trước giây thứ 30 |
| **WOW #2** — luồng chính | Một input đi hết quy trình trong dưới 60 giây | "Cái này chạy thật hay là hình?" | Các chặng hiện rõ: trích xuất → kiểm tra → khuyến nghị có căn cứ được tô sáng trong tài liệu gốc → duyệt → hành động được thực thi → bộ đếm KPI nhảy |
| **WOW #3** — chứng minh AI có giá trị | Bảng so sánh trên cùng bộ ca thử: không AI và có AI | "AI có cần không hay để cho oai?" | Màn hình đánh giá: [N] ca, tỷ lệ đúng của baseline luật so với có AI, thời gian mỗi ca, chi phí mỗi ca. Bật công tắc tắt AI: sản phẩm vẫn chạy thủ công, chỉ chậm hơn |
| **WOW #4** — ca biên | Hệ thống biết lúc nào nó không biết | "Nếu AI sai thì sao?" | Đưa vào một tài liệu có câu lệnh cài cắm, hoặc một ca thiếu dữ liệu. Hệ thống không làm theo, gắn cờ, hạ mức tin cậy, chuyển cho người, ghi audit |
| **WOW #5** — câu hỏi khó | Trả lời bằng cách mở bằng chứng | "Họ có thật sự sở hữu bài này không?" | Mời giám khảo đưa một input bất kỳ. Khi bị hỏi, mở đúng thứ cần: dòng audit của ca vừa demo, decision record, mục AI Journal "AI đề xuất, chúng tôi bác", diff của change request |

**Điều kiện để WOW #5 thành công:** một thư mục "evidence" mở sẵn trong các tab, có đánh số, mỗi người biết tab nào trả lời câu nào.

## 12.2 Cấu trúc kể chuyện

`Before → Trigger → AI → Decision → Human → Action → Result → Proof`

Quy tắc trình diễn:
- Một nhân vật có tên và vai trò lấy từ case.
- Một người nói, một người bấm. Người nói không nhìn màn hình.
- Mỗi lần bấm đi kèm một câu về giá trị, không mô tả giao diện.
- Dữ liệu demo được reset trước mỗi lần chạy.
- Không gõ dài trực tiếp; input chuẩn bị sẵn, trừ lúc mời giám khảo thử.

## 12.3 Demo 3 phút (bản lõi, dùng trong pitch)

| Thời gian | Nhịp | Trên màn hình | Câu nói (tiếng Anh, điền chỗ trống) |
|---|---|---|---|
| 0:00–0:20 | Before | Input bẩn + cách làm hiện tại | "This is [Lan], a [role] at [client]. She gets [N] of these a day. Each takes about [X] minutes of reading and retyping." |
| 0:20–0:35 | Trigger | Kéo thả input vào hệ thống | "Same request, into our system." |
| 0:35–1:05 | AI | Các chặng xử lý; dữ liệu trích được; kiểm tra quy tắc | "It extracts the facts, checks them against [client]'s rules — plain code, not AI — and flags one missing field." |
| 1:05–1:35 | Decision | Decision Card: khuyến nghị, căn cứ tô sáng, mức tin cậy | "The recommendation comes with the exact sentence it relies on, and a confidence level based on checks we can verify." |
| 1:35–1:55 | Human | Lan sửa một trường, bấm duyệt | "Lan stays in charge. She corrects one field and approves. Her correction becomes a new test case." |
| 1:55–2:15 | Action | Hành động được thực thi (adapter giả lập, có nhãn) + dòng audit | "The system executes and records who decided, on what evidence. The integration is simulated here — labelled as such." |
| 2:15–2:40 | Result | Đồng hồ: thời gian ca này so với baseline | "That took [Y] seconds instead of [X] minutes." |
| 2:40–3:00 | Proof | Màn hình đánh giá: [N] ca thử, độ chính xác, chi phí mỗi ca | "And it's not one lucky case: across [N] test cases we wrote by hand, [a]% correct, at [c] per case." |

## 12.4 Demo 5 phút

Bản 3 phút, cộng:

| Thêm | Thời lượng | Nội dung |
|---|---|---|
| Ca biên (WOW #4) | 60 giây | Tài liệu có câu lệnh cài cắm hoặc ca thiếu dữ liệu → gắn cờ, chuyển người, audit |
| So sánh có và không AI (WOW #3) | 40 giây | Bật công tắc tắt AI; bảng baseline so với AI |
| Góc nhìn người quản lý | 20 giây | Dashboard: tồn đọng, thời gian xử lý, tỷ lệ sửa, chi phí |

## 12.5 Demo 8 phút

Bản 5 phút, cộng:

| Thêm | Thời lượng | Nội dung |
|---|---|---|
| Change request | 75 giây | Trước và sau; cái gì đổi (cấu hình, một bước); test hồi quy pass |
| "Xem nội dung gửi cho model" | 30 giây | Bản đã che dữ liệu cá nhân |
| Đổi model qua gateway | 30 giây | Đổi cấu hình, chạy lại bộ ca thử, số đo thay đổi ra sao |
| Giám khảo tự nhập | 45 giây | "Give us any input." |

## 12.6 Dự phòng và phục hồi khi lỗi

| Sự cố | Phương án |
|---|---|
| Mạng yếu hoặc mất | Bản chạy cục bộ trên laptop; điểm phát sóng di động của hai nhà mạng |
| Nhà cung cấp model lỗi hoặc chậm | Model dự phòng qua gateway; chế độ phát lại kết quả đã lưu, **có nhãn "replay"** và nói rõ với giám khảo |
| Bản deploy lỗi | Bản deploy thứ hai ở nền tảng khác; bản cục bộ |
| Dữ liệu demo bị bẩn | Script reset một lệnh |
| Mọi thứ hỏng | Video 3 phút quay sẵn + chạy trực tiếp phần còn chạy được |
| Máy chiếu hoặc chia sẻ màn hình trục trặc | Laptop thứ hai đã đăng nhập; file slide dạng PDF; thử thiết bị trước |
| Thi online | Người thứ hai sẵn sàng chia sẻ màn hình; tắt thông báo; kiểm tra âm thanh |

Câu nói khi lỗi: *"The live call is slow, so I'm switching to our recorded run of the same case — you can ask us to run any input live afterwards."* Nói thật, chuyển nhanh, không xin lỗi nhiều lần.


