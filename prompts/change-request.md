# change-request — đánh giá tác động một yêu cầu thay đổi

**Dùng khi:** nhận yêu cầu thay đổi ở Vòng 3. Chạy **trước** khi sửa bất kỳ dòng mã nào.
**Đầu vào:** nguyên văn yêu cầu thay đổi (đã được ghi vào `case/CHANGE_REQUESTS.md` với mã `CR-xx`).

## Đọc

`case/CHANGE_REQUESTS.md`, `case/CASE.md`, `scope/SCOPE.md`, `scope/REQUIREMENTS.md`, `docs/memory/DECISIONS.md`. Tìm trong mã những phần bị chạm; không đọc cả repo.

## Việc cần làm

1. Viết lại yêu cầu bằng lời của đội. Nêu chỗ mơ hồ thành câu hỏi làm rõ để gửi BTC, mỗi câu kèm giả định mặc định.
2. Phân tích tác động theo tám chiều: kinh doanh · kiến trúc · UX · dữ liệu · AI (prompt, schema, ca thử) · kiểm thử · demo · pitch.
3. Chỉ ra phần **giữ nguyên**.
4. Đưa ba phương án: A làm trọn · B làm một lát chứng minh được hướng đi · C hoãn kèm cách xử lý tạm. Mỗi phương án: công sức ước lượng, rủi ro, mức đáp ứng yêu cầu.
5. Khuyến nghị một phương án, kèm lý do. Người quyết là cả đội.
6. Liệt kê `REQ` mới hoặc bị sửa, và test hồi quy phải chạy lại.

## Trả ra

Điền mẫu `templates/CHANGE_IMPACT_ASSESSMENT.md`, cộng với đoạn trả lời khách hàng bằng tiếng Anh theo sáu nhịp:
"We understand the request" → "business impact" → "what changes technically" → "what we keep unchanged" → "trade-offs" → "why we recommend this approach".

## Ràng buộc

- Không viết mã trong lượt này.
- Không nói "làm được" khi chưa nêu rủi ro với đường demo đang chạy.
- Thay đổi phạm vi chỉ có hiệu lực sau khi `scope/SCOPE.md` và `scope/REQUIREMENTS.md` được cập nhật và cả ba thành viên đồng ý.
- Nếu yêu cầu thay đổi mâu thuẫn với case gốc, nêu rõ; yêu cầu thay đổi mới hơn thì thắng, nhưng phải ghi lại.
