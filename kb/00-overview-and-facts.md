# 🏆 IT CONSULTANT CHALLENGE 2026 — CHAMPIONSHIP STRATEGY

> Tài liệu chiến lược của đội. Phiên bản 1.0 · soạn ngày 05/10/2026 · trạng thái: **trước khi nhận case**.
> Tài liệu này phải được cập nhật 3 lần: khi BTC email tiêu chí Vòng 1, Vòng 2, Vòng 3.

## Cách đọc nhãn

| Nhãn | Nghĩa |
|---|---|
| **[FACT]** | Thông tin chính thức, có nguồn (S1–S7 bên dưới) |
| **[INFERENCE]** | Suy luận chiến lược từ FACT; có thể sai |
| **[ASSUMPTION]** | Giả định để lập kế hoạch; phải kiểm chứng |
| **[UNKNOWN]** | BTC chưa công bố; không được coi là thật |

## Nguồn

| Mã | Nguồn | Cách đọc | Độ tin cậy |
|---|---|---|---|
| S1 | https://itconsultantchallenge.org/vi (trang chủ) | Đọc nguyên văn ngày 05/10/2026 | Cao |
| S2 | https://itconsultantchallenge.org/vi/faq | Đọc nguyên văn ngày 05/10/2026 | Cao |
| S3 | https://itconsultantchallenge.org/en | Qua công cụ trích xuất | Trung bình |
| S4 | https://github.com/mely-apps/landing-it-consulting (file `messages/en.json`, nội dung landing mùa 2025) | Qua công cụ trích xuất | Trung bình |
| S5 | https://netcompany.com/ | Qua công cụ trích xuất | Trung bình |
| S6 | https://netcompany.com/its-not-just-coding-its-creating-an-impact/ | Qua công cụ trích xuất | Trung bình |
| S7 | https://www.facebook.com/code.mely | Bị chặn đăng nhập; chỉ thấy tiêu đề một bài "TIMELINE IT CONSULTANT CHALLENGE 2026 - TỪ Ý TƯỞNG ĐẾN FINAL" | Không đọc được nội dung |

**Việc đội phải tự làm:** đọc thủ công các bài đăng trên Facebook Code MeLy và Netcompany Vietnam (recap 2024/2025, bài timeline 2026). Các bài này bị chặn đăng nhập nên chưa đọc được, và chưa tìm thấy thông tin công khai nào về đội thắng các mùa trước → mọi thứ về "đội thắng trước đây" là **[UNKNOWN]**.

## Bốn lưu ý khi đọc tài liệu này

1. **Đây không phải hackathon 24 giờ.** Mỗi vòng dài khoảng 5–7 ngày [FACT, S1]. Các checklist theo giờ (30 phút, 4 giờ, 8 giờ, 24 giờ) vẫn có trong tài liệu, nhưng được dùng cho *ngày đầu nhận case* và cho *số giờ làm việc thực còn lại*, không phải toàn bộ vòng.
2. **Trọng số chấm điểm chưa có.** BTC sẽ email tiêu chí trước mỗi vòng [FACT, S2]. Bộ trọng số ở Mục 17 là [ASSUMPTION] của đội; phải thay ngay khi có email.
3. **Không chọn idea trước khi có case.** Vòng 1 chấm ý tưởng "sáng tạo, khả thi và phù hợp nhất với bài toán" [FACT, S1]. Năm concept ở Mục 6 là *hình dạng giải pháp* để lắp vào case, không phải bài thi viết sẵn.
4. **Không có gì bảo đảm chức vô địch.** Tài liệu này tối ưu những gì kiểm soát được: quy trình, bằng chứng, độ sẵn sàng. Chất lượng đọc case và thực thi trong 5 tuần vẫn quyết định.

## Tóm tắt một trang

- Cuộc thi do một công ty tư vấn CNTT (Netcompany) đồng tổ chức, và cấu trúc 3 vòng mô phỏng một dự án khách hàng: **đề xuất → giao hàng → xử lý thay đổi và bảo vệ trước hội đồng** [FACT S1, S2; cách diễn giải là INFERENCE].
- Thứ được kiểm tra không phải "AI mạnh cỡ nào" mà là **khoảng cách giữa một demo do prompt sinh ra và một giải pháp có người chịu trách nhiệm**: hiểu, kiểm chứng, giải thích, bảo vệ [FACT S1, S2 về yêu cầu; INFERENCE về trọng tâm].
- Chiến lược thắng: **Proof over promise.** Mọi câu trên slide đều có một bằng chứng mở ra được: ma trận truy vết yêu cầu, bộ test AI có số đo, decision log, AI Journal có mục "AI sai và đội đã bác", bản đánh giá tác động change request.
- Giải pháp nên **hẹp và sâu**: một luồng nghiệp vụ chạy thật từ đầu đến cuối, AI chỉ ở những bước mà luật cứng không làm được, con người phê duyệt, mọi thứ có log.
- Lỗi lớn nhất có thể làm mất chức vô địch: **mang sẵn một ý tưởng AI rồi ép case khớp vào nó**, và nộp thứ mà chính đội không giải thích được.
- Việc gấp nhất: **đăng ký trước khi hết ngày 18/10/2026** bằng 3 email hợp lệ mà cả ba người đều kiểm tra hằng ngày [FACT S1, S2].


