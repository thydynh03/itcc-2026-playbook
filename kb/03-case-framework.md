# 4. CASE STUDY FRAMEWORK

Case sẽ đến qua email vào ngày 19/10 và bằng tiếng Anh [FACT S2]. Vòng 1 dài 7 ngày [FACT S1], nên rủi ro không phải thiếu thời gian mà là **lao vào giải pháp ngay giờ đầu**.

## 4.1 Chuỗi xử lý

```
CASE → DISCOVERY → PROBLEM → USER → ROOT CAUSE → SOLUTION → MVP → AI → ARCHITECTURE → BUSINESS VALUE → PITCH
```

| Bước | Câu hỏi phải trả lời | Sản phẩm | Cổng chuyển bước |
|---|---|---|---|
| CASE | Case nói gì, nguyên văn? | Case được đánh số từng đoạn | Cả ba đã đọc riêng |
| DISCOVERY | Cái gì là dữ kiện, cái gì thiếu? | Bảng Fact / Constraint / Ambiguity; câu hỏi gửi BTC | Câu hỏi đã gửi |
| PROBLEM | Khách hàng đang mất gì? | Một câu problem statement | Cả ba đồng ý từng chữ |
| USER | Ai chịu đau, ai trả tiền, ai bị ảnh hưởng? | Bản đồ stakeholder; một persona chính | Chọn một người dùng chính |
| ROOT CAUSE | Vì sao vấn đề tồn tại? | Cây nguyên nhân (5 Whys) | Nguyên nhân gốc không phải "thiếu AI" |
| SOLUTION | Có những cách nào, kể cả không AI? | 3 phương án + ma trận chọn | Phương án được chọn thắng bằng tiêu chí |
| MVP | Phải chứng minh điều gì? | Danh sách Must prove; danh sách không làm | Vừa trong số giờ thực của đội |
| AI | AI nằm ở bước nào và vì sao? | Bảng "bước nào dùng AI / bước nào dùng luật" | Mỗi bước AI có lý do và có baseline |
| ARCHITECTURE | Cấu trúc đơn giản nhất đủ dùng? | Sơ đồ một trang + decision log | Mỗi khối có "vì" |
| BUSINESS VALUE | Đo bằng gì? | KPI chính + guardrail + công thức ROI | Có nguồn cho từng số |
| PITCH | Kể thế nào trong 60 giây? | Executive summary | Người ngoài đọc hiểu |

## 4.2 Checklist ngày đầu nhận case

### First 30 minutes — đọc, không giải
- [ ] Mỗi người đọc case **một mình, không dùng AI**, không nói chuyện.
- [ ] Đánh dấu bốn màu: dữ kiện và con số; ràng buộc; người liên quan; chỗ mơ hồ.
- [ ] Mỗi người tự viết: một câu problem statement, ba câu hỏi muốn hỏi khách hàng.
- [ ] Đọc email của BTC hai lần: tiêu chí chấm, định dạng, hạn nộp, giờ chốt.
- [ ] Cấm: mở IDE, bàn về công nghệ, nói từ "chatbot".

### First 60 minutes — thống nhất bài toán
- [ ] So ba problem statement. Chỗ khác nhau chính là chỗ case mơ hồ.
- [ ] Viết một problem statement chung theo mẫu: *[Ai] đang [gặp vấn đề gì] khi [bối cảnh], dẫn đến [hậu quả đo được]; nguyên nhân chính là [gốc].*
- [ ] Lập bảng Fact / Constraint / Assumption / Unknown, mỗi dòng ghi số đoạn trong case.
- [ ] **Gửi câu hỏi làm rõ cho BTC** bằng cách trả lời email chính thức [FACT S2 về kênh]. Tối đa 5 câu, mỗi câu kèm giả định mặc định nếu không được trả lời.
- [ ] Thay bảng trọng số ở Mục 17 bằng tiêu chí chính thức vừa nhận.

### First 2 hours — mở rộng rồi thu hẹp
- [ ] Chạy Case Breakdown Engine (4.3) trên hai model khác nhau. So với bản của đội: AI thấy gì đội bỏ sót, AI bịa gì.
- [ ] Vẽ quy trình hiện tại (as-is) của người dùng chính, đánh dấu bước tốn thời gian, bước hay sai.
- [ ] Cây nguyên nhân gốc.
- [ ] Ba phương án giải pháp, **bắt buộc một phương án không dùng AI**.
- [ ] Chạy "pattern selector" (5.1) để xem hình dạng giải pháp nào khớp.

### First 4 hours — quyết định
- [ ] Ma trận chọn phương án theo tiêu chí chính thức của BTC.
- [ ] Viết "Must prove": ba điều mà MVP phải chứng minh.
- [ ] Xác định **giả định rủi ro nhất** và thiết kế spike 4–8 giờ để kiểm tra nó.
- [ ] Bản nháp executive summary 150 từ.
- [ ] Phân công 7 ngày; ghi quyết định đầu tiên vào decision log.
- [ ] Bắt đầu AI Journal (các prompt của ngày đầu).

