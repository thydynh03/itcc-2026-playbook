# 11. CHANGE REQUEST STRATEGY — War Room

Vòng 3 gồm "xử lý yêu cầu thay đổi, hoàn thiện và thuyết trình" [FACT S2]. Nội dung, thời điểm và số lượng change request là [UNKNOWN]. Trang chủ gọi đây là một bước của nghề: "điều chỉnh khi yêu cầu thay đổi" [FACT S1]. [INFERENCE] Đây là phần ít đội chuẩn bị nhất và là nơi dễ tạo khoảng cách nhất.

## 11.1 Tư duy

Đội code hỏi: "Thêm cái này mất bao lâu?"
Consultant hỏi: "Vì sao khách hàng cần điều này bây giờ, nó ảnh hưởng gì, và tôi khuyến nghị cách nào?"

Một consultant giỏi không tự động nói "vâng". Họ hiểu, định lượng, đưa phương án, khuyến nghị, rồi làm đúng điều đã thống nhất.

## 11.2 Chuẩn bị trước khi biết change request

**Kiến trúc dễ đổi** (làm từ Vòng 2):
- Danh mục, ngưỡng, quy tắc nghiệp vụ, mẫu văn bản nằm trong cấu hình hoặc bảng dữ liệu.
- Prompt là file có phiên bản, không nằm rải trong code.
- Model đi qua gateway.
- Luồng xử lý là chuỗi bước độc lập; thêm một bước không phải sửa bước khác.
- Vai trò và quyền là dữ liệu.
- Bộ test hồi quy chạy trong một lệnh: unit test + bộ ca thử AI + kịch bản end-to-end đường demo.

**Các loại change request có thể gặp** [INFERENCE — dựa trên những gì thường xảy ra trong dự án, không phải thông tin từ BTC]:

| Loại | Ví dụ | Phần bị chạm |
|---|---|---|
| Thêm người dùng hoặc vai trò | "Quản lý cần duyệt cấp hai" | Quyền, luồng phê duyệt |
| Ràng buộc mới về dữ liệu | "Dữ liệu không được gửi ra ngoài tổ chức" | Gateway, che dữ liệu, model tự vận hành |
| Kênh hoặc loại đầu vào mới | "Hỗ trợ thêm ảnh chụp / tiếng Việt" | Bước tiếp nhận, bộ ca thử |
| Quy tắc nghiệp vụ đổi | "Ngưỡng ưu tiên thay đổi" | Cấu hình, ca thử |
| Tích hợp | "Phải xuất sang hệ thống X" | Adapter |
| Cắt ngân sách hoặc thời gian | "Chi phí vận hành phải giảm một nửa" | Định tuyến model, cache |
| Yêu cầu báo cáo | "Ban lãnh đạo cần chỉ số Y" | Dashboard, log |
| Đổi ưu tiên | "Tập trung vào nhóm khách hàng khác" | Dữ liệu seed, nội dung, có thể cả persona |

Diễn tập 2 lần trong tuần 10–15/11: một người đóng vai khách hàng, rút ngẫu nhiên một loại, đội có 90 phút để ra bản đánh giá tác động và 1 ngày để hiện thực.

## 11.3 Quy trình

```
CHANGE REQUEST
 → Hiểu (đọc lại 2 lần; viết lại bằng lời của đội; hỏi làm rõ)
 → Impact analysis (business / architecture / UX / data / AI / test / demo / pitch)
 → Priority (bắt buộc cho chung kết? làm một phần được không?)
 → Risk (cái gì có thể vỡ)
 → Options A / B / C + khuyến nghị
 → Implementation (nhánh riêng, cờ tính năng)
 → Regression test
 → Demo (đưa thay đổi vào câu chuyện)
```

| Bước | Thời lượng gợi ý | Người chính | Sản phẩm |
|---|---|---|---|
| Hiểu | 30 phút | P1 | Một câu diễn giải + câu hỏi làm rõ gửi BTC |
| Đánh giá tác động | 60 phút | P2 (kỹ thuật), P1 (kinh doanh), P3 (công sức) | Change Impact Assessment một trang |
| Phương án và khuyến nghị | 30 phút | Cả đội | Ba phương án, chọn một |
| Hiện thực | Tùy | P3 + P2 | Nhánh riêng, commit nhỏ |
| Hồi quy | Mỗi lần merge | P3 | Kết quả test |
| Đưa vào demo và pitch | 60 phút | P1 | Một nhịp demo + một slide |

## 11.4 Change Impact Assessment — mẫu một trang

| Mục | Nội dung |
|---|---|
| CR ID, ngày nhận | CR-01 |
| Yêu cầu (nguyên văn) | … |
| Chúng tôi hiểu là | … |
| Lý do kinh doanh (suy đoán, cần xác nhận) | … |
| Câu hỏi làm rõ | 1… 2… |
| Tác động kinh doanh | KPI nào đổi, người dùng nào bị ảnh hưởng |
| Tác động kiến trúc | Khối nào đổi, khối nào giữ |
| Tác động UX | Màn hình nào đổi, thêm mấy bước |
| Tác động dữ liệu | Bảng, trường, di trú dữ liệu |
| Tác động AI | Prompt, schema, ca thử mới, chất lượng có đổi không |
| Rủi ro | Cái gì có thể vỡ; cách phát hiện |
| Phương án A / B / C | Mô tả, công sức, rủi ro, phạm vi đáp ứng |
| Khuyến nghị | Chọn gì, vì sao |
| Phần giữ nguyên | … |
| Kế hoạch kiểm thử hồi quy | Test nào chạy lại |
| Hoãn sang giai đoạn sau | Cái gì, vì sao, khi nào |

## 11.5 Ba cách trả lời hợp lệ

1. **Làm trọn** khi thay đổi nhỏ và giá trị rõ.
2. **Làm một lát** khi thay đổi lớn: hiện thực phần chứng minh được hướng đi, phần còn lại vào lộ trình có ước lượng.
3. **Khuyến nghị hoãn** khi thay đổi phá vỡ thứ đang chạy mà giá trị không tương xứng: phải có lý do, có phương án thay thế, và vẫn cho thấy một bản phác thảo.

Không bao giờ: lờ đi, làm ẩu rồi phá đường demo, hoặc nói "không làm được" mà không có phương án.

## 11.6 Mẫu trả lời (nói hoặc viết, tiếng Anh)

> **"We understand the request."**
> "You asked for [X]. We read this as: [restatement], because [business reason]. We confirmed two points with you: [Q1], [Q2]."
>
> **"Here is the business impact."**
> "It affects [user group] and moves [KPI]. It does not change the core value: [primary KPI]."
>
> **"Here is what changes technically."**
> "[n] parts change: [module A], [config B], [prompt C]. We added [k] test cases for it."
>
> **"Here is what we keep unchanged."**
> "The intake, approval and audit flows are untouched. All [m] existing regression tests still pass."
>
> **"Here are the trade-offs."**
> "Option A: full scope, [effort], risk to [area]. Option B: [slice], [effort], covers [x]% of the need. Option C: defer, with [workaround]."
>
> **"Here is why we recommend this approach."**
> "We recommend B: it delivers [value] now, keeps the solution stable for go-live, and leaves a clear path to A in phase 2. What you see in the demo today is B, running."


