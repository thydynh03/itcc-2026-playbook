# drift-check — đội có đang trôi khỏi đề và phạm vi không?

**Dùng khi:** mỗi tối trong vòng Build, và mỗi khi cảm thấy đang làm nhiều mà không tiến.

## Đọc

`STATUS.md`, `scope/PROBLEM_BRIEF.md`, `scope/SCOPE.md`, `scope/REQUIREMENTS.md`, `docs/memory/PROGRESS.md`. Xem lịch sử commit gần đây (`git log --oneline -30`) và danh sách file đã đổi; không đọc cả repo.

## Việc cần làm

1. **Việc ngoài phạm vi.** Commit, file hoặc màn hình nào không gắn với một `REQ` thuộc Must prove hoặc Should.
2. **Must prove chưa được chạm.** `REQ` Must prove nào chưa có commit, chưa có test, chưa có bước demo.
3. **Trôi khỏi bài toán.** So thứ đang được build với problem statement và người dùng chính trong `PROBLEM_BRIEF.md`. Sản phẩm còn giải đúng vấn đề đó cho đúng người đó không?
4. **Vi phạm cổng giai đoạn.** Có việc nào trái với giai đoạn trong `STATUS.md` không (ví dụ thêm tính năng trong thời gian đóng băng)?
5. **Nợ ghi chép.** Thư viện hoặc thay đổi kiến trúc nào chưa có mục trong `DECISIONS.md`; ngày nào chưa có mục AI Journal.
6. **Ngân sách thời gian.** Số ngày còn lại đến hạn nội bộ so với số Must prove chưa xong.

## Trả ra

```
Mức trôi: THẤP | TRUNG BÌNH | CAO
Làm ngoài phạm vi: <danh sách, kèm commit hoặc file>
Must prove chưa xong: <danh sách REQ>
Trôi khỏi bài toán: <có | không> — <giải thích>
Vi phạm giai đoạn: <danh sách>
Nợ ghi chép: <danh sách>
Đề xuất cho ngày mai: <tối đa 3 việc, mỗi việc gắn một REQ-ID>
Nên cắt: <mục nào trong thang cắt phạm vi, nếu thời gian không đủ>
```

## Ràng buộc

- Không sửa mã. Không tự xóa việc ngoài phạm vi; chỉ báo.
- Không bao giờ đề xuất cắt bước phê duyệt của con người, audit, hoặc bộ ca thử AI.
- Đề xuất cắt theo thứ tự: Nice → persona thứ hai → dashboard → loại đầu vào thứ hai → tự động thực thi.
