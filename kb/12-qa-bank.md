# 14. Q&A ATTACK

Các câu hỏi dưới là **[INFERENCE]**: câu mà một giám khảo tư vấn CNTT nhiều khả năng hỏi. Câu trả lời mẫu viết bằng tiếng Anh vì slide và case bằng tiếng Anh [FACT S2]; ngôn ngữ nói ở chung kết là [UNKNOWN], nên tập cả hai. Chỗ trong ngoặc vuông phải điền bằng số thật của đội. **Không học thuộc; học cấu trúc.**

## 14.1 Cấu trúc trả lời ba nhịp

1. **Trả lời thẳng** trong một câu.
2. **Bằng chứng**: một con số, hoặc mở một tab.
3. **Giới hạn và bước tiếp** nếu có.

Tối đa 45 giây. Người có thẩm quyền lĩnh vực trả lời; người khác chỉ bổ sung khi có dữ kiện mới. Không biết thì nói: *"We haven't tested that. Here is how we would find out."*

## 14.2 Mười hai câu bắt buộc phải thuộc cấu trúc

### 1. "Why AI?"
- **Kiểm tra:** AI có phải là cần thiết, hay để trang trí.
- **Yếu:** "Vì AI đang là xu hướng và giúp tự động hóa."
- **Tốt:** "Vì đầu vào là văn bản tự do, luật cứng không xử lý được."
- **Champion:**
> "Because the bottleneck is unstructured input — [emails / scanned forms] — that rules can't parse. We tested it: a rule-based baseline handles [a]% of our [N] test cases; with the model, [b]%. AI is used in exactly [two] steps. Everything else is deterministic code. With AI switched off the product still works as a manual workflow; it is just slower."

### 2. "Why not a normal software solution?"
- **Kiểm tra:** đội có cân nhắc phương án đơn giản hơn không.
- **Yếu:** "Phần mềm thường không thông minh bằng."
- **Tốt:** "Phần lớn hệ thống là phần mềm thường; chỉ một bước dùng AI."
- **Champion:**
> "We started with normal software. [Routing, validation, approval, audit] are plain rules and SQL, because they must be predictable. Only [extraction] uses AI: in our sample we counted [k] different formats for the same information. Our rule was: rules first, AI only where rules fail measurably. One of our three options in Round 1 had no AI at all — it's in the appendix with the reason we didn't choose it."

### 3. "Why should a company pay for this?"
- **Kiểm tra:** giá trị kinh doanh có thật và có số.
- **Yếu:** "Vì nó tiết kiệm thời gian và hiện đại."
- **Tốt:** "Tiết kiệm khoảng X giờ mỗi tháng, hoàn vốn trong Y tháng."
- **Champion:**
> "They already pay — in [hours / rework / delay]. The case says: '[quote]'. Our MVP cuts handling time from [X] minutes to [Y] seconds on our test set. At [N] cases a month that is about [H] hours. Run cost is [c] per case, measured. The assumptions are on slide 8; halve them and it still pays back in [m] months. And we would not ask them to trust that: we'd prove it in a four-week pilot with one team first."

### 4. "What happens if AI is wrong?"
- **Kiểm tra:** đội có thiết kế cho thất bại không.
- **Yếu:** "Model của chúng tôi rất chính xác."
- **Tốt:** "Có người duyệt trước khi thực thi."
- **Champion:**
> "It will be wrong — [e]% of the time on our test set. So the design assumes it. One: AI never executes; it recommends, and a named person approves anything that changes [status, money or outbound messages]. Two: cases that fail validation or have low confidence go to a manual queue. Three: every decision stores the input, the evidence, the model version and the approver, so errors are traceable and reversible. Four: every rejection becomes a new test case. The worst case is today's manual process."

### 5. "What is your biggest technical risk?"
- **Kiểm tra:** tự nhận thức và trung thực.
- **Yếu:** "Không có rủi ro lớn nào."
- **Tốt:** "Độ chính xác của AI; chúng tôi có người kiểm tra."
- **Champion:**
> "[Extraction accuracy on low-quality scans]. We found it in Round 1 with a spike: [result]. Today it is mitigated by validation rules and the human queue. It is not solved: on our [k] hardest cases accuracy drops to [h]%. Next step would be [better OCR / a real data sample]. We would rather show you the risk than have you find it."

