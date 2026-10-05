# 7. RESPONSIBLE AI

BTC gọi tên "ứng dụng AI có trách nhiệm" ngay trên trang chủ [FACT S1]. Nguyên tắc của đội: **Responsible AI là tính năng nhìn thấy được, không phải slide.**

## 7.1 Decision Card — thành phần giao diện mang toàn bộ lớp kiểm soát

Mọi đầu ra của AI trong sản phẩm hiện dưới một dạng thẻ thống nhất:

```
┌──────────────────────────────────────────────────────────────┐
│ ĐỀ XUẤT CỦA AI   [nhãn: AI-generated]        Audit ID #A-0142 │
│ Khuyến nghị: ...                                              │
│ Căn cứ:  "…đoạn trích nguyên văn…"  → mở tài liệu gốc, tô sáng │
│ Mức tin cậy: TRUNG BÌNH                                        │
│   ✓ 4/5 quy tắc kiểm tra đạt   ✗ thiếu trường "ngày hiệu lực"  │
│   ✓ hai lần chạy cho cùng kết quả                              │
│ Chưa kiểm tra được: ...                                        │
│ [ Duyệt ]  [ Sửa rồi duyệt ]  [ Bác — chọn lý do ]             │
└──────────────────────────────────────────────────────────────┘
```

Một thẻ này trả lời năm câu hỏi của giám khảo cùng lúc: AI nói gì, dựa vào đâu, chắc cỡ nào, ai quyết, có lưu vết không.

**Lưu ý kỹ thuật quan trọng:** con số "confidence" do chính model tự báo không đáng tin. Mức tin cậy phải được tính từ tín hiệu kiểm chứng được: số quy tắc kiểm tra đạt, mức phủ của tài liệu truy xuất, độ nhất quán giữa hai lần chạy, đầu ra có đúng schema không. Hiển thị ba mức Cao / Trung bình / Thấp kèm lý do, và đo độ chính xác theo từng mức trên bộ ca thử để chứng minh mức "Cao" thật sự đúng nhiều hơn.

## 7.2 Responsible AI Layer — 13 kiểm soát

| Kiểm soát | Cách làm ở mức MVP | Xuất hiện ở đâu trong demo | Bằng chứng để mở khi bị hỏi |
|---|---|---|---|
| Input validation | Kiểm tra loại file, kích thước, trường bắt buộc, ngôn ngữ; từ chối sớm | Tải một file sai định dạng → thông báo rõ | Unit test |
| Data privacy | Chỉ gửi cho model các trường cần thiết; dữ liệu demo là dữ liệu tổng hợp, ghi rõ | Nhãn "Synthetic data" trên giao diện | Sơ đồ luồng dữ liệu một trang |
| PII protection | Che tên, số giấy tờ, số điện thoại, email trước khi gọi model; khôi phục sau | Nút "xem nội dung đã gửi cho model" hiện bản đã che | Test che dữ liệu |
| Prompt injection protection | Nội dung tài liệu được coi là dữ liệu, đặt trong vùng phân cách; model không có công cụ thực thi; đầu ra buộc theo schema; hành động cần người duyệt | Ca biên: tài liệu chứa câu "ignore previous instructions…" → hệ thống gắn cờ | Bộ tài liệu tấn công thử và kết quả |
| Hallucination mitigation | Chỉ được trả lời từ ngữ cảnh; câu không có trích dẫn bị loại; không có căn cứ thì trả "không đủ thông tin" | Hỏi một câu ngoài phạm vi → hệ thống từ chối và chuyển cho người | Tỷ lệ câu không có căn cứ trên bộ ca thử |
| Grounded generation | Truy xuất tài liệu → trích dẫn bắt buộc → hiển thị đoạn gốc | Bấm vào căn cứ, tài liệu mở đúng chỗ, có tô sáng | Log truy xuất |
| Confidence score | Tính từ tín hiệu kiểm chứng được (7.1) | Thẻ hiện mức tin cậy kèm lý do | Bảng độ chính xác theo mức tin cậy |
| Human approval | Mọi hành động làm thay đổi trạng thái, tiền hoặc thông tin gửi ra ngoài đều cần người duyệt | Bước Human trong demo | Cấu hình quy tắc phê duyệt theo mức rủi ro |
| Audit log | Bảng chỉ ghi thêm: đầu vào, phiên bản prompt, model, đầu ra, người duyệt, thời điểm, thay đổi | Mở audit của chính ca vừa demo | Truy vấn bảng audit |
| Explainability | Căn cứ + quy tắc nào đạt, quy tắc nào không + cái gì chưa kiểm | Thẻ Decision Card | — |
| Fallback | Hết thời gian chờ → thử lại → model dự phòng → chế độ thủ công; quy trình không bao giờ kẹt vì AI | Bật công tắc "AI off" → ca vẫn xử lý được bằng tay | Test tắt AI |
| Monitoring | Dashboard: số ca, tỷ lệ duyệt / sửa / bác, độ trễ, lỗi | Màn hình cuối demo | Log |
| Cost control | Giới hạn token mỗi yêu cầu; cache; model nhỏ cho phân loại, model lớn cho suy luận; trần chi phí theo ngày | Dashboard hiện chi phí mỗi ca | Công thức và số đo từ log |

## 7.3 Bốn chi tiết ít đội làm

1. **Model thay được bằng cấu hình.** Mọi lời gọi đi qua một lớp gateway. [INFERENCE] Netcompany nhấn mạnh chủ quyền dữ liệu ("Sovereign and secure agentic AI", "Stay independent" [S5]), nên khả năng nói "khách hàng yêu cầu dữ liệu không rời hạ tầng của họ thì chúng tôi đổi sang model tự vận hành, bộ ca thử cho biết chất lượng thay đổi bao nhiêu" là một điểm cộng rẻ.
2. **Lý do bác bỏ là dữ liệu.** Mỗi lần người dùng bác hoặc sửa, lý do được lưu và trở thành ca thử mới.
3. **Chống duyệt bừa.** Hiện căn cứ trước khi hiện khuyến nghị; ca rủi ro cao bắt buộc nhập lý do; theo dõi thời gian duyệt (duyệt trong 2 giây là tín hiệu xấu); lấy mẫu ngẫu nhiên để kiểm tra lại.
4. **Kiểm tra công bằng bằng cặp ca thử.** Hai ca giống nhau, chỉ khác tên hoặc giới tính; kết quả phải giống nhau.

## 7.4 Không được làm

- Không dùng dữ liệu cá nhân thật của bất kỳ ai trong demo.
- Không gắn cứng kết quả AI rồi trình bày như chạy thật.
- Không để khóa API trong mã phía trình duyệt hoặc trong repo.
- Không tuyên bố "chính xác 99%" nếu không có bộ ca thử đứng sau.