# 1. COMPETITION INTELLIGENCE

## 1.1 Fact base

| Hạng mục | Nội dung | Nhãn / nguồn |
|---|---|---|
| Chủ đề | "Prompt to Production" | FACT S1 |
| Đơn vị tổ chức | Code MeLy và Netcompany Vietnam | FACT S1 |
| Bản chất | Thi theo đội, vào vai IT Consultant để phân tích bài toán kinh doanh thực tế, đề xuất và xây dựng giải pháp công nghệ | FACT S1 |
| Đội | 3 thành viên; đổi thành viên được nếu báo BTC | FACT S1, S2 |
| Đối tượng | Sinh viên và người trẻ yêu công nghệ; trang chủ ghi "Tech students & IT freshers" | FACT S1, S2 |
| Tiếng Anh | Không bắt buộc, nhưng case study, thông tin chính thức và **slide thuyết trình bằng tiếng Anh** | FACT S2 |
| Hạn đăng ký | Hết ngày **18/10/2026** (giờ Việt Nam) | FACT S1 |
| Vòng 1 — Discover ("Idea Submission") | 19/10–26/10, nộp proposal online; hạn nộp 26/10 | FACT S1, S2 |
| Công bố kết quả Vòng 1 | 02/11 | FACT S1 |
| Vòng 2 — Build ("MVP Build-a-thon") | 02/11–09/11, phát triển và nộp MVP online; hạn nộp 09/11 | FACT S1, S2 |
| AI Journal | "Sau Vòng 2, đội phải nộp AI journal theo mẫu" | FACT S2 |
| Công bố kết quả Vòng 2 | 16/11 | FACT S1 |
| Vòng 3 — Deliver ("Pitching") | 16/11–21/11: xử lý yêu cầu thay đổi, hoàn thiện, thuyết trình | FACT S2 |
| Chung kết | 21/11 (thứ Bảy), trực tiếp tại văn phòng Netcompany TP.HCM cho đội ở TP.HCM, online cho đội nơi khác | FACT S1, S2 |
| Case study | Không công bố trước; gửi qua email khi Vòng 1 bắt đầu; "lấy cảm hứng từ dự án thực tế" | FACT S1, S2 |
| Loại đội | Loại trực tiếp; BTC quyết định số đội đi tiếp theo số lượng và chất lượng | FACT S2 |
| Tiêu chí chấm | "Trước mỗi vòng, Ban tổ chức sẽ email tiêu chí chấm" | FACT S2 |
| Mô tả chấm Vòng 1 | Tìm ý tưởng "sáng tạo, khả thi và phù hợp nhất với bài toán" | FACT S1 |
| Mô tả chấm Vòng 2 | Đánh giá "sản phẩm, năng lực kỹ thuật và cách giải quyết vấn đề" | FACT S1 |
| Yêu cầu MVP | Không cần hệ thống hoàn chỉnh; MVP thể hiện "chức năng cốt lõi, giá trị kinh doanh và tính khả thi" | FACT S2 |
| Mô tả Vòng 3 | Hoàn thiện giải pháp, demo, thuyết trình trực tiếp trước hội đồng giám khảo | FACT S1 |
| AI | Được khuyến khích dùng; phải "hiểu, kiểm chứng và chịu trách nhiệm cho toàn bộ bài nộp" | FACT S2 |
| Cách BTC nhìn AI | Đánh giá cao đội "sử dụng AI có kiểm soát, biết kiểm chứng nội dung do AI tạo và đánh giá tính khả thi"; đội phải "hiểu, giải thích và bảo vệ được toàn bộ bài làm"; "không nên sử dụng slide được tạo 100% bằng AI" | FACT S2 |
| Mã nguồn mở / template | Được dùng "nếu tuân thủ giấy phép và nêu rõ phần nào do đội phát triển" | FACT S2 |
| Công nghệ | Không giới hạn | FACT S1, S2 |
| Sửa bài sau hạn | Không, trừ khi BTC thông báo khác | FACT S2 |
| Giải thưởng | 60 / 30 / 15 triệu VNĐ (e-voucher Got It, chia đều); học bổng Engineer Pro cho Top 20, DuaEdu cho Top 10 và Top 5 | FACT S1, S2 |
| Sở hữu trí tuệ | Đội giữ quyền; BTC được dùng tóm tắt, slide, video demo, ảnh cho truyền thông | FACT S2 |
| Hỗ trợ | Trả lời email chính thức; báo sự cố nộp bài càng sớm càng tốt | FACT S2 |

