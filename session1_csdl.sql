-- tạo csdl 
CReATE database FirSt_DB;
-- xóa CSDL 
-- DROP DATABASE FirSt_DB; -- CTRL+ Enter
-- chọn database
use FirSt_DB;

-- tạo bảng 
create table ClassName(
id int primary key,
name varchar(50) unique
);

create table Student(
id int auto_increment,
name varchar(100),
age int check(age >= 15),
gen bit default 1,
className_id int, -- khóa ngoại
primary key(id),
foreign key(classname_id) references ClassName(id)
);

-- Alter table Classname
-- add constraint index_name unique index(name,age);


--  thêm mới 1 hoặc nhiều bản ghi vào bảng 
insert into classname values (1,'11A1'),
(2,'11A2'); 
insert into classname(id,name) values (4,'11A4'); 


insert into student( name,age,gen,className_id) value
('Nguyễn Văn A',18,1, 1),
('Nguyễn Văn B',22,0, 1),
('Nguyễn Văn C',21,0, 2),
('Nguyễn Văn D',19,0, 2)
;
-- truy vấn dữ liệu của 1 bảng 
select * from classname;
select * from student ;
select s.id,s.name,s.age,s.gen,c.name from student s inner join classname c on s.classname_id = c.id;

-- các câu lệnh DDL 
-- câu lệnh thêm mới dữ liệu
-- insert into [tên bảng] (column1, column2,...) value (value1, value2 ,...),(),();
-- cập nhật dữ liệu 
update student set gen = 1,age = 20 where id = 4;
-- xóa dữ liệu 
delete from student where id = 5;
-- truy vấn dữ liệu 
Select id, name, age from student where age>20;