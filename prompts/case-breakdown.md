# case-breakdown — phân tích case có kiểm soát

**Dùng khi:** ngày nhận case, **sau khi** đội đã tự viết problem statement vào `scope/PROBLEM_BRIEF.md`.
Không chạy prompt này trước khi mỗi thành viên đã đọc case một mình.

## Cách chạy trong workspace

Điền phần INPUT của prompt dưới từ các file:

| Thẻ | Lấy từ |
|---|---|
| `<case>` | `case/CASE.md` (giữ số đoạn `P1`, `P2`…) |
| `<judging_criteria>` | `case/CRITERIA.md`; nếu còn trống, ghi "not yet published" |
| `<team_notes>` | `scope/PROBLEM_BRIEF.md` |
| `<constraints>` | `STATUS.md` và thành viên cung cấp |

Nếu `case/CASE.md` còn trống: dừng và nói rõ chưa có case. Không tự tạo case.

## Sau khi chạy

- Chạy lại trên một model khác và đọc phần **khác nhau** giữa hai bản.
- Một thành viên đối chiếu từng nhãn `[CASE Px]` với case gốc. Trích dẫn sai nghĩa là bản phân tích chưa tin được.
- Mỗi `[UNKNOWN]` trở thành một câu hỏi trong `case/CLARIFICATIONS.md` hoặc một dòng trong `scope/ASSUMPTIONS.md`.
- Kết quả chỉ là đầu vào. Đội quyết định; rồi dùng `req-trace` để lập `scope/REQUIREMENTS.md`.
- Ghi lần chạy vào AI Journal: giữ gì, bỏ gì, vì sao.

## Prompt

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
