-- Do MySQL không thể quản lý một "bảng tạm" không tên. Mọi bảng dẫn xuất từ Subquery đều phải có danh tính.
-- Sửa: Thêm AS tên_bảng vào sau dấu ngoặc đơn của Subquery.

-- dùng AS
USE SS7;
SELECT SUM(total_spent)
FROM (
    SELECT student_id, SUM(amount) as total_spent
    FROM Payments
    GROUP BY student_id
    HAVING SUM(amount) > 10000000
) AS VIP_Table; -- Thêm Alias ở đây