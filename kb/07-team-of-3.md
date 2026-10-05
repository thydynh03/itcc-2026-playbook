# 9. TEAM OF 3

## 9.1 Ba vai theo kết quả

| | Person 1 — Consultant / Product Lead | Person 2 — Solution Architect / AI Lead | Person 3 — Full-stack / Delivery Lead |
|---|---|---|---|
| Chịu trách nhiệm về kết quả | "Giám khảo tin rằng chúng ta hiểu khách hàng" | "Mọi lựa chọn kỹ thuật và AI bảo vệ được" | "Sản phẩm chạy, lúc nào cũng demo được" |
| Responsibility | Đọc case, yêu cầu, ma trận truy vết, KPI và ROI, proposal, câu chuyện, pitch, AI Journal (gom) | Kiến trúc, luồng AI, prompt, bộ ca thử, dữ liệu, bảo mật, Responsible AI, decision log | Giao diện, backend, tích hợp, deploy, dữ liệu seed, kịch bản demo, video dự phòng |
| Backup responsibility | Kiểm thử nghiệp vụ; viết kết quả kỳ vọng cho bộ ca thử | Review code của P3; tự build phần AI | Trình bày kiến trúc; chạy và giải thích bộ ca thử |
| Decision authority | Phạm vi, ưu tiên, thông điệp | Kiến trúc, model, kiểm soát AI và bảo mật | Cách hiện thực, thứ tự build, đóng băng demo |
| Trả lời Q&A | Business, Product, Competition | AI, Architecture, Security, Data, Responsible AI | Feasibility, Cost, Scalability, vận hành |
| Dự phòng Q&A | Feasibility | Cost, Scalability | Architecture, Product |

## 9.2 Quy tắc quyết định

- Mỗi lĩnh vực có **một** người quyết. Hai người còn lại được phản đối trong 15 phút; hết giờ người có thẩm quyền quyết và ghi decision log.
- Quyết định đảo ngược được (đặt tên, thư viện giao diện): quyết ngay. Quyết định khó đảo ngược (người dùng chính, phạm vi MVP, mô hình dữ liệu): cần cả ba.
- Bất kỳ ai cũng có quyền gọi "dừng": khi thấy đội đang giải sai bài toán.

## 9.3 Handoff — bốn bản hợp đồng

| Hợp đồng | Từ → đến | Nội dung | Khi nào |
|---|---|---|---|
| Problem Brief (1 trang) | P1 → cả đội | Problem statement, người dùng chính, Must prove, không làm | Cuối ngày 1 |
| Data and API Contract | P2 → P3 | Mô hình dữ liệu, schema đầu ra của AI, endpoint; P3 dùng mock theo đúng schema để build giao diện song song | Ngày 2–3 |
| Gold Cases | P1 + P2 → P3 | 20–40 ca thử có kết quả kỳ vọng viết tay | Trước khi tinh chỉnh prompt |
| Demo Script | P1 ↔ P3 | Từng bước, từng dữ liệu, từng câu nói | Giữa vòng Build; đóng băng 48 giờ trước hạn |

## 9.4 Làm song song mà không chặn nhau

| Luồng | P1 | P2 | P3 |
|---|---|---|---|
| Đầu vòng | Yêu cầu, persona, KPI | Spike phần AI rủi ro nhất trong notebook hoặc script | Dựng khung app, deploy bản trống, dữ liệu seed |
| Giữa vòng | Gold cases, nội dung, số liệu ROI | Luồng AI sau gateway, kiểm tra, bộ ca thử | Giao diện trên mock schema → nối luồng AI thật |
| Cuối vòng | Proposal hoặc pitch, journal | Red team, bảo mật, số đo | Đóng băng, ca biên, video, README |

Nguyên tắc: **deploy từ ngày đầu, tích hợp mỗi ngày.** Không có "tuần sau ghép lại".

## 9.5 Rituals

- Họp đứng 15 phút mỗi ngày: hôm qua xong gì, hôm nay làm gì, đang kẹt gì, quyết định nào cần chốt.
- Demo nội bộ mỗi tối từ ngày 3 của vòng Build: chạy đúng kịch bản trên bản đã deploy.
- "Giờ red team" một lần mỗi vòng.
- Sau mỗi vòng: 30 phút nhìn lại, ghi 3 bài học.
- Luyện chéo: mỗi người trình bày phần của người khác một lần mỗi tuần. Netcompany mô tả đội của họ là "có thể làm thay việc của nhau nếu cần" [S6].


