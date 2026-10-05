# 5. WINNING SOLUTION PATTERNS

Toàn bộ điểm số trong mục này là **[INFERENCE]**: đánh giá của đội về mức phù hợp với format "IT Consultant + AI + MVP + bài toán kinh doanh thật". Điểm không thay thế được việc khớp với case.

## 5.1 Pattern selector — chọn theo nút thắt của case

| Nếu nút thắt trong case là… | Hình dạng giải pháp nên xét |
|---|---|
| Yêu cầu đến nhiều, phân loại và phân công chậm | Intelligent Triage; Conversational Intake |
| Thông tin nằm trong tài liệu, phải gõ lại bằng tay | Document Intelligence |
| Kiến thức rải rác, nhân viên mất thời gian tìm | Grounded Knowledge Assistant; Role Copilot |
| Quyết định không nhất quán giữa người với người | AI Decision Support; Policy Checker |
| Nhiều bước lặp lại nối giữa các hệ thống | Human-in-the-loop Workflow Automation |
| Phát hiện vấn đề quá trễ | Risk and Anomaly Detection |
| Lập kế hoạch và phân bổ nguồn lực kém | Predictive and What-if Planning |
| Ghép cung với cầu, người với việc | Recommendation and Matching |
| Lãnh đạo không nhìn thấy vận hành | Operations Insight Layer |

Nếu không dòng nào khớp, **đừng ép**. Quay lại bước ROOT CAUSE.

## 5.2 Mười ba pattern — bài toán và rủi ro

| # | Pattern | Problem it solves | When to use | Why judges like it | Why it could fail |
|---|---|---|---|---|---|
| 1 | Human-in-the-loop Workflow Automation | Quy trình nhiều bước thủ công; AI soạn, người duyệt, hệ thống thực thi | Case mô tả quy trình vận hành có khối lượng lớn | Giá trị đo được; kiểm soát AI lộ rõ; gần với công việc thật của công ty tư vấn | Phạm vi phình to; trông giống công cụ quản lý ca thông thường nếu thiếu insight |
| 2 | Intelligent Triage and Routing | Phân loại, xếp ưu tiên, chuyển đúng người | Có hàng đợi yêu cầu, ticket, hồ sơ | Dễ hiểu, dễ đo (thời gian phản hồi, tỷ lệ chuyển sai) | Thiếu dữ liệu mẫu đa dạng; phân loại sai mà không có lối sửa |
| 3 | Document Intelligence | Trích dữ liệu từ PDF, ảnh, email thành dữ liệu có cấu trúc đã kiểm tra | Case có biểu mẫu, hợp đồng, hóa đơn, hồ sơ | AI là cần thiết thật; trước/sau rất rõ | Tài liệu demo quá sạch; không có bước kiểm tra chéo |
| 4 | AI Decision Support | Khuyến nghị kèm căn cứ cho người ra quyết định | Quyết định lặp lại, có chính sách, có hậu quả | Thể hiện explainability và trách nhiệm | Khuyến nghị không có căn cứ; người dùng duyệt bừa |
| 5 | Policy and Compliance Checker | Đối chiếu hồ sơ với quy định; luật cứng kết hợp LLM | Có bộ quy tắc rõ, kiểm tra thủ công tốn công | Kết hợp luật và AI cho thấy phán đoán kỹ thuật | Bịa quy định; quy tắc mơ hồ |
| 6 | Risk and Anomaly Detection | Cảnh báo sớm kèm giải thích và hành động gợi ý | Có dữ liệu giao dịch hoặc vận hành theo thời gian | Giá trị phòng ngừa lớn | Thiếu dữ liệu thật; cảnh báo giả nhiều; khó demo "sự cố đã tránh được" |
| 7 | Conversational Intake to Structured Case | Hội thoại thu thập thông tin rồi tạo hồ sơ có cấu trúc | Người dân hoặc khách hàng phải điền biểu mẫu phức tạp | Chatbot có mục đích rõ, kết thúc bằng dữ liệu | Trượt thành chatbot chung chung |
| 8 | Role Copilot in Workflow | Trợ lý nằm trong màn hình làm việc: tóm tắt, soạn nháp, gợi ý bước tiếp | Nhân viên tri thức xử lý ca phức tạp | Trải nghiệm tốt, AI sát ngữ cảnh | Khó đo giá trị; dễ thành "nút tóm tắt" |
| 9 | Grounded Knowledge Assistant | Hỏi đáp có trích dẫn trên tài liệu nội bộ | Kiến thức rải rác, nhân viên mới nhiều | Dễ build | Rất nhiều đội sẽ làm; dễ bị xem là hàng phổ thông |
| 10 | Recommendation and Matching | Ghép người với việc, sản phẩm với khách | Case về phân bổ, gợi ý | Trực quan | Thiếu dữ liệu tương tác; khó chứng minh chất lượng |
| 11 | Operations Insight Layer | Hỏi dữ liệu bằng ngôn ngữ tự nhiên, dashboard có giải thích | Lãnh đạo thiếu tầm nhìn vận hành | Hợp với người mua | Truy vấn sai mà trông đúng; dễ thành dashboard thường |
| 12 | Predictive and What-if Planning | Dự báo nhu cầu, mô phỏng kịch bản | Case về tồn kho, lịch, nhân lực | Tư duy kinh doanh cao | Không có dữ liệu lịch sử thì dự báo vô nghĩa |
| 13 | AI Agent Workflow | Agent tự lên kế hoạch và gọi công cụ nhiều bước | Việc mở, nhiều nhánh, công cụ rõ | Thời thượng | Không ổn định khi demo; khó giải thích; khó kiểm soát; rủi ro bị coi là thêm AI để gây ấn tượng |