### Final review — trước khi nộp
- [ ] Mỗi yêu cầu và ràng buộc của case đều xuất hiện trong ma trận truy vết.
- [ ] Đổi tên khách hàng thành công ty khác: bài còn đúng không? Nếu còn thì chưa đủ cụ thể.
- [ ] Mọi con số có nguồn hoặc nhãn giả định.
- [ ] Một người ngoài đội đọc trang đầu trong 60 giây và kể lại được vấn đề, giải pháp, giá trị.
- [ ] Judge Agent và Red Team Agent đã chấm; ba điểm yếu lớn nhất đã xử lý.
- [ ] Đúng định dạng, đúng tên file, đúng ngôn ngữ, nộp trước hạn nội bộ.

## 4.3 Case Breakdown Engine (prompt dùng ngay)

Dùng **sau** khi đội đã tự viết problem statement. Prompt viết bằng tiếng Anh vì case bằng tiếng Anh.

```text
ROLE
You are a senior IT consultant supporting a 3-person team in a consulting
competition. You assist; the team decides and is accountable.

INPUT
<case>
[paste the full case, with paragraphs numbered P1, P2, ...]
</case>
<judging_criteria>
[paste the official criteria emailed by the organiser]
</judging_criteria>
<team_notes>
[our own problem statement and questions, written BEFORE using you]
</team_notes>
<constraints>
Round: [1/2/3]. Deadline: [date]. Real working hours available: [n].
Team skills: [list]. Deliverable format: [format].
</constraints>

RULES
1. Tag every statement with exactly one of:
   [CASE Px]  - stated in the case; quote the exact words and paragraph
   [INFERRED] - your reasoning; say from which facts
   [ASSUMED]  - not in the case; say how we could validate it
   [UNKNOWN]  - missing; write the question we should ask the client
2. Never invent numbers, stakeholders, systems, laws or market data.
   If the case does not say it, it is [UNKNOWN].
3. Use the client's own wording for problems and goals.
4. Do not propose any solution before STEP 3.
5. Tables where possible. No filler.

STEP 1 - EXTRACT (facts only)
 1. Executive summary (5 lines)
 2. Business problem (one sentence + evidence)
 3. User personas (buyer, primary user, affected parties; goals and fears)
 4. Pain points (ranked, with evidence)
 5. Current process (as-is steps; mark slow / error-prone / manual steps)
10. Constraints (time, budget, tech, legal, organisational)

STEP 2 - DIAGNOSE
 6. Root causes (5-Whys tree; separate symptoms from causes)
 7. Jobs-to-be-done ("When..., I want to..., so I can...")
 8. Functional requirements (ID, statement, source tag, priority)
 9. Non-functional requirements (security, privacy, performance,
    availability, auditability, accessibility, language)
11. Assumptions (with validation method and fallback if wrong)
12. Risks (business, technical, data, adoption; likelihood x impact)
13. Opportunity areas (where value is concentrated)

STEP 3 - OPTIONS
Give 3 genuinely different solution options. One MUST use no AI.
For each: how it works, which requirements it covers, effort, risk,
what it deliberately leaves out.
14. AI opportunities (step-by-step: why rules are not enough here)
15. AI risks (wrong output, bias, privacy, injection, cost, over-reliance)

STEP 4 - RECOMMEND
Pick one option using the judging criteria. Then:
16. MVP scope (the 3 things the MVP must PROVE; in/out list)
17. Future scope (phased)
18. KPIs (one primary, one guardrail, how each is measured in the MVP)
19. Business impact (formula, inputs, source tag for each input)
20. Architecture (simplest structure that works; 3 drivers from the case)
21. Tech stack (each choice with a reason and a rejected alternative)
22. Demo scenario (before -> trigger -> AI -> decision -> human ->
    action -> result -> proof)
23. Pitch storyline (10 lines)

STEP 5 - CHALLENGE YOUR OWN RECOMMENDATION
Answer bluntly, as the client:
 a. "If I were the customer, why would I pay for this?"
 b. "If we remove the AI, does the product still have value?"
 c. "Does AI actually solve the problem, or was it added to impress?"
 d. "Is this feasible within the Build round with 3 people?"
 e. Which requirement or constraint in the case does it still violate?
 f. What is the single most likely reason a judge rejects it?
Give a verdict: KEEP / NARROW / RETHINK, and the smallest change that
fixes the biggest weakness.

STEP 6 - DIFF WITH TEAM NOTES
List where your analysis disagrees with <team_notes>, what the team saw
that you missed, and what you may have invented. Do not smooth over
disagreements.
```

**Cách dùng có kiểm soát**
- Chạy trên hai model, đọc phần *khác nhau* giữa hai bản.
- Một người đối chiếu từng nhãn `[CASE Px]` với case gốc. Trích dẫn sai là dấu hiệu bản phân tích không tin được.
- Mọi `[UNKNOWN]` hoặc trở thành câu hỏi gửi BTC, hoặc trở thành giả định trong bảng giả định.
- Ghi lần chạy này vào AI Journal: giữ gì, bỏ gì, vì sao.