### 6. "What would you remove if you had only half the time?"
- **Kiểm tra:** khả năng ưu tiên; hiểu đâu là lõi.
- **Yếu:** "Chúng tôi sẽ làm nhanh hơn."
- **Tốt:** "Bỏ dashboard và các tính năng phụ."
- **Champion:**
> "We already did this exercise; our scope has three tiers. With half the time we keep one path: input, recommendation with evidence, approval, audit. We drop [the dashboard, the second persona, the second input type]. We would never drop the approval step or the test set — those are what make it trustworthy rather than just impressive."

### 7. "What happens when the number of users increases 100x?"
- **Kiểm tra:** hiểu nút thắt thật, không trả lời bằng thuật ngữ.
- **Yếu:** "Chúng tôi dùng cloud nên tự mở rộng."
- **Tốt:** "Thêm hàng đợi, cache, mở rộng ngang."
- **Champion:**
> "Three things break, in this order: model rate limits and cost, then the synchronous request path, then database reads. So: AI calls move to a queue with workers; classification goes to a smaller model and repeated inputs are cached; read replicas come later. Cost is linear at [c] per case, so 100 times the volume is about [amount] a month — still below the value. What we would not do is split into microservices before measuring."

### 8. "How do you protect user data?"
- **Kiểm tra:** hiểu biết về bảo mật và quyền riêng tư ở mức thực hành.
- **Yếu:** "Chúng tôi mã hóa dữ liệu."
- **Tốt:** "Có phân quyền, HTTPS, không lưu dữ liệu nhạy cảm."
- **Champion:**
> "Four layers. Minimise: only the fields the model needs are sent, and personal data is masked before the call — you can see the masked payload in the app. Control: a provider with no-training terms, and because every call goes through our gateway, we can switch to a self-hosted model if data must stay inside the organisation. Access: role-based, with every read and write in the audit log. Lifecycle: a retention period and deletion. The demo uses synthetic data only."

### 9. "Why did you choose this architecture?"
- **Kiểm tra:** quyết định có xuất phát từ yêu cầu không.
- **Yếu:** "Vì đây là stack phổ biến và chúng tôi quen."
- **Tốt:** "Phù hợp MVP, dễ phát triển, dễ mở rộng sau."
- **Champion:**
> "Three drivers from the case: [driver 1, 2, 3]. So: a modular monolith — one deployable, clear module boundaries — because three people must change it quickly. AI behind a gateway, so the model is replaceable. Business rules in configuration. We rejected [microservices / an agent framework] because [it added failure modes without a requirement behind it] — decision record #[n]. The change request tested the choice: it touched [n] modules."

### 10. "What did AI generate that you rejected?"
- **Kiểm tra:** đội có thật sự kiểm soát AI không. Nhiều khả năng xuất hiện [INFERENCE từ FACT S2 về cách BTC đánh giá việc dùng AI].
- **Yếu:** "Chúng tôi kiểm tra kỹ nên không có gì đáng kể."
- **Tốt:** "Có vài đoạn code sai, chúng tôi đã sửa."
- **Champion:**
> "Three examples from our journal. One: it proposed [a vector database and an agent framework]; we rejected that — [Postgres and a single structured call] passed our tests — entry #[n]. Two: it generated [auth code that exposed a secret to the browser]; caught in review, rewritten. Three: a market-size figure with no source; removed. Overall about [x]% of AI suggestions were accepted unchanged, [y]% modified, [z]% rejected."

### 11. "What part of the solution is actually your team's work?"
- **Kiểm tra:** quyền sở hữu và trung thực.
- **Yếu:** "Tất cả là của chúng tôi" hoặc lúng túng.
- **Tốt:** "Ý tưởng và kiến trúc là của đội; AI hỗ trợ viết code."
- **Champion:**
> "The decisions. The problem framing, the scope cut, the architecture, the [N] test cases we wrote by hand, and every accept or reject in the journal are ours. AI wrote a large share of the routine code — roughly [x]% — and open-source components are listed with their licences in the README. Any of us can walk you through any file. Please pick one."

### 12. "What would you do differently if you had another month?"
- **Kiểm tra:** biết điều gì quan trọng tiếp theo; không sa vào thêm tính năng.
- **Yếu:** "Thêm nhiều tính năng và cải thiện giao diện."
- **Tốt:** "Tích hợp hệ thống thật và cải thiện độ chính xác."
- **Champion:**
> "First, sit with [five] real users — our biggest unknown is adoption, not technology. Second, replace synthetic data with a real sample and re-measure accuracy. Third, the integration with [system]. We would not add features. And one thing we'd do differently: write the test cases on day one instead of day [three] — it would have saved us [a day of prompt tuning by feel]."

## 14.3 Thêm 51 câu hỏi theo nhóm (tổng cộng 63 câu)

