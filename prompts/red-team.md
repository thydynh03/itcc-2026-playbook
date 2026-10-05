# red-team — tấn công giải pháp của chính đội

**Dùng khi:** giữa và cuối mỗi vòng, trước khi chạy `judge`.

## Cách chạy trong workspace

| Thẻ | Lấy từ |
|---|---|
| `<solution>` | Bài sắp nộp: proposal, hoặc README + sơ đồ kiến trúc + kịch bản demo |
| `<case>` | `case/CASE.md`, cộng `case/CLARIFICATIONS.md` và `case/CHANGE_REQUESTS.md` nếu có |

## Sau khi chạy

- Đội chọn ba điểm yếu lớn nhất để sửa. AI không quyết định sửa gì.
- Cách sửa phải nằm trong `scope/SCOPE.md`. Nếu cách sửa cần việc ngoài phạm vi, chạy `scope-check` trước.
- Điểm yếu không sửa được: chuẩn bị câu trả lời trung thực kèm bước tiếp theo, và ghi vào `docs/memory/RISKS.md`.
- Sửa xong thì chạy lại. Dừng khi không còn điểm yếu mức High nào mà đội chưa có bản sửa hoặc câu trả lời.
- Ghi cả hai lần chạy vào AI Journal.

## Prompt

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