## 5.3 Mười ba pattern — chấm điểm

| # | Pattern | MVP complexity | Demo potential | Business impact | Responsible AI concerns | Technical complexity | Score /10 |
|---|---|---|---|---|---|---|---:|
| 1 | HITL Workflow Automation | Trung bình–cao | Rất cao | Cao | Duyệt bừa; hành động sai | Trung bình | 9.5 |
| 2 | Intelligent Triage | Thấp–trung bình | Cao | Cao | Ưu tiên thiếu công bằng | Thấp–trung bình | 9.0 |
| 3 | Document Intelligence | Trung bình | Rất cao | Cao | Trích sai lặng lẽ; dữ liệu cá nhân trong tài liệu; injection trong tài liệu | Trung bình | 9.0 |
| 4 | AI Decision Support | Trung bình | Cao | Cao | Thiên lệch; trách nhiệm; phụ thuộc AI | Trung bình | 9.0 |
| 5 | Policy and Compliance Checker | Trung bình | Cao | Cao | Bịa quy định; bỏ sót vi phạm | Trung bình | 8.5 |
| 6 | Risk and Anomaly Detection | Trung bình–cao | Trung bình | Cao | Gán nhãn oan; cảnh báo giả | Trung bình–cao | 8.0 |
| 7 | Conversational Intake | Trung bình | Cao | Trung bình–cao | Thu thập dữ liệu cá nhân; người yếu thế | Trung bình | 8.0 |
| 8 | Role Copilot | Trung bình | Trung bình–cao | Trung bình | Nội dung nháp sai được gửi đi | Trung bình | 7.5 |
| 9 | Grounded Knowledge Assistant | Thấp | Trung bình | Trung bình | Bịa; nguồn lỗi thời | Thấp | 7.0 |
| 10 | Recommendation and Matching | Trung bình | Trung bình | Trung bình | Thiên lệch; thiếu minh bạch | Trung bình | 7.0 |
| 11 | Operations Insight Layer | Trung bình | Trung bình | Trung bình | Số sai trông đáng tin | Trung bình | 7.0 |
| 12 | Predictive and What-if | Cao (cần dữ liệu) | Trung bình | Cao nếu có dữ liệu | Tin quá mức vào dự báo | Cao | 6.5 |
| 13 | AI Agent Workflow | Cao | Cao nhưng rủi ro | Chưa chắc | Hành động ngoài kiểm soát; khó audit | Cao | 6.0 |

**Nhận xét:** bốn pattern đứng đầu có chung ba đặc điểm: đầu vào phi cấu trúc (nên AI là cần), quyết định thuộc về con người (nên kiểm soát lộ rõ), kết quả đếm được (nên có KPI). Đó là công thức, không phải tên pattern.


# 6. TOP 5 CONCEPTS

Năm concept dưới là **hình dạng giải pháp**. Tên, người dùng, dữ liệu, KPI phải lấy từ case. Điểm là [INFERENCE] với giả định concept khớp case.

## Concept A — Decision Desk (từ yêu cầu đến quyết định có căn cứ)

Yêu cầu đi vào (email, biểu mẫu, tài liệu) → AI trích thông tin và phân loại → kiểm tra bằng luật → AI đưa khuyến nghị kèm đoạn văn bản làm căn cứ và mức tin cậy → người phụ trách duyệt, sửa hoặc bác → hệ thống thực thi và ghi audit → dashboard cập nhật KPI.
Ghép pattern 1 + 2 + 3 + 4.

## Concept B — Verified Document Pipeline