## 1.2 Những gì chưa biết

| Hạng mục | Trạng thái | Cách chuẩn bị |
|---|---|---|
| Trọng số và tiêu chí chi tiết từng vòng | [UNKNOWN] — email trước mỗi vòng | Dựng bảng tự chấm có thể thay trọng số trong 10 phút (Mục 17) |
| Định dạng proposal (slide hay văn bản, số trang, ngôn ngữ) | [UNKNOWN] | Chuẩn bị cả khung 1 trang, 5 trang và deck 10 slide, bằng tiếng Anh |
| Định dạng nộp MVP (link deploy, repo, video) | [UNKNOWN] | Chuẩn bị sẵn cả bốn: URL chạy được, repo có README, video 3 phút, tài liệu kiến trúc |
| Mẫu AI Journal | [UNKNOWN] — BTC có mẫu riêng | Ghi log dạng "tập cha" từ ngày đầu (Mục 8) để ánh xạ sang mẫu của BTC |
| Nội dung và thời điểm của change request | [UNKNOWN] | Kiến trúc dễ đổi + diễn tập (Mục 11) |
| Thời lượng pitch, thời lượng Q&A, ngôn ngữ nói | [UNKNOWN] | Chuẩn bị bản 7 và 9 phút; demo 3/5/8 phút; tập cả tiếng Anh và tiếng Việt |
| Số đội qua từng vòng | [UNKNOWN]. [INFERENCE] các mốc học bổng Top 20 / Top 10 / Top 5 gợi ý phễu khoảng 20 đội vào Build và 5–10 đội vào chung kết | Đặt mục tiêu nội bộ: Vòng 1 phải nằm trong nhóm đầu, không phải "vừa đủ qua" |
| Thành phần giám khảo | [UNKNOWN]. [INFERENCE] người của Netcompany (consultant, architect, manager) và Code MeLy | Mục 2 |
| Giờ chốt nộp bài trong ngày hạn | [UNKNOWN] | Hạn nội bộ = tối hôm trước |
| Có được dùng code tự viết từ trước cuộc thi không | [UNKNOWN] — FAQ chỉ nói về mã nguồn mở và template | Gửi một email hỏi BTC ngay (Mục 21.3) |
| Có được làm tiếp trong các tuần chờ kết quả (27/10–01/11, 10/11–15/11) không | [UNKNOWN] — không thấy quy định cấm | Chỉ làm việc không phụ thuộc yêu cầu vòng sau; xem Mục 19 |
| Đội thắng và case các mùa trước | [UNKNOWN] — không tìm thấy nguồn công khai | Đội tự xem Facebook của BTC |

## 1.3 "Prompt to Production" thực sự kiểm tra gì

Trang chủ viết: "AI đang thay đổi cách phần mềm được tạo ra, nên Developer ngày nay cần nhiều hơn kỹ năng viết code. Bạn cần hiểu nhu cầu kinh doanh, biết cách làm việc hiệu quả với AI, đưa ra lựa chọn kỹ thuật có cơ sở và tự tin giải thích, chịu trách nhiệm về giải pháp mình xây dựng." [FACT S1]

Câu này liệt kê đúng bốn năng lực. Mỗi năng lực cần một bằng chứng nhìn thấy được:

| Năng lực BTC nêu [FACT] | Điều thật sự bị kiểm tra [INFERENCE] | Bằng chứng đội phải có |
|---|---|---|
| Hiểu nhu cầu kinh doanh | Đội có đọc ra vấn đề thật của khách hàng, hay chỉ thấy cơ hội gắn AI | Problem statement dùng lời của case; ma trận truy vết yêu cầu; danh sách câu hỏi làm rõ đã gửi BTC |
| Làm việc hiệu quả với AI | AI có làm đội nhanh hơn mà không làm đội ngu đi | AI Journal có cả mục chấp nhận, sửa, bác bỏ |
| Lựa chọn kỹ thuật có cơ sở | Mỗi công nghệ có lý do và có phương án bị loại | Decision log (ADR ngắn) |
| Giải thích và chịu trách nhiệm | Ai trong đội cũng mở được bất kỳ file nào và giải thích | Quy tắc "explain-back" trước khi merge; cả ba cùng trả lời Q&A |

