# 21. PREPARATION ROADMAP

Hôm nay là thứ Hai 05/10/2026. Còn 13 ngày đến hạn đăng ký, 14 ngày đến khi nhận case.

## 21.1 Theo giai đoạn

### Từ nay → 18/10 — Chuẩn bị

| | |
|---|---|
| **Việc đầu tiên** | **Đăng ký đội** trước hết ngày 18/10 [FACT S1]. Mỗi người một email hợp lệ, kiểm tra hằng ngày [FACT S2]. Gửi email hỏi BTC về thành phần có sẵn (21.3) |
| What to learn | Phân tích yêu cầu (chức năng / phi chức năng), 5 Whys, viết problem statement; structured output và kiểm tra schema; cách xây bộ ca thử cho LLM; prompt injection cơ bản; che dữ liệu cá nhân; viết decision record; thuyết trình tiếng Anh ngắn gọn |
| What to prepare | Phân vai P1 / P2 / P3; kênh làm việc, repo, bảng việc; thống nhất stack; lịch rảnh thật của từng người cho 3 vòng |
| What to build beforehand | Starter Kit (21.2), chỉ phần tổng quát, **sau khi** có trả lời của BTC cho phần mã tự viết |
| What templates to prepare | Problem Brief; ma trận truy vết; bảng giả định; decision record; AI Journal; Change Impact Assessment; khung proposal 1 trang / 5 trang / 10 slide; khung pitch 13 slide; kịch bản demo; README người chấm; sổ rủi ro; bảng tự chấm |
| What prompts to prepare | Case Breakdown Engine (4.3); Red Team (15.4); Judge Agent; Research; Architect; QA; Security; Responsible AI; Pitch critique |
| What tools to prepare | Tài khoản và hạn mức cho công cụ AI; nền tảng deploy; công cụ vẽ sơ đồ; quay màn hình; đồng hồ bấm giờ; hai điểm phát sóng di động |
| What team rituals to establish | Họp đứng 15 phút; decision log; explain-back; luyện chéo hằng tuần |
| What mock competitions to run | **Mock 1 (cuối tuần 10–11/10):** một case công khai bất kỳ, 4 giờ, theo checklist 4.2, ra Problem Brief và proposal một trang. **Mock 2 (17/10):** case khác ngành, 8 giờ, proposal + spike + Judge Agent chấm. Ngành luyện tập nên đa dạng; Netcompany phục vụ khu vực công (cơ quan nhà nước, y tế, giao thông) và tư (năng lượng, thực phẩm, logistics) [S5], nhưng **không đặt cược vào một ngành** |

### 19/10 → 26/10 — Vòng 1 Discover

| | |
|---|---|
| What to learn | Ngành và thuật ngữ của case |
| What to prepare | Câu hỏi làm rõ; bảng tự chấm theo tiêu chí chính thức |
| What to build | Chỉ spike và prototype phục vụ proposal |
| Templates | Problem Brief, ma trận truy vết, bảng giả định, khung proposal |
| Prompts | Case Breakdown Engine, Research, Red Team, Judge |
| Tools | Notebook hoặc script cho spike; công cụ prototype |
| Rituals | Họp đứng; đọc case riêng; giờ red team ngày 5 |
| Mock | Người ngoài đọc thử proposal 60 giây |

### 27/10 → 01/11 — Tuần chờ kết quả Vòng 1

| | |
|---|---|
| What to learn | Điểm yếu lộ ra ở Vòng 1; kỹ thuật cần cho MVP |
| What to prepare | Data and API Contract nháp; kế hoạch 7 ngày Vòng 2 |
| What to build | Việc không phụ thuộc yêu cầu Vòng 2: hoàn thiện khung dự án, viết thêm gold cases, dữ liệu tổng hợp, bộ chạy ca thử. Điều kiện: không có quy định cấm ([UNKNOWN]; hỏi BTC nếu muốn chắc) |
| Templates | README người chấm; kịch bản demo |
| Prompts | Coding, QA, Security |
| Tools | Deploy thử bản trống |
| Rituals | Nhìn lại Vòng 1: 3 bài học |
| Mock | Dựng luồng end-to-end mỏng nhất trong một buổi |

### 02/11 → 09/11 — Vòng 2 Build

| | |
|---|---|
| What to learn | Chỉ học thứ đang chặn đường |
| What to prepare | Phạm vi cập nhật theo yêu cầu Vòng 2; mẫu AI Journal của BTC |
| What to build | MVP theo lịch Mục 18 |
| Templates | Decision record; AI Journal; README |
| Prompts | Coding, QA, Security, Responsible AI, Red Team |
| Tools | CI chạy test và bộ ca thử; theo dõi chi phí |
| Rituals | Họp đứng; demo nội bộ mỗi tối; đóng băng 07/11 |
| Mock | 3 người ngoài dùng thử không hướng dẫn |

### 10/11 → 15/11 — Tuần chờ kết quả Vòng 2

| | |
|---|---|
| What to learn | Trả lời Q&A tiếng Anh; kể chuyện |
| What to prepare | Pitch v0; thư mục bằng chứng; bảng "câu hỏi → tab" |
| What to build | Chỉ sửa lỗi và tăng khả năng thay đổi (đưa quy tắc ra cấu hình, test hồi quy một lệnh) |
| Templates | Change Impact Assessment; khung pitch |
| Prompts | Judge (sinh câu hỏi từ bài nộp), Pitch critique |
| Tools | Thiết bị trình chiếu; bản chạy cục bộ; video |
| Rituals | Luyện chéo |
| Mock | **Hai buổi diễn tập change request** (90 phút đánh giá + 1 ngày làm); một buổi Q&A 30 câu |

### 16/11 → 21/11 — Vòng 3 Deliver

