# 13. PITCH STRATEGY

Slide phải bằng tiếng Anh [FACT S2]. Thời lượng và ngôn ngữ nói là [UNKNOWN]; bản dưới thiết kế cho **9 phút** [ASSUMPTION], có cách rút xuống 7. Slide do đội tự làm, dùng ảnh chụp sản phẩm thật và sơ đồ tự vẽ; BTC đã nói không nên dùng slide tạo 100% bằng AI [FACT S2].

## 13.1 Phân bổ thời gian

| # | Slide | Thời lượng | Người nói |
|---|---|---:|---|
| 1 | Problem | 0:40 | P1 |
| 2 | Why existing solutions fail | 0:30 | P1 |
| 3 | User | 0:30 | P1 |
| 4 | Insight | 0:30 | P1 |
| 5 | Solution | 0:30 | P1 |
| 6 | Why AI | 0:30 | P2 |
| 7 | Live Demo | 3:00 | P3 bấm, P1 nói |
| 8 | Business Impact | 0:40 | P1 |
| 9 | Responsible AI | 0:30 | P2 |
| 10 | Architecture | 0:30 | P2 |
| 11 | Change and Scalability | 0:30 | P3 |
| 12 | Future | 0:20 | P3 |
| 13 | Closing | 0:20 | P1 |
| | **Tổng** | **9:00** | |

**Bản 7 phút:** bỏ slide 2 và 12; gộp 3 vào 1; demo còn 2:30; mỗi slide 9, 10, 11 còn 20 giây.

## 13.2 Script từng slide

Chỗ trong ngoặc vuông điền từ case và từ số đo của MVP. Không điền số không có nguồn.

**Slide 1 — Problem**
*Trên slide:* một con số lớn từ case; một câu problem statement.
> "[Client] handles [N] [requests] a [period]. Each one takes [X] minutes, and [Y]% come back because of [error]. That is [Z] hours a month spent on work nobody was hired to do. The case told us this in one sentence: '[quote from case]'."

**Slide 2 — Why existing solutions fail**
*Trên slide:* quy trình hiện tại, ba điểm nghẽn tô đỏ.
> "They are not short of tools. They have [current tools]. The work still stalls at three points: [reading unstructured input], [checking against rules by hand], [re-entering data]. More staff or another form does not remove those steps."

**Slide 3 — User**
*Trên slide:* một người, tên, vai trò, một ngày làm việc; người mua bên cạnh.
> "This is [Lan], a [role]. She is measured on [metric] but spends most of her day on [low-value task]. Her manager, [role], is the buyer, and cares about [backlog / compliance / cost]. We designed for Lan first."

**Slide 4 — Insight**
*Trên slide:* một câu.
> "Our insight: the problem is not the decision — [Lan] decides in seconds once the facts are in front of her. The problem is getting the facts there. So we don't automate the decision. We automate everything before it."

**Slide 5 — Solution**
*Trên slide:* sơ đồ luồng 5 bước; tên giải pháp.
> "[Name] takes the request in, extracts and checks the facts, proposes a decision with its evidence, and waits for [Lan]. She approves, edits or rejects. The system then executes and records everything. One flow, built end to end."

**Slide 6 — Why AI**
*Trên slide:* bảng hai cột: bước dùng luật / bước dùng AI; một dòng số đo.
> "We use AI in exactly [two] steps — where input is unstructured and rules break. Everything else is ordinary code, because it must be predictable and auditable. On our [N] hand-written test cases, rules alone get [a]%; with AI, [b]%. Switch AI off and the product still works, manually."

**Slide 7 — Live Demo**
> "Let us show you." → kịch bản 12.3.

**Slide 8 — Business Impact**
*Trên slide:* công thức; ba ô số; nhãn nguồn cho từng số (case / đo từ MVP / giả định).
> "Measured on the MVP: [Y] seconds per case instead of [X] minutes. At [N] cases a month, that is about [H] hours returned to the team. Volume comes from the case; time saved is measured; hourly cost is our assumption — halve it and payback is still [m] months. Running cost: [c] per case, from our logs."

**Slide 9 — Responsible AI**
*Trên slide:* ảnh Decision Card có chú thích 5 điểm; không gạch đầu dòng lý thuyết.
> "You saw this in the demo, so briefly: every AI output shows its evidence, a confidence level built from checks we can verify, and needs a named person to approve. Personal data is masked before it reaches the model. When the system is unsure, it says so and hands over."

**Slide 10 — Architecture**
*Trên slide:* sơ đồ một trang, 5–7 khối; ba driver từ case ở lề.
> "Three things in the case drove the design: [driver 1], [driver 2], [driver 3]. So: one deployable application with clear modules, because three people must change it fast. AI behind a gateway, so the model can be replaced — including by a self-hosted one. Rules in configuration, so business changes don't need code. We considered [alternative] and rejected it because [reason]."

**Slide 11 — Change and Scalability**
*Trên slide:* trái: change request — phương án, khuyến nghị, số file đổi, số test pass. Phải: ba nút thắt theo thứ tự khi tải tăng.
> "On [date] you asked for [change]. We assessed impact, compared three options and recommended [B]. It touched [n] modules; all [m] regression tests pass. The same design carries scale: at 100 times the volume, model rate limits break first, so AI calls move to a queue; cost grows linearly at [c] per case."

**Slide 12 — Future**
*Trên slide:* ba giai đoạn, mỗi giai đoạn có cổng quyết định.
> "Next is not more features. Phase 1: four weeks in shadow mode with one team, on real data, to re-measure accuracy. Phase 2: assisted mode, integration with [system]. Phase 3: other departments, by configuration. Each phase has a go / no-go metric."

**Slide 13 — Closing**
*Trên slide:* ba dòng: Proven / Assumed / Next. Tên ba thành viên.
> "What is proven: the flow works end to end, and AI adds [b − a] points of accuracy on our test set. What is assumed: [top assumption]. What is next: a four-week pilot. Everything we claimed today, we can show you the evidence for. We're happy to take your questions — and any input you want to try."

## 13.3 Quy tắc trình bày

- Mỗi slide một ý, một con số. Không đoạn văn.
- Không có slide "tech stack". Công nghệ chỉ xuất hiện kèm lý do ở slide 10.
- Mọi con số có nhãn nguồn nhỏ ở góc.
- Phụ lục sẵn sàng (không trình bày): ma trận truy vết, bảng giả định, kết quả bộ ca thử, decision log, trích AI Journal, chi phí, bảo mật, lộ trình chi tiết. Đánh số để nhảy tới khi Q&A.
- Tập có bấm giờ ít nhất 5 lần; 2 lần trước người ngoài đội.
- Nếu trình bày bằng tiếng Anh: câu ngắn, chậm, không đọc slide.