### Business

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| B1 | Who is the buyer and who is the user? | Rõ stakeholder | "Công ty" | Tách người mua và người dùng | "Buyer: [Head of Ops], owns [KPI]. User: [case officer], [N] cases a day. They want different things: the dashboard serves the buyer, the queue serves the user." |
| B2 | How did you get these ROI numbers? | Trung thực với số | Số tròn không nguồn | Công thức và giả định | "Volume × minutes saved × hourly cost. Volume is from the case, minutes saved is measured, hourly cost is assumed. Halve it and payback is [m] months." |
| B3 | What if the client already has a similar system? | Tư duy tích hợp | "Của chúng tôi tốt hơn" | Nêu điểm khác | "Then we don't replace it; we sit in front of it. Our value is the intake and decision layer. Output goes to their system through an adapter." |
| B4 | What is the cost of doing nothing? | Hiểu đối thủ thật | Bỏ qua | Nêu hậu quả | "[Backlog grows by x a month — from the case]. Doing nothing is our real competitor, so the pilot is designed to be cheap: one team, four weeks." |
| B5 | How would you roll this out? | Quản trị thay đổi | "Triển khai toàn công ty" | Theo giai đoạn | "Shadow mode first: AI recommends, people decide as usual, we compare. Then assisted mode, then expand. A go / no-go metric between phases." |
| B6 | Which KPI would you accept being held accountable for? | Cam kết | Liệt kê nhiều KPI | Một KPI | "One: [cycle time]. With a guardrail: the override rate must not rise. Faster with more errors would be a failure." |

### Product

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| P1 | Why this user and not the others? | Chọn có lý do | "Vì quan trọng nhất" | Nêu mức độ đau | "Because [role] touches every case and is where time is lost — [quote]. Others benefit downstream; we show them as read-only views." |
| P2 | Have you validated this with real users? | Trung thực | "Có" mà không có bằng chứng | "Chưa, nhưng dựa trên case" | "Not with the client's users. We tested with [3] people acting the role and changed [X] afterwards. Real validation is step one of the pilot." |
| P3 | What does the user do when they disagree with the AI? | Người có quyền thật | "AI thường đúng" | Có nút bác | "Edit or reject in one click, with a reason. That reason is the most valuable data we collect: it shows where the AI or the policy is wrong." |
| P4 | What did you deliberately not build? | Kỷ luật phạm vi | "Chưa kịp làm" | Liệt kê | "[Login, admin, reporting, mobile]. Each is on the roadmap with a reason. One path end to end, rather than five half-paths." |
| P5 | How is this different from ChatGPT with a good prompt? | Giá trị ngoài model | "Prompt của chúng tôi tốt hơn" | Có dữ liệu riêng | "ChatGPT gives an answer. We give a decision inside a workflow: grounded in the client's data, checked by rules, approved by a named person, logged and measured. The model is a tenth of the product." |

### AI

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| A1 | How do you know the AI output is correct? | Có đo không | "Thử thấy ổn" | Thử nhiều ca | "[N] test cases written by hand, with expected outputs, before we tuned prompts. Currently [a]% exact. It runs on every prompt change — here is the last run." |
| A2 | Which model, why, and what if it is deprecated? | Phụ thuộc nhà cung cấp | "Model mạnh nhất" | Nêu lý do | "We tested three on our test set; the cost-versus-accuracy table is in the appendix. All calls go through one gateway, so switching is configuration, and the test set tells us if quality drops." |
| A3 | How do you handle hallucination? | Kiểm soát cấu trúc | "Prompt cẩn thận" | Có nguồn | "By structure: answers only from retrieved context, citation required, output schema-validated, no evidence means 'not enough information' and a human. Measured: [x] of [N] ungrounded." |
| A4 | Is your confidence score real? | Hiểu giới hạn của LLM | "Model tự báo" | "Dựa trên xác suất" | "It is not the model's own number — that is unreliable. It is built from checks: rules passed, retrieval coverage, agreement between two runs. Accuracy per band is in the appendix." |
| A5 | Why not fine-tune your own model? | Phán đoán công sức | "Không biết làm" | "Không đủ thời gian" | "No labelled data and no need: general models do this task well. It becomes relevant when volume makes cost dominant — the override log would then be the training set." |
| A6 | Why (not) agents or RAG? | Chọn thứ đơn giản nhất | "Vì hiện đại" | Nêu lý do | "We use the simplest thing that passes the tests. [One structured call] passed. An agent loop added latency and failure modes with no accuracy gain — journal entry #[n]." |

