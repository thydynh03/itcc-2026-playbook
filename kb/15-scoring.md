# 17. CHAMPIONSHIP SCORE

## 17.1 Trọng số

Trọng số chính thức: **[UNKNOWN]** — BTC email trước mỗi vòng [FACT S2]. Bảng dưới dùng bộ trọng số tạm của đội, là **[ASSUMPTION]**. Thay ngay khi có tiêu chí thật; nhiều khả năng mỗi vòng một bộ khác nhau.

Những gì đã biết chắc về hướng chấm [FACT S1, S2]:
- Vòng 1: sáng tạo, khả thi, phù hợp với bài toán.
- Vòng 2: sản phẩm, năng lực kỹ thuật, cách giải quyết vấn đề; MVP thể hiện chức năng cốt lõi, giá trị kinh doanh, tính khả thi.
- Xuyên suốt: dùng AI có kiểm soát; hiểu, giải thích, bảo vệ được bài làm.

## 17.2 Thang chấm và điểm dự phóng

**Lưu ý trung thực:** chưa có case nên chưa có giải pháp thật để chấm. Điểm dưới chấm **kế hoạch** (Concept A thực thi theo tài liệu này), với hai cột: "thực thi tốt" và "thực thi đủ các điểm đóng khoảng trống". Đây là công cụ tự chấm, không phải dự đoán kết quả.

| Tiêu chí | Trọng số [ASSUMPTION] | Để đạt 9–10 cần có | Thực thi tốt | Mục tiêu |
|---|---:|---|---:|---:|
| Business Value | 20% | KPI chính + guardrail; công thức ROI có nhãn nguồn; số đo từ MVP; độ nhạy | 8.75 | 9.5 |
| Problem Understanding | 15% | Ma trận truy vết; câu hỏi làm rõ; insight riêng; bảng giả định | 9.5 | 9.5 |
| Innovation | 10% | Một góc nhìn mà đội khác không có, sinh ra từ case | 7.5 | 8.5 |
| AI Quality | 10% | Bộ ca thử, số đo, so sánh có và không AI | 9.0 | 9.0 |
| Technical Feasibility | 10% | Spike rủi ro số một; decision log; kế hoạch pilot | 9.0 | 9.0 |
| MVP Quality | 10% | Luồng end-to-end không lỗi; ca biên; phần giả lập có nhãn | 8.5 | 9.0 |
| Responsible AI | 10% | Lớp kiểm soát hiện trong demo | 9.5 | 9.5 |
| UX | 5% | Ít bước hơn cách cũ; trạng thái rỗng / lỗi | 8.0 | 9.0 |
| Demo | 5% | Kịch bản, số đo, dự phòng | 9.0 | 9.0 |
| Pitch and Q&A | 5% | Đúng giờ; trả lời bằng bằng chứng; cả ba cùng nói | 9.0 | 9.0 |
| **Tổng** | **100%** | | **88.25** | **91.75** |

Cách tính cột "Thực thi tốt": 0.20×8.75 + 0.15×9.5 + 0.10×(7.5 + 9.0 + 9.0 + 8.5 + 9.5) + 0.05×(8.0 + 9.0 + 9.0) = 1.75 + 1.425 + 4.35 + 1.30 = **8.825 → 88.25/100**.

## 17.3 Đang dưới 90 — chính xác cần cải thiện gì

| Khoảng trống | Điểm thêm | Việc cụ thể |
|---|---:|---|
| Business Value 8.75 → 9.5 | +1.5 | Lấy số baseline từ chính case (không tự đặt); đo thời gian xử lý trước/sau bằng đồng hồ trên 10 ca; thêm phân tích độ nhạy và chi phí thay đổi; một KPI guardrail |
| Innovation 7.5 → 8.5 | +1.0 | Dành riêng 2 giờ ở ngày 2 Vòng 1 để tìm insight: điều gì trong case mà đọc lướt sẽ bỏ qua? Nếu sau 2 giờ không có, xét lại việc chọn Concept A |
| MVP Quality 8.5 → 9.0 | +0.5 | Đóng băng tính năng 48 giờ trước hạn; chạy đường demo 5 lần liên tiếp không lỗi; trạng thái lỗi trên mọi màn hình |
| UX 8.0 → 9.0 | +0.5 | Thử với 3 người ngoài đội, quan sát không giải thích; đếm số bước; sửa 3 chỗ vướng nhất |
| **Tổng** | **+3.5** | **88.25 → 91.75** |

**Hai chiều dễ tụt nhất nếu chủ quan:** Problem Understanding (nếu bỏ qua ma trận truy vết, rơi về 7.5, mất 3 điểm) và AI Quality (nếu không có bộ ca thử, rơi về 6.5, mất 2.5 điểm). Hai thứ này rẻ hơn nhiều so với số điểm chúng giữ.

## 17.4 Cách dùng trong cuộc thi

- Ngày nhận tiêu chí mỗi vòng: thay trọng số, viết lại cột "để đạt 9–10 cần có" bằng lời của BTC.
- Giữa vòng và 48 giờ trước hạn: ba thành viên chấm độc lập, Judge Agent chấm; chỗ lệch nhau nhiều nhất là chỗ cần bàn.
- Mỗi điểm dưới 8 phải có một việc cụ thể, một người phụ trách, một hạn.


