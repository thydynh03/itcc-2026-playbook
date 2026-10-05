# 8. AI OPERATING SYSTEM FOR THE TEAM

BTC khuyến khích dùng AI, yêu cầu đội "hiểu, kiểm chứng và chịu trách nhiệm cho toàn bộ bài nộp", và yêu cầu nộp AI Journal theo mẫu sau Vòng 2 [FACT S2].

## 8.1 Ba luật

1. **Người nghĩ trước, AI sau.** Với việc cần tư duy (đọc case, chọn giải pháp, chọn kiến trúc), đội tự viết bản của mình trước, rồi mới dùng AI để phản biện và bổ sung.
2. **Explain-back trước khi merge.** Không đoạn code hay đoạn văn nào vào bài nộp nếu chưa có một thành viên giải thích được cho thành viên khác trong 2 phút.
3. **Không kiểm chứng thì không dùng.** Số liệu phải có nguồn mở được; code phải có test hoặc chạy thử; nhận định phải đối chiếu với case.

## 8.2 Mười agent

"Agent" ở đây là một vai kèm prompt chuẩn, không nhất thiết là hệ thống tự động.

| Agent | Việc | Đầu vào | Đầu ra | Người kiểm chứng và cách kiểm | AI không được |
|---|---|---|---|---|---|
| Research Agent | Tìm hiểu ngành, quy trình, thuật ngữ, giải pháp hiện có | Case, câu hỏi cụ thể | Tóm tắt có link nguồn | P1 mở từng nguồn; bỏ mọi số không có nguồn | Tự tạo số liệu thị trường |
| Product Agent | Chạy Case Breakdown Engine; viết user story, tiêu chí chấp nhận | Case, ghi chú của đội | Bảng yêu cầu có nhãn nguồn | P1 đối chiếu trích dẫn với case | Quyết định phạm vi |
| Architect Agent | Đề xuất và phản biện kiến trúc, mô hình dữ liệu | Yêu cầu, ràng buộc, kỹ năng đội | 2–3 phương án có đánh đổi | P2 chọn và viết decision record bằng lời của mình | Chọn công nghệ đội chưa từng dùng |
| Coding Agent | Viết code theo đặc tả nhỏ | Đặc tả, hợp đồng API, test | Code + test | P3 đọc diff, chạy test, explain-back | Đổi kiến trúc, thêm thư viện mà không hỏi |
| QA Agent | Sinh ca thử, ca biên, kịch bản end-to-end | Yêu cầu, luồng chính | Test, danh sách lỗi | P3 chạy; P1 xác nhận kỳ vọng nghiệp vụ | Tự viết kết quả kỳ vọng cho bộ ca thử AI (phần đó người viết) |
| Security Agent | Rà soát bảo mật: khóa, phân quyền, đầu vào, phụ thuộc | Repo | Danh sách phát hiện theo mức độ | P2 tái hiện từng phát hiện trước khi sửa | — |
| Responsible AI Agent | Rà soát theo checklist Mục 7 | Luồng AI, prompt, dữ liệu | Bảng kiểm soát: có / thiếu | P2 chứng minh bằng demo từng kiểm soát | — |
| Red Team Agent | Tấn công giải pháp từ 7 vai (Mục 15) | Proposal hoặc MVP | Danh sách điểm yếu xếp hạng | Cả đội chọn top 3 để sửa | — |
| Pitch Agent | Phản biện cấu trúc, độ rõ, thời lượng; **không viết slide** | Dàn ý và slide do đội làm | Nhận xét | P1 quyết định | Tạo toàn bộ slide (BTC nói không nên dùng slide 100% AI [FACT S2]) |
| Judge Agent | Chấm theo tiêu chí chính thức; hỏi câu khó | Bài nộp, tiêu chí | Điểm, lý do, 10 câu hỏi | Cả đội; so với tự chấm | — |

## 8.3 Workflow

```
Research → Analyze → Design → Build → Test → Red Team → Improve → Pitch
   P1        P1+P2     P2       P3     P3+P2    cả đội     cả đội    P1
   ▲ mỗi mũi tên là một cổng do NGƯỜI mở: kiểm chứng xong mới đi tiếp ▲
```

| Bước | AI làm | Người làm (không ủy thác được) |
|---|---|---|
| Research | Tổng hợp, tìm nguồn | Chọn nguồn tin được; rút insight |
| Analyze | Trích yêu cầu, tìm chỗ thiếu | Viết problem statement; chọn người dùng chính |
| Design | Đưa phương án, phản biện | Chọn; viết lý do; chịu trách nhiệm |
| Build | Viết phần lớn code lặp | Đặc tả, review, tích hợp, hiểu từng file |
| Test | Sinh ca thử | Viết kết quả kỳ vọng; quyết định ngưỡng đạt |
| Red Team | Tấn công | Quyết định sửa gì, chấp nhận gì |
| Improve | Sửa theo chỉ dẫn | Xếp ưu tiên |
| Pitch | Phản biện, đóng vai giám khảo | Viết câu chuyện, làm slide, nói |

## 8.4 AI Journal

BTC sẽ có mẫu riêng [FACT S2; nội dung mẫu UNKNOWN]. Ghi theo cấu trúc dưới **từ ngày 19/10** để khi có mẫu chỉ việc ánh xạ.

**Mỗi mục:**

| Trường | Nội dung |
|---|---|
| ID | AJ-001… |
| Ngày, vòng, giai đoạn | 2026-10-19, R1, Analyze |
| Người phụ trách | P1 / P2 / P3 |
| Công cụ và model | Tên công cụ, model |
| Mục đích | Một câu |
| Prompt | Nguyên văn hoặc link tới file prompt |
| AI trả ra gì | Tóm tắt 2–3 dòng, link bản đầy đủ |
| Kiểm chứng thế nào | Đối chiếu case / mở nguồn / chạy test / explain-back |
| Kết quả | Chấp nhận / Sửa rồi dùng / Bác |
| AI sai ở đâu | Cụ thể |
| Đội quyết định gì, vì sao | Một đến hai câu |
| Bằng chứng | Commit, test, decision record |

**Trang tổng hợp (đặt ở đầu journal):**
- Số mục theo giai đoạn; tỷ lệ chấp nhận / sửa / bác.
- Năm lỗi đáng kể nhất của AI mà đội bắt được.
- Bản đồ "phần nào của bài là của ai": quyết định của đội, code AI sinh có review, thư viện mã nguồn mở (kèm giấy phép), thành phần có từ trước cuộc thi (nếu được phép).
- Ba quyết định mà đội đi ngược lại đề xuất của AI.

**Mẹo vận hành:** mỗi người có một file ghi nhanh; cuối ngày P1 gom lại trong 10 phút. Journal viết bù vào đêm cuối sẽ thiếu đúng phần giá trị nhất: những lần AI sai.