Tài liệu vào → trích xuất → đối chiếu với quy tắc và dữ liệu gốc → ca đạt đi thẳng, ca lệch vào hàng đợi ngoại lệ có đánh dấu ô nào đáng ngờ → người sửa → dữ liệu sạch xuất ra hệ thống đích.
Ghép pattern 3 + 5.

## Concept C — Grounded Expert Copilot

Trợ lý trong màn hình làm việc của nhân viên: trả lời theo tài liệu nội bộ có trích dẫn, soạn nháp phản hồi, từ chối khi không có căn cứ và chuyển cho chuyên gia; câu trả lời của chuyên gia quay lại làm giàu kho tri thức.
Ghép pattern 8 + 9.

## Concept D — Early-Warning Radar

Theo dõi dữ liệu vận hành → phát hiện dấu hiệu rủi ro → giải thích vì sao → đề xuất hành động → người quyết định → theo dõi kết quả để giảm cảnh báo giả.
Ghép pattern 6 + 4.

## Concept E — What-if Planner

Dự báo nhu cầu hoặc tải → người lập kế hoạch thử các kịch bản → hệ thống cho thấy đánh đổi → người chọn → kế hoạch được ghi kèm lý do.
Ghép pattern 12 + 11.

## 6.1 Bảng điểm

| Criteria | A Decision Desk | B Document Pipeline | C Expert Copilot | D Early-Warning | E What-if Planner |
|---|---:|---:|---:|---:|---:|
| Business value | 9 | 9 | 7 | 8.5 | 8 |
| Innovation | 7.5 | 7 | 6.5 | 8 | 8 |
| AI relevance | 9 | 9.5 | 8 | 8 | 6.5 |
| Feasibility | 8.5 | 9 | 9 | 7 | 6 |
| MVP feasibility | 8 | 9 | 9 | 6.5 | 6 |
| UX | 8.5 | 8 | 8.5 | 7.5 | 8 |
| Technical depth | 8.5 | 8.5 | 7 | 8.5 | 8.5 |
| Responsible AI | 9.5 | 9 | 8.5 | 8 | 7 |
| Demo wow factor | 9 | 9 | 7 | 7 | 7.5 |
| Scalability | 8.5 | 8.5 | 8 | 8 | 7.5 |
| Pitch potential | 9 | 8.5 | 7 | 8 | 8 |
| **Overall (trung bình)** | **8.6** | **8.6** | **7.8** | **7.7** | **7.4** |

## 6.2 TOP 1 — Most likely Champion: Concept A, Decision Desk

A và B hòa nhau về điểm trung bình. A được chọn vì nó hơn ở các tiêu chí nhiều khả năng nặng ký (giá trị kinh doanh, Responsible AI, pitch) và vì **B chính là lõi của A**: nếu thiếu thời gian, A thu gọn thành B mà không phải làm lại. B là phương án lùi, không phải phương án cạnh tranh.

Lý do chọn A, theo thứ tự quan trọng:

1. **Khớp với nhiều loại case nhất.** Hầu hết bài toán kinh doanh "lấy cảm hứng từ dự án thực tế" [FACT S1] của một công ty tư vấn đều có dạng: có thứ gì đó đi vào, ai đó phải quyết định, có việc phải làm sau đó. [INFERENCE]
2. **Gần với việc Netcompany bán.** Trang của họ mô tả nền tảng AMPLIO là "orchestrates process automation and case management" [S5]. [INFERENCE] Giám khảo từ công ty này hiểu ngay giá trị và cũng hiểu ngay chỗ nào là khó, nên độ sâu của đội sẽ được nhận ra.
3. **AI là cần thật.** Đầu vào phi cấu trúc là chỗ luật cứng thất bại; mọi bước còn lại dùng code thường. Câu "Why AI?" có câu trả lời đo được.
4. **Responsible AI nằm sẵn trong luồng.** Căn cứ, mức tin cậy, phê duyệt, audit là các bước của quy trình, không phải phần gắn thêm.
5. **Dễ đổi.** Luật, danh mục, mẫu nằm trong cấu hình, nên change request thường là đổi cấu hình hoặc thêm một bước.
6. **Demo tự nhiên là một câu chuyện** có trước, có sau, có con số.

**Điểm yếu thật của Concept A** (xem Red Team, Mục 15): độ sáng tạo ở mức 7.5, vì đây là hình dạng quen thuộc. Phải bù bằng một insight riêng của case và bằng độ sâu bằng chứng.

**Khi nào không chọn A:** khi case không có quy trình vận hành (ví dụ bài toán thuần phân tích dữ liệu hoặc lập kế hoạch). Khi đó dùng pattern selector ở 5.1. Chọn B khi case nói về tài liệu là chính; chọn D khi case nói về phát hiện trễ.


