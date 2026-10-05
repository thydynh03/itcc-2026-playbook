# START HERE

Đọc theo thứ tự dưới đây. Tổng cộng khoảng 30 phút. Không cần đọc hết `kb/` ngay.

## Lộ trình đọc

| Thứ tự | File | Thời gian | Đọc để biết |
|---:|---|---:|---|
| 1 | [README.md](README.md) | 3 phút | Cuộc thi là gì, repo dùng thế nào |
| 2 | [kb/00-overview-and-facts.md](kb/00-overview-and-facts.md) — phần "Tóm tắt một trang", mục 1.1, 1.2 | 7 phút | Cái gì là chính thức, cái gì chưa biết |
| 3 | [kb/01-judge-psychology.md](kb/01-judge-psychology.md) — mục 2.4, 2.5 | 4 phút | Điều làm đội nổi bật và điều làm đội bị loại |
| 4 | [kb/03-case-framework.md](kb/03-case-framework.md) — mục 4.1, 4.2 | 6 phút | Làm gì trong 4 giờ đầu sau khi nhận case |
| 5 | [kb/08-mvp-strategy.md](kb/08-mvp-strategy.md) — mục 10.1, 10.2 | 4 phút | Cái gì phải chứng minh, cái gì không bao giờ build |
| 6 | [workspace-template/AGENTS.md](workspace-template/AGENTS.md) | 5 phút | 12 luật giữ đội đúng đề và đúng phạm vi |
| 7 | [kb/20-top-10-actions.md](kb/20-top-10-actions.md) | 1 phút | Mười việc quan trọng nhất |

Đọc thêm theo vai:

| Vai | File |
|---|---|
| P1 — Consultant / Product Lead | `kb/02`, `kb/04`, `kb/09`, `kb/11`, `kb/12` |
| P2 — Solution Architect / AI Lead | `kb/05`, `kb/06`, `kb/13`, `kb/15` |
| P3 — Full-stack / Delivery Lead | `kb/08`, `kb/10`, `kb/16` |

Mô tả ba vai: [kb/07-team-of-3.md](kb/07-team-of-3.md).

## Mười câu tự kiểm tra

Trả lời trước khi mở đáp án. Sai từ 3 câu trở lên thì đọc lại lộ trình.

**1. Cuộc thi chấm vai nào: developer, product builder hay IT consultant?**
<details><summary>Đáp án</summary>IT consultant biết build. BTC viết rõ đội "vào vai chuyên gia tư vấn công nghệ" và cần hiểu nhu cầu kinh doanh, lựa chọn kỹ thuật có cơ sở, giải thích và chịu trách nhiệm về giải pháp. Việc kỹ thuật chỉ là điều kiện cần là suy luận của đội, không phải lời của BTC.</details>

**2. Case study đến khi nào, qua đâu, bằng ngôn ngữ gì?**
<details><summary>Đáp án</summary>Ngày 19/10, qua email, bằng tiếng Anh. BTC không công bố trước để bảo đảm công bằng.</details>

**3. Mỗi vòng nộp gì và hạn là ngày nào?**
<details><summary>Đáp án</summary>Vòng 1: proposal, 26/10. Vòng 2: MVP, 09/11, sau đó nộp AI Journal theo mẫu. Vòng 3: xử lý yêu cầu thay đổi, demo và thuyết trình, chung kết 21/11.</details>

**4. Tiêu chí chấm chính thức là gì?**
<details><summary>Đáp án</summary>Chưa công bố; BTC email trước mỗi vòng. Mọi bảng trọng số trong `kb/` là giả định và phải thay khi có email.</details>

**5. Trong 4 giờ đầu sau khi nhận case, đội không được làm gì?**
<details><summary>Đáp án</summary>Không viết mã, không bàn công nghệ. Trong 30 phút đầu mỗi người đọc case một mình và không dùng AI.</details>

**6. Bạn muốn làm một tính năng nhưng không gắn được nó với mã nào trong `scope/REQUIREMENTS.md` (`REQ`, `CRIT` hoặc `STD`). Làm gì?**
<details><summary>Đáp án</summary>Dừng. Ghi vào `scope/PARKING_LOT.md` và báo P1. Không làm. Ba loại mã: `REQ` là yêu cầu của case, `CRIT` là tiêu chí chấm chính thức, `STD` là chuẩn bắt buộc của đội như bộ ca thử AI và audit.</details>

**7. AI Journal ghi từ khi nào và phải có gì?**
<details><summary>Đáp án</summary>Từ ngày 19/10, mỗi ngày. Có prompt, kết quả, cách kiểm chứng, và cả những lần AI sai hoặc bị đội bác.</details>

**8. Có được dùng thư viện mã nguồn mở không?**
<details><summary>Đáp án</summary>Có, nếu tuân thủ giấy phép và nêu rõ phần nào do đội phát triển.</details>

**9. Khi thiếu thời gian, hai thứ nào không bao giờ bị cắt khỏi MVP?**
<details><summary>Đáp án</summary>Bước phê duyệt của con người kèm audit, và bộ ca thử AI.</details>

**10. Nội dung case có được đưa vào repo này không?**
<details><summary>Đáp án</summary>Không. Repo này công khai. Case, tiêu chí và giải pháp nằm ở workspace private.</details>