**"Prompt"** là thứ ai cũng làm được trong một buổi chiều. **"Production"** là phần còn lại: xác thực đầu vào, xử lý khi AI sai, bảo mật dữ liệu, đo chi phí, log, kiểm thử, khả năng thay đổi. [INFERENCE] Đội thắng là đội cho thấy mình biết phần còn lại đó tồn tại và đã làm một lát mỏng của nó.

## 1.4 BTC tìm đội kiểu nào: Developer, Product Builder hay IT Consultant?

**IT Consultant biết build.** Tên cuộc thi, mô tả ("vào vai chuyên gia tư vấn công nghệ") và hành trình mà trang chủ mô tả đều nói vậy: "tìm hiểu bài toán kinh doanh, thiết kế giải pháp, xây dựng sản phẩm có thể hoạt động, điều chỉnh khi yêu cầu thay đổi và trình bày sản phẩm cuối cùng" [FACT S1].

| Vai | Hỏi câu gì | Đủ để thắng không [INFERENCE] |
|---|---|---|
| Developer | "Làm thế nào để build?" | Không. Kỹ thuật là điều kiện cần |
| Product Builder | "Người dùng muốn gì?" | Gần đủ, thiếu góc nhìn khách hàng doanh nghiệp: ràng buộc, rủi ro, chi phí, thay đổi |
| IT Consultant | "Khách hàng cần đạt kết quả gì, với ràng buộc nào, và tôi chịu trách nhiệm ra sao?" | Đây là vai được chấm |

Netcompany tự mô tả nghề tư vấn của họ là "It's not just coding. It's creating an impact", nhấn vào giao tiếp, hiểu mục tiêu khách hàng và làm việc nhóm đến mức "có thể làm thay việc của nhau" [S6, độ tin cậy trung bình]. [INFERENCE] Giám khảo sẽ tự hỏi: "Tôi có dám đưa ba người này vào phòng họp với khách hàng không?"

## 1.5 Vì sao cuộc thi nhấn mạnh từng yếu tố

| Yếu tố | Vì sao BTC quan tâm [INFERENCE] | Cách thể hiện |
|---|---|---|
| Business understanding | Dự án tư vấn thất bại vì giải sai bài toán nhiều hơn vì code tệ | Mở proposal bằng vấn đề của khách hàng, không bằng giải pháp |
| AI-assisted development | Đây là cách làm việc mới của ngành; BTC muốn tuyển người dùng AI thành thạo và tỉnh táo | AI Journal trung thực, có số liệu |
| Responsible AI | Khách hàng của công ty tư vấn (nhiều đơn vị công và ngành bị quản lý chặt [S5]) không chấp nhận AI không kiểm soát được. Netcompany viết: "Innovation only creates value when it is combined with control, security, and deep domain expertise" [S5] | Kiểm soát hiện ngay trên màn hình demo (Mục 7) |
| Technical decision making | Consultant bán sự phán đoán, không bán số dòng code | Mỗi quyết định có "vì", có phương án bị loại |
| MVP | Khách hàng trả tiền cho thứ chứng minh được giá trị sớm | Một luồng chạy thật, phần giả lập được ghi rõ là giả lập |
| Change request | Yêu cầu luôn đổi giữa dự án; cách phản ứng phân biệt junior và consultant | Bản đánh giá tác động trước khi code (Mục 11) |
| Final pitching | Consultant phải thuyết phục được ban lãnh đạo khách hàng | Pitch kể chuyện kinh doanh, demo là bằng chứng |

## 1.6 Phân tích ba vòng

### Vòng 1 — Discover (19/10–26/10)

| | |
|---|---|
| Objective | Được chọn. BTC lọc proposal để tìm ý tưởng "sáng tạo, khả thi và phù hợp nhất với bài toán" [FACT S1] |
| Deliverable | Proposal nộp online [FACT]; định dạng [UNKNOWN] |
| Hidden expectation [INFERENCE] | Người chấm đọc rất nhiều bài trong thời gian ngắn. Họ cần thấy trong trang đầu: đội hiểu đúng bài toán, giải pháp khớp case, phạm vi làm được. "Phù hợp nhất với bài toán" là tiêu chí dễ bị đánh giá thấp nhất |
| Common mistakes | Chép lại case rồi gắn chatbot; tính năng dàn trải; không nói giả định; không nói cái gì sẽ *không* làm; văn AI trơn tuột không có số liệu của case |
| Winning behavior | Gửi câu hỏi làm rõ cho BTC ngay ngày đầu; chọn một người dùng và một luồng; làm một spike kỹ thuật nhỏ cho phần rủi ro nhất và đưa kết quả thật vào proposal |
| Tối đa hóa điểm | Trang đầu là executive summary đọc trong 60 giây; mỗi yêu cầu của case được đánh số và ánh xạ sang giải pháp; có bảng giả định; có ảnh prototype thật |

