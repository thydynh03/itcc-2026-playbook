# ITCC 2026 Playbook

Kho kiến thức, luật và prompt của đội cho **IT Consultant Challenge 2026 — "Prompt to Production"** (Code MeLy và Netcompany Vietnam tổ chức).

Mục đích: mỗi thành viên clone về là hiểu cuộc thi trong 30 phút, và mọi công cụ AI họ dùng đều bị ràng vào đề bài và phạm vi đã chốt.

> **Repo này công khai.** Không bao giờ commit vào đây: nội dung case study, tiêu chí chấm BTC gửi qua email, giải pháp của đội, khóa bí mật, dữ liệu cá nhân. Những thứ đó nằm ở workspace private (xem "Khi nhận case").

## Cuộc thi trong 60 giây

| | |
|---|---|
| Vai được chấm | IT Consultant biết build: hiểu bài toán kinh doanh, dùng AI có kiểm soát, quyết định kỹ thuật có cơ sở, giải thích và chịu trách nhiệm |
| Đề bài | Một case study do BTC gửi qua email ngày 19/10, bằng tiếng Anh. Đội không tự chọn đề tài |
| Hạn đăng ký | Hết ngày 18/10/2026 |
| Vòng 1 — Discover | 19/10–26/10 · nộp proposal |
| Vòng 2 — Build | 02/11–09/11 · nộp MVP, sau đó nộp AI Journal theo mẫu |
| Vòng 3 — Deliver | 16/11–21/11 · xử lý yêu cầu thay đổi, demo, thuyết trình (slide tiếng Anh) |
| Tiêu chí chấm | Chưa công bố. BTC email trước mỗi vòng |

Chi tiết và nguồn: [kb/00-overview-and-facts.md](kb/00-overview-and-facts.md). Nguồn chính thức: https://itconsultantchallenge.org/vi và https://itconsultantchallenge.org/vi/faq (đọc ngày 05/10/2026).

## Repo có gì

| Thư mục / file | Nội dung |
|---|---|
| [START_HERE.md](START_HERE.md) | Lộ trình đọc 30 phút và 10 câu tự kiểm tra |
| [kb/](kb/INDEX.md) | Kiến thức: cuộc thi, giám khảo, khung xử lý case, MVP, demo, pitch, Q&A, playbook từng vòng |
| [prompts/](prompts/) | 11 prompt dùng với mọi công cụ AI |
| [AGENTS.md](AGENTS.md) | Luật cho AI khi làm việc trong repo này |
| [workspace-template/](workspace-template/) | Khung repo làm việc private: luật phạm vi, `case/`, `scope/`, nhật ký |
| [templates/](templates/) | Mẫu proposal, đánh giá tác động thay đổi, README cho người chấm |
| [scripts/](scripts/) | Lệnh tạo workspace |

## Bắt đầu

```bash
git clone https://github.com/thydynh03/itcc-2026-playbook.git
```

1. Đọc [START_HERE.md](START_HERE.md) và làm 10 câu tự kiểm tra.
2. Mở thư mục bằng công cụ AI của bạn và chạy prompt `onboard`.
3. Chưa có case thì chỉ học và luyện tập. Không đoán đề.

## Dùng với từng công cụ AI

| Công cụ | Luật được nạp từ | Cách chạy một prompt |
|---|---|---|
| Claude Code | `CLAUDE.md` (import `AGENTS.md`) | `/scope-check <việc định làm>` |
| Codex | `AGENTS.md` | "Làm theo `prompts/scope-check.md` cho việc: …" |
| Antigravity | `AGENTS.md` | `/scope-check` (workflow trong `.agents/workflows/`), hoặc như Codex |

Nếu công cụ không tự nạp luật, câu đầu tiên của phiên là: "Đọc `AGENTS.md` và tuân theo."

## Khi nhận case (19/10)

Một người trong đội tạo workspace private, hai người còn lại clone nó:

```bash
bash scripts/new-workspace.sh ../itcc-2026-workspace
```

Lệnh này chép luật phạm vi, prompt, mẫu và khung `case/`, `scope/`, `docs/memory/` sang thư mục mới và khởi tạo git. Sau đó đẩy lên một repo **private**. Từ lúc đó, mọi việc thi diễn ra trong workspace, theo `AGENTS.md` của workspace.

## Năm nguyên tắc

1. **Hiểu trước, giải sau.** Bốn giờ đầu sau khi nhận case không viết mã.
2. **Đề bài chỉ nằm trong `case/`.** Không suy diễn từ trí nhớ.
3. **Không có mã yêu cầu `REQ-xx` thì không làm.**
4. **Build less, prove more.** Một luồng chạy trọn, có số đo.
5. **Proof over promise.** Mỗi tuyên bố có một bằng chứng mở ra được.

## Nhãn dùng trong tài liệu

`FACT` thông tin chính thức có nguồn · `INFERENCE` suy luận chiến lược · `ASSUMPTION` giả định cần kiểm chứng · `UNKNOWN` BTC chưa công bố.

Phần lớn nội dung trong `kb/` là suy luận chiến lược của đội, không phải thông tin từ BTC. Khi tiêu chí chính thức khác với `kb/`, tiêu chí chính thức thắng.
