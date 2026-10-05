# 3. CHAMPION DNA

Bảng dưới là **[INFERENCE]**. Cột "Champion" mô tả hành vi quan sát được, không phải tính từ.

## 3.1 Business

| Yếu tố | Good | Great | Champion |
|---|---|---|---|
| Problem framing | Nêu đúng vấn đề | Tách triệu chứng và nguyên nhân gốc | Một câu problem statement mà khách hàng sẽ gật đầu, kèm insight khiến người đọc nghĩ lại |
| Customer understanding | Có persona | Có luồng công việc hiện tại | Tách người mua, người dùng, người bị ảnh hưởng; biết mỗi bên sợ gì |
| Business value | "Tiết kiệm thời gian" | KPI có mục tiêu | Một KPI chính, một KPI chặn (guardrail), số đo từ MVP |
| ROI | Ước tính | Công thức + giả định | Thêm độ nhạy ("giảm một nửa giả định vẫn hoàn vốn trong X tháng") và chi phí thay đổi |
| Feasibility | "Làm được" | Kế hoạch theo tuần | Đã spike phần rủi ro nhất; có kế hoạch pilot và cổng quyết định |
| Scalability | "Mở rộng được" | Lộ trình | Chỉ ra thứ gì hỏng trước khi tải tăng, và mở rộng sang đơn vị khác bằng cấu hình chứ không bằng code |

## 3.2 Product

| Yếu tố | Good | Great | Champion |
|---|---|---|---|
| UX | Sạch | Đúng luồng công việc | Ít bước hơn cách làm hiện tại, đếm được |
| User journey | Có sơ đồ | Trước/sau | Demo đi đúng journey đó, từng bước |
| Core workflow | Chạy được | Chạy trọn | Chạy trọn kể cả khi AI không chắc hoặc sai |
| MVP scope | Nhiều tính năng | Ít tính năng | Một luồng, có danh sách "không làm" kèm lý do |
| Differentiation | "Dùng AI" | Tính năng riêng | Khác biệt nằm ở độ tin cậy và bằng chứng |

## 3.3 Technology

| Yếu tố | Good | Great | Champion |
|---|---|---|---|
| Architecture | Vẽ được | Hợp lý | Xuất phát từ 3 driver của case; mỗi khối có lý do; đơn giản nhất mà đủ |
| AI | Gọi được model | Prompt có cấu trúc | Đầu ra theo schema, có kiểm tra, có bộ ca thử, đổi model bằng cấu hình |
| Data | Dữ liệu mẫu | Dữ liệu giống thật | Dữ liệu tổng hợp có cả ca bẩn, ghi rõ là tổng hợp, có kế hoạch đo lại trên dữ liệu thật |
| Security | Có đăng nhập | Phân quyền | Che dữ liệu cá nhân trước khi gọi model, khóa ở server, chống prompt injection có ca thử |
| Reliability | Thường chạy | Có xử lý lỗi | Model lỗi thì chuyển model dự phòng rồi chuyển chế độ thủ công |
| Cost | "Rẻ" | Ước tính | Đo chi phí mỗi ca từ log, hiện trên dashboard |
| Scalability | "Dùng cloud" | Có kế hoạch | Biết nút thắt theo thứ tự; không xây sớm |
| Explainability | Có lý do | Có nguồn | Bấm vào khuyến nghị thấy đúng đoạn văn bản gốc làm căn cứ |

## 3.4 Consulting

| Yếu tố | Good | Great | Champion |
|---|---|---|---|
| Requirement analysis | Liệt kê | Phân loại chức năng / phi chức năng | Ma trận truy vết: câu trong case → yêu cầu → tính năng → test → bước demo |
| Assumption management | Có vài giả định | Bảng giả định | Mỗi giả định có cách kiểm chứng và phương án nếu sai; đã hỏi BTC những gì hỏi được |
| Trade-off analysis | Nêu lựa chọn | So sánh | Decision log: bối cảnh, phương án, lý do, hệ quả chấp nhận |
| Risk management | Danh sách | Có mức độ | Rủi ro số một đã được giảm bằng hành động thật trước khi thuyết trình |
| Stakeholder communication | Rõ | Theo đối tượng | Executive summary một trang; README cho người chấm; trả lời ngắn, có cấu trúc |
| Change management | Làm theo | Ước lượng | Đánh giá tác động, phương án, khuyến nghị, hồi quy |

## 3.5 AI

| Yếu tố | Good | Great | Champion |
|---|---|---|---|
| Responsible AI | Slide nguyên tắc | Vài kiểm soát | Lớp kiểm soát hiện trong sản phẩm (Mục 7) |
| Human-in-the-loop | Có nút duyệt | Duyệt theo rủi ro | Người duyệt thấy bằng chứng trước, sửa được, lý do bác được lưu và dùng lại |
| Validation | Thử tay | Có test | Bộ ca thử chạy tự động, kết quả theo phiên bản prompt |
| Hallucination control | "Prompt cẩn thận" | Có nguồn | Chỉ trả lời từ ngữ cảnh, bắt buộc trích dẫn, không có căn cứ thì từ chối; đo tỷ lệ |
| Privacy | Không lưu | Che dữ liệu | Tối thiểu hóa + che + chọn nhà cung cấp + phương án tự vận hành model |
| Explainability | Giải thích bằng lời | Hiện nguồn | Hiện nguồn, quy tắc nào đã kiểm, cái gì chưa kiểm |
| AI usage transparency | Kể tên công cụ | Có journal | Journal có số: bao nhiêu mục, bao nhiêu bị bác, AI sai ở đâu |

## 3.6 Presentation

| Yếu tố | Good | Great | Champion |
|---|---|---|---|
| Storytelling | Có cấu trúc | Có nhân vật | Một người dùng có tên, một ngày làm việc, một con số thay đổi |
| Demo | Chạy | Có kịch bản | Có trước/sau, ca biên, số đo, dự phòng |
| Business narrative | Có slide giá trị | Có ROI | Mọi phần kỹ thuật được nối về kết quả kinh doanh |
| Technical defense | Trả lời được | Có lý do | Mở bằng chứng; nói ra giới hạn trước khi bị hỏi |
| Q&A | Không lúng túng | Ngắn, đúng | Cấu trúc 3 nhịp: trả lời thẳng → bằng chứng → giới hạn và bước tiếp |

## 3.7 Điều gì thật sự tạo khác biệt Good → Great → Champion

- **Good → Great: kỷ luật phạm vi.** Đội Good làm nhiều thứ; đội Great chọn một luồng và làm trọn.
- **Great → Champion: bằng chứng và sự trung thực.** Đội Great *nói* rằng giải pháp tốt. Đội Champion *cho xem*: số đo, log, quyết định bị loại, giới hạn đã biết. Điều này tạo ra niềm tin, và niềm tin là thứ một công ty tư vấn mua.

Nếu chỉ được chọn ba thứ để đầu tư vượt mức:
1. **Ma trận truy vết yêu cầu** — chứng minh hiểu bài toán.
2. **Bộ ca thử AI có số đo** — chứng minh AI có giá trị và có kiểm soát.
3. **Bản xử lý change request theo kiểu consultant** — chứng minh đây là đội tư vấn chứ không phải đội code.