| | |
|---|---|
| What to learn | Bối cảnh của change request |
| What to prepare | Đánh giá tác động; slide; dự phòng |
| What to build | Change request; hoàn thiện đường demo |
| Templates | Change Impact Assessment; pitch; kịch bản demo |
| Prompts | Red Team trên bản sau thay đổi; Judge |
| Tools | Kiểm tra toàn bộ phương án dự phòng |
| Rituals | Tập có bấm giờ mỗi ngày; không sửa code sau 18:00 ngày 20/11 |
| Mock | Tổng duyệt trước người ngoài, có sự cố giả định (tắt mạng giữa chừng) |

## 21.2 Competition Starter Kit

| Thành phần | Nội dung | Ghi chú |
|---|---|---|
| Prompt library | Chín prompt theo vai (Mục 8) + Case Breakdown Engine + Red Team | Quy trình, không phải giải pháp |
| Architecture templates | Sơ đồ một trang để điền; mẫu decision record; mẫu sơ đồ luồng dữ liệu | Tài liệu |
| UI components | Thư viện giao diện mã nguồn mở; thành phần Decision Card, hàng đợi, bảng audit ở dạng tổng quát | Ghi nguồn và giấy phép |
| Auth boilerplate | Bộ chọn vai cho demo, hoặc dịch vụ xác thực có sẵn | Không tự viết xác thực |
| Database boilerplate | Lược đồ khung: ca, tài liệu, quyết định, audit, người dùng, cấu hình; script seed và reset | Tổng quát |
| AI / RAG boilerplate | Gateway model; lời gọi có schema; kiểm tra đầu ra; truy xuất có trích dẫn; che dữ liệu cá nhân | Tổng quát |
| Logging | Log có cấu trúc cho mỗi lời gọi model: phiên bản prompt, model, token, độ trễ, chi phí | — |
| Monitoring | Trang số liệu sinh từ log | — |
| Evaluation | Bộ chạy ca thử: đọc file ca thử, chạy, so sánh, ra bảng kết quả theo phiên bản | Ca thử cụ thể viết sau khi có case |
| Security checklist | Khóa bí mật, phân quyền, đầu vào, phụ thuộc, injection, giới hạn tần suất | — |
| Responsible AI checklist | Mười ba kiểm soát (Mục 7.2) | — |
| Testing framework | Unit + end-to-end đã cấu hình; một lệnh chạy tất cả | — |
| Deployment template | Cấu hình deploy + CI | — |
| Pitch deck skeleton | Mười ba slide trống có tiêu đề và ghi chú | Nội dung và hình do đội tự làm |
| Demo script template | Bảng Before → Proof có cột thời gian | — |
| AI Journal template | Mục 8.4 | Ánh xạ sang mẫu BTC khi có |
| Decision log template | Bối cảnh, phương án, quyết định, lý do, hệ quả | — |
| Risk register | Rủi ro, khả năng, tác động, giảm thiểu, người phụ trách | — |
| KPI framework | KPI chính, guardrail, công thức ROI, bảng nhãn nguồn | — |

## 21.3 Được phép chuẩn bị trước và có thể vi phạm

| Nhóm | Ví dụ | Căn cứ |
|---|---|---|
| **Được phép** | Kiến thức, kỹ năng, phân vai, quy trình; mẫu tài liệu; thư viện prompt cho quy trình; checklist; luyện tập với case công khai; chọn công cụ và nền tảng | Không quy định nào hạn chế; công nghệ không giới hạn [FACT S1, S2] |
| **Được phép, phải ghi rõ** | Thư viện và template mã nguồn mở | "Có, nếu tuân thủ giấy phép và nêu rõ phần nào do đội phát triển" [FACT S2] |
| **Chưa rõ — hỏi BTC trước khi dựa vào** | Mã do đội tự viết trước cuộc thi (boilerplate, khung dự án, thành phần AI tổng quát); làm tiếp trong tuần chờ kết quả | [UNKNOWN]: FAQ chỉ nói về mã nguồn mở và template. [INFERENCE] nhiều khả năng được nếu tổng quát và khai báo rõ, nhưng đây là suy đoán |
| **Có thể vi phạm công bằng hoặc quy định** | Tìm cách biết trước case (BTC giữ kín "để bảo đảm công bằng" [FACT S2]); liên hệ riêng giám khảo để xin gợi ý; dùng lại một sản phẩm hoặc đồ án cũ rồi trình bày như làm mới; để người ngoài đội làm thay; dùng mã sai giấy phép hoặc không ghi nguồn; slide 100% AI; kết quả demo giả trình bày như thật; số liệu bịa | Trái với yêu cầu "hiểu, kiểm chứng và chịu trách nhiệm cho toàn bộ bài nộp" [FACT S2] và với nguyên tắc công bằng |
| **Không vi phạm nhưng là chiến lược tồi** | Xây sẵn một sản phẩm hoàn chỉnh rồi chờ case để ghép vào | Vòng 1 chấm độ phù hợp với bài toán [FACT S1] |

**Email nên gửi BTC ngay** (trả lời email chính thức hoặc gửi tới địa chỉ liên hệ trên trang chủ [FACT S1]):

> Subject: [ITCC 2026] Question on pre-existing code — Team [name]
>
> Dear Organisers,
> We'd like to follow the rules precisely. May teams use generic starter code written by the team before the competition (for example project scaffolding, logging, a test runner), if it is not specific to the case and is clearly disclosed in the README and AI journal? Or should all team-written code be produced during the rounds?
> Thank you, [names]

Cho đến khi có trả lời: chỉ chuẩn bị mẫu tài liệu, prompt, checklist và mã nguồn mở. Dù câu trả lời thế nào, **khai báo mọi thứ có từ trước** trong README và AI Journal.


