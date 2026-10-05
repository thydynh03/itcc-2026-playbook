# 15. RED TEAM

Đối tượng bị tấn công: **Concept A — Decision Desk** ở dạng chưa có case. Khi có case, chạy lại toàn bộ vòng lặp này trên giải pháp thật. Toàn bộ mục là [INFERENCE].

## 15.1 Vòng 1 — tấn công bản v1

Bản v1: tiếp nhận nhiều kênh → trích xuất → phân loại → khuyến nghị → duyệt → thực thi → dashboard, cho hai persona.

| Vai | Đòn tấn công | Loại điểm yếu | Mức độ |
|---|---|---|---|
| Skeptical judge | "Đây là công cụ quản lý ca có gắn LLM. Đội nào cũng có cái này." | Thiếu khác biệt | Cao |
| CTO | "LLM nằm trên đường xử lý chính: chậm, không tất định, phụ thuộc một nhà cung cấp." | Kiến trúc | Cao |
| CFO | "ROI dựa trên số phút tiết kiệm do các bạn tự giả định. Chi phí đào tạo và thay đổi quy trình đâu?" | Giả định yếu | Cao |
| Security engineer | "Tài liệu tải lên là đường tấn công injection. Dữ liệu cá nhân đi ra nhà cung cấp bên ngoài. Đăng nhập là giả." | Lỗ hổng | Cao |
| End user | "Thêm một màn hình nữa. Khi AI sai tôi còn mất thời gian hơn." | UX | Trung bình |
| Competitor | "Chúng tôi làm thứ tương tự với nhiều tính năng hơn." | Cạnh tranh | Trung bình |
| Product manager | "Năm khối chức năng và hai persona trong 7 ngày với 3 người. Không cái nào sẽ xong." | Quá tải phạm vi | Cao |

### Sửa → bản v2

| Điểm yếu | Sửa |
|---|---|
| Thiếu khác biệt | Neo vào **một insight riêng của case** (slide 4). Khác biệt chuyển từ tính năng sang bằng chứng: bộ ca thử, so sánh có và không AI, audit |
| LLM trên đường chính | Xử lý không đồng bộ; gateway + model dự phòng; kiểm tra tất định sau AI; prompt có phiên bản; công tắc tắt AI |
| ROI yếu | Công thức minh bạch, nhãn nguồn cho từng số, phân tích độ nhạy, đưa chi phí thay đổi vào, đề xuất pilot có cổng |
| Bảo mật | Che dữ liệu cá nhân trước khi gọi model; nội dung tài liệu là dữ liệu không tin cậy; model không có công cụ; hành động cần người duyệt; nói thẳng đăng nhập là bản demo và nêu hướng dùng nhà cung cấp danh tính của khách hàng |
| UX | Điền sẵn thay vì thay thế; căn cứ hiện ngay bên cạnh; sửa trong một lần bấm; đếm số bước so với cách cũ |
| Cạnh tranh tính năng | Không chạy đua. Một luồng, làm sâu |
| Quá tải phạm vi | Một persona, một loại đầu vào, một loại quyết định. Dashboard thành trang số liệu sinh từ log |

## 15.2 Vòng 2 — tấn công bản v2

| Vai | Đòn tấn công | Loại điểm yếu | Mức độ |
|---|---|---|---|
| Skeptical judge | "Mức tin cậy Cao / Trung bình / Thấp là các bạn tự đặt ra." | Giá trị AI giả | Cao |
| CTO | "Bộ ca thử do chính các bạn viết, trên dữ liệu các bạn tự tạo, rồi tự chấm. Vòng tròn." | Phương pháp | Cao |
| CFO | "Nếu cái gì cũng cần người duyệt thì tiết kiệm ở đâu?" | Kinh doanh | Cao |
| End user | "Sau một tuần tôi sẽ bấm duyệt mà không đọc." | Con người | Trung bình |
| Security engineer | "Audit log nằm trong cùng cơ sở dữ liệu; ai có quyền ghi là sửa được." | Lỗ hổng | Thấp–trung bình |
| Product manager | "Demo phụ thuộc lời gọi model trực tiếp và mạng của hội trường." | Điểm hỏng của demo | Cao |
| Competitor | "Chúng tôi dùng agent tự động hoàn toàn, không cần người." | Cạnh tranh | Trung bình |

### Sửa → bản v3

| Điểm yếu | Sửa |
|---|---|
| Mức tin cậy tự đặt | Bảng **độ chính xác theo từng mức tin cậy** trên bộ ca thử. Nếu mức "Cao" không đúng nhiều hơn mức "Thấp" thì sửa cách tính hoặc bỏ |
| Bộ ca thử vòng tròn | Người viết ca thử khác người viết prompt; có tập giữ riêng không dùng khi tinh chỉnh; thêm ca đối kháng; nói rõ giới hạn "dữ liệu tổng hợp" trên slide |
| Duyệt mọi thứ | Duyệt theo mức rủi ro: ca rủi ro thấp và tin cậy cao được duyệt hàng loạt; lộ trình tự động hóa có cổng sau pilot. Cho thấy thời gian tiết kiệm **đã tính cả bước duyệt** |
| Duyệt bừa | Căn cứ hiện trước khuyến nghị; lý do bắt buộc cho ca rủi ro cao; lấy mẫu kiểm tra lại; theo dõi thời gian duyệt |
| Audit sửa được | Bảng chỉ ghi thêm, không có quyền cập nhật hay xóa ở tầng ứng dụng. Chuỗi băm là bước sau; ghi vào danh sách nợ kỹ thuật và nói thật |
| Demo phụ thuộc mạng | Bản cục bộ, model dự phòng, chế độ phát lại có nhãn, video (Mục 12.6) |
| Đối thủ tự động hoàn toàn | Không tranh luận về mức tự động. Hỏi ngược bằng bằng chứng: "ai chịu trách nhiệm khi nó sai, và các bạn đo nó sai bao nhiêu?" |

## 15.3 Vòng 3 — rủi ro còn lại sau v3

| Rủi ro còn lại | Vì sao không sửa hết được | Cách xử lý |
|---|---|---|
| Độ sáng tạo vừa phải | Hình dạng giải pháp là quen thuộc | Insight riêng của case + độ sâu. Chấp nhận không phải đội "lạ" nhất |
| Dữ liệu tổng hợp | Không có dữ liệu thật của khách hàng | Nói rõ; pilot chế độ bóng là bước đầu tiên |
| Chưa có người dùng thật | Không tiếp cận được | Thử với 3–5 người đóng vai; ghi lại thay đổi sau khi thử |
| Đăng nhập bản demo | Không đáng thời gian | Nói rõ; nêu hướng sản xuất |
| Bộ ca thử nhỏ (30–40 ca) | Thời gian | Nói con số thật và khoảng không chắc chắn; không tuyên bố quá |

**Tiêu chí dừng:** không còn điểm yếu mức Cao nào mà đội chưa có hoặc bản sửa, hoặc câu trả lời trung thực kèm bước tiếp theo.

## 15.4 Prompt Red Team dùng lại được

```text
You are a red team of seven people reviewing our solution for a
consulting competition: a skeptical judge, a CTO, a CFO, a security
engineer, an end user, a competitor and a product manager.

<solution>[paste proposal / README / architecture / demo script]</solution>
<case>[paste case]</case>

For each persona give the 3 strongest attacks. For each attack state:
- the exact claim or design choice you are attacking (quote it)
- the type: weak assumption | fake AI value | overengineering |
  security hole | UX problem | cost problem | scalability problem |
  business problem | demo failure point
- severity: High / Medium / Low, with the reason
- what evidence would make you withdraw the attack

Then rank all attacks and list the top 5 that would most likely cost us
the competition. Do not propose fixes. Do not soften. If a claim has no
evidence in the material, say "unsupported".
```

Đội tự quyết định cách sửa. Sau khi sửa, chạy lại. Ghi cả hai lần vào AI Journal.


