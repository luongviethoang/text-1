USE Sinh_Vien_FPTAPTECH
Go
--tạo bảng sinh viên 
Create table student(
name varchar(90),
age int,
dateofbirth int,
)
GO
--sửa xóa dữ liệu cho bảng student
alter table student
drop column age
go
select * from student
--thêm khóa chính vào bảng student
alter table student
add studentID int identity
GO
--tạo bảng lớp học 
create table malop(
malophoc varchar(30),
tenlop varchar(40),
)
GO
--thêm thông tin vào bảng
insert into malop values(224,'TM')
GO
--check thông tin
select * from malop
--thêm ràng buộc cho student có khóa phụ bảng lớp học class
Alter table student
add constraint malopsv FOREIGN KEY REFERENCES malop(lophoc) 
go
--thêm mã lớp vào bảng student
insert into student values ('hung',29,22,'TM')
)
select * from student
select * from malop