### Architecture

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| R1 | Walk me through one request end to end. | Hiểu thật | Nói chung chung | Đúng các bước | Người *không* viết phần đó trả lời, chỉ vào sơ đồ, nêu chỗ dữ liệu được che, chỗ ghi audit, chỗ có thể lỗi. |
| R2 | Where is your single point of failure? | Tư duy độ tin cậy | "Không có" | "Nhà cung cấp model" | "The model provider. Timeout, retry, fallback model, then manual mode. The workflow never blocks on AI — we can switch it off live." |
| R3 | How would it integrate with legacy systems? | Thực tế dự án | "Qua API" | Nêu vài cách | "Through one adapter boundary. Today it's a labelled mock with the same interface. In production: API, file drop or RPA, depending on what the legacy system exposes — a week-one question." |
| R4 | How do you deploy and roll back? | Kỷ luật kỹ thuật | "Deploy tay" | Có CI | "Push → tests and the AI test set → deploy. Rollback is one click. Prompts are versioned with the code, so they roll back together." |
| R5 | What technical debt did you knowingly take on? | Trung thực | "Không có" | Nêu một | "Three items, written down: [auth stub, no queue, synthetic data]. Each has a trigger for when to pay it." |

### Security

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| S1 | What about prompt injection? | Hiểu mối đe dọa mới | "Chưa nghĩ tới" | "Có lọc đầu vào" | "Documents are untrusted data: delimited, no tools the model can act with, schema-bound output, human approval for actions. We test with [k] poisoned documents — one was in the demo." |
| S2 | Who can see what? | Phân quyền | "Ai đăng nhập cũng thấy" | Có vai trò | "Roles are data: [officer] sees own queue, [manager] sees team metrics, nobody sees raw personal data without a logged reason." |
| S3 | Where are your API keys? | Vệ sinh cơ bản | Lúng túng | "Trong biến môi trường" | "Server-side environment variables only. Never in the browser bundle or the repo; we scanned the history. Keys are scoped and rate-limited." |
| S4 | What if someone uploads a malicious file? | Xử lý đầu vào | "Chưa xử lý" | Kiểm tra loại file | "Type and size checks, text extraction only, nothing executed. And the content is still treated as untrusted — see injection." |
| S5 | What would a penetration test find first? | Tự nhận thức | "Không gì cả" | Nêu một điểm | "[Demo-grade authentication and no rate limiting]. Production would use the client's identity provider. It is on our debt list." |

### Cost

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| C1 | What does it cost to run per month? | Có đo không | "Rẻ" | Ước tính | "Measured: [c] per case from our logs. At [N] cases that is [amount] a month plus [hosting]. The dashboard shows it live." |
| C2 | What if model prices rise or usage spikes? | Kiểm soát chi phí | "Chưa tính" | "Đổi model rẻ hơn" | "Daily budget caps, caching, a small model for classification, and degrade to manual. Switching model is configuration; the test set guards quality." |
| C3 | What would it take to make this production-ready? | Ước lượng thực tế | "Vài tuần" | Nêu việc | "Our estimate: [3 people, 8–10 weeks] to pilot-ready — integration, real authentication, security review, re-testing on real data. Give or take half until we see the legacy systems." |

### Scalability

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| X1 | Does it work for other departments or clients? | Tổng quát hóa | "Có" | "Cần chỉnh" | "The pipeline is generic. What is specific is configuration: categories, rules, templates. A new department means new configuration and new test cases, not new code." |
| X2 | What about latency at peak? | Hiệu năng | "Nhanh" | Nêu số | "P95 today is [x] seconds per case. Processing is asynchronous, so users don't wait, and a queue absorbs peaks." |
| X3 | Does it handle Vietnamese / multiple languages? | Bối cảnh địa phương | "Chưa thử" | "Model hỗ trợ" | "Tested on [k] Vietnamese and mixed-language cases: [a]%. Weaker on [handwriting / abbreviations]; those route to manual." |

### Data

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| D1 | Where does your data come from? | Trung thực | "Dữ liệu thật" (không phải) | "Dữ liệu mẫu" | "Synthetic, written by us to mirror the case, including messy ones: typos, missing fields, mixed languages. Labelled as synthetic. Real data will be messier — hence shadow mode." |
| D2 | What if the client's data quality is poor? | Thực tế | "AI xử lý được" | Có kiểm tra | "It will be. Validation catches missing or contradictory fields; those go to a 'needs information' queue. The data-quality report is itself a deliverable." |
| D3 | Do you store prompts and outputs? For how long? | Vòng đời dữ liệu | "Lưu hết" | Có thời hạn | "Yes, for audit: masked input, output, model version, approver. Retention is configurable; default [n] days in the MVP." |
| D4 | What data would you need from us to go live? | Bước tiếp cụ thể | "Càng nhiều càng tốt" | Nêu loại | "[Three months] of historical cases with outcomes, the policy documents, and five users for two hours. Then we re-run the tests on real data before anyone relies on it." |

### Responsible AI

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| E1 | Who is accountable when an AI-assisted decision causes harm? | Trách nhiệm | "Hệ thống" | "Người duyệt" | "The named approver and the organisation — never 'the AI'. That is why approval is explicit and the log records what the person saw when deciding." |
| E2 | Could it treat groups unfairly? | Thiên lệch | "Không" | "Chúng tôi sẽ theo dõi" | "Possible wherever it prioritises people. Protected attributes are excluded from inputs; we test paired cases that differ only in [name / gender]; we monitor override rates by segment." |
| E3 | Will this replace people's jobs? | Tác động con người | Né tránh | "Hỗ trợ, không thay thế" | "It removes retyping and searching, not judgment. Our KPI is cycle time and backlog, not headcount. The officer becomes the reviewer." |
| E4 | How do users know they're dealing with AI? | Minh bạch | "Không cần biết" | Có nhãn | "Every AI-generated field is labelled, with its evidence one click away. Outbound messages are approved by a person." |
| E5 | Won't people just click approve? | Phụ thuộc tự động hóa | "Họ sẽ kiểm tra" | Có đào tạo | "A real risk. Evidence is shown before the recommendation, high-impact approvals need a reason, we sample approved cases for audit, and we track approval time — two-second approvals are a signal." |

### Feasibility

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| F1 | Is this really working, or mocked? | Trung thực | "Chạy thật hết" | Nêu phần thật | "Real: intake, the AI pipeline, approval, audit. Simulated and labelled: [legacy integration, email sending]. Give us any input and we'll run it now." |
| F2 | How did you test this? | Kỷ luật | "Thử tay" | Có test | "Three layers: unit tests on rules, the AI test set, and a scripted end-to-end run of the demo path before every deploy. [n] tests; last run [time]." |
| F3 | How did you handle the change request? | Tư duy tư vấn | "Đã làm xong" | Nêu cách làm | "As a small engagement: impact assessment first, three options, a recommendation. It touched [n] modules; [m] regression tests pass; one part is deferred, and here is why." |
| F4 | What was the hardest problem you hit? | Sở hữu thật | Chung chung | Một lỗi cụ thể | Một câu chuyện cụ thể: triệu chứng → cách tìm ra → cách sửa → bài học. Người gặp lỗi kể. |

### Competition strategy

| # | Judge asks | Thực sự kiểm tra | Yếu | Tốt | Champion |
|---|---|---|---|---|---|
| G1 | How did you split the work? | Teamwork | FE / BE / AI | Theo vai | "By outcome: one of us owns 'we understand the client', one 'every technical choice is defensible', one 'it always runs'. Each can cover another — ask any of us about any part." |
| G2 | How exactly did you use AI in your process? | Dùng có kiểm soát | Kể tên công cụ | Kể giai đoạn | "As a junior colleague with no accountability: research, drafts, routine code, and as a red team against our own ideas. Nothing merges unless one of us can explain it. [n] journal entries; [m] rejected." |
| G3 | What was your biggest disagreement? | Đội thật | "Không có" | Nêu một | Một quyết định cụ thể, hai phía, cách chốt (người có thẩm quyền, decision record), và kết quả. |
| G4 | What is the weakest part of your solution? | Trung thực | "Giao diện" | Nêu điểm thật | "[Synthetic data — we have not seen real inputs]. Mitigation: shadow-mode pilot. It is the first thing we'd fix." |
| G5 | Why should your team win? | Tự tin có căn cứ | "Vì chúng tôi cố gắng nhất" | Tóm tắt điểm mạnh | "Because you could put this in front of a client on Monday — not because it's finished, but because you know exactly what is proven, what is assumed and what is next. Everything we claimed, we showed evidence for." |

## 14.4 Cách luyện

- Mỗi người rút ngẫu nhiên 10 câu, trả lời có bấm giờ 45 giây, hai người kia chấm theo cấu trúc ba nhịp.
- Judge Agent sinh thêm 20 câu từ chính bài nộp của đội sau mỗi vòng.
- Lập bảng "câu hỏi → tab bằng chứng". Câu nào chưa có bằng chứng thì đó là việc cần làm.
- Tập trả lời chéo: P3 trả lời câu kinh doanh, P1 trả lời câu kiến trúc.