### Vòng 2 — Build (02/11–09/11)

| | |
|---|---|
| Objective | Chứng minh ý tưởng là thật. BTC đánh giá "sản phẩm, năng lực kỹ thuật và cách giải quyết vấn đề" [FACT S1] |
| Deliverable | MVP nộp online; sau vòng nộp AI Journal theo mẫu [FACT S2] |
| Hidden expectation [INFERENCE] | Người chấm có thể chỉ có vài phút cho mỗi bài và có thể tự bấm thử. Sản phẩm phải chạy ngay, có dữ liệu mẫu, có đường đi rõ. "Cách giải quyết vấn đề" nghĩa là họ muốn thấy quá trình ra quyết định, không chỉ kết quả |
| Common mistakes | Nhiều màn hình, không màn nào chạy trọn; AI gọi được nhưng không ai đo chất lượng; giả lập mà không ghi chú; README trống; AI Journal viết bù vào đêm cuối |
| Winning behavior | Một luồng end-to-end chạy thật; bộ test AI có số; README "chấm chúng tôi trong 5 phút"; nói rõ cái gì thật, cái gì giả lập |
| Tối đa hóa điểm | Deploy công khai + tài khoản demo + dữ liệu seed + video 3 phút dự phòng; decision log; AI Journal ghi từ ngày đầu |

### Vòng 3 — Deliver (16/11–21/11)

| | |
|---|---|
| Objective | Khiến hội đồng nhớ đội là đội thắng. Gồm xử lý yêu cầu thay đổi, hoàn thiện, demo và thuyết trình [FACT S1, S2] |
| Deliverable | Giải pháp hoàn thiện, demo, pitch (slide tiếng Anh) [FACT S2]; thời lượng [UNKNOWN] |
| Hidden expectation [INFERENCE] | Change request là bài kiểm tra tư duy tư vấn: đội có phân tích tác động và đưa khuyến nghị, hay chỉ cắm đầu code. Q&A kiểm tra đội có thật sự sở hữu bài làm |
| Common mistakes | Coi change request là thêm tính năng; phá vỡ luồng đang chạy; pitch đọc tech stack; demo bấm lung tung; một người trả lời hết Q&A |
| Winning behavior | Trả lời change request như một consultant (hiểu, tác động, phương án, khuyến nghị); demo có kịch bản và phương án dự phòng; cả ba cùng trả lời |
| Tối đa hóa điểm | Một slide "How we handled the change" có số (số file đổi, số test hồi quy pass); mời giám khảo đưa input bất kỳ |

## 1.7 Các mùa trước và thay đổi format

| | Mùa 2025 [S4, độ tin cậy trung bình] | Mùa 2026 [FACT S1, S2] |
|---|---|---|
| Hình thức | Một ngày (thứ Bảy 25/10/2025) tại văn phòng Netcompany | 3 vòng trong 5 tuần; 2 vòng online |
| Đội | 4 người, có mentor hướng dẫn | 3 người; mentor [UNKNOWN] |
| Đối tượng | Sinh viên năm 2–4 ngành IT tại TP.HCM | Mở rộng; đội ngoài TP.HCM thi chung kết online |
| Sản phẩm | Phân tích từ góc nhìn kinh doanh và kỹ thuật, minh họa bằng system design | Proposal → MVP chạy được → demo và pitch |
| Mô tả giải | Ý tưởng "feasible, creative, and exemplary strong teamwork" | Vòng 1: "sáng tạo, khả thi và phù hợp nhất với bài toán" |

[INFERENCE] Ba điều rút ra:
1. "Khả thi" và "sáng tạo" xuất hiện ở cả hai mùa. Khả thi được nhắc trước hoặc ngang với sáng tạo. Đừng hy sinh khả thi để lấy độc đáo.
2. "Teamwork" từng là tiêu chí được gọi tên. Cả ba người phải hiện diện trong pitch và Q&A.
3. Mùa 2026 thêm phần build và AI. Rủi ro mới là đội sa vào build mà quên rằng gốc của cuộc thi vẫn là tư vấn.


