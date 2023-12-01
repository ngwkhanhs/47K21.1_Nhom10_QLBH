Create database Quanlybanhangcoffeehouse
go

Use Quanlybanhangcoffeehouse

Drop database Quanlybanhangcoffeehouse
go


create table NGUOIDATHANG
(
	MaND int Not null,
	TenND Nvarchar (50) not null,
	Diachi nvarchar (50),
	SDTND varchar (13),
	primary key (MaND)
)
go
create table NHACUNGCAP
(
	MaNCC int not null,
	TenNCC nvarchar (50) not null,
	CS nvarchar (50),
	SDTNCC varchar (13),
	TenTk nvarchar (50),
	SOTk varchar (20),
	primary key (MaNCC)
)
go
create table DAT
(
	MaCT int not null,
	MaND int not null,
	MaNCC int not null,
	NgayCT date,
	Tongtien numeric (15,0) not null,
	primary key (MaCT),
	foreign key (MaND) references NGUOIDATHANG,
	foreign key (MaNCC) references NHACUNGCAP
)
go
create table HANGHOA
(
	Mahang int not null,
	Tenhang nvarchar (50) not null,
	Donvi nvarchar (50),
	Dongia numeric (15,0),
	Giamgia varchar (10),
	primary key (Mahang),
)
go

create table DAT_CHITIET
(
	MaCT int not null,
	Mahang int not null,
	Soluong int,
	Thanhtien numeric (15,0) not null,
	Primary key (MaCT,Mahang),
	Foreign key (MaCT) references DAT,
	foreign key (Mahang) references HANGHOA
)
go

create table Account 
(
	TenDN nvarchar (50) not null,
	SoHDX int not null,
	MaCT int not null,
	Tenhienthi nvarchar (50),
	Matkhau int not null,
	Loai varchar (20),
	primary key (TenDN),
	foreign key (SoHDX) references Donbanhang,
	foreign key (MaCT) references DAT

)
go
create table BAN
(
	SoBan int not null,
	Tinhtrang nvarchar (50) not null
	primary key (SoBan)
)
go
create table DonBanHang
(
	SoHDX int not null,
	SoBan int not null,
	NgayBan date,
	Tongtien numeric (15,0) not null,
	primary key (SoHDX),
	foreign key (SoBan) references BAN
)
go
create table MON
(
	MaMon int not null,
	TenMon nvarchar (50) not null,
	Dongia numeric (15,0),
	primary key (MaMon)
)
go
create table Donbanhang_CHITIET
(
	SoHDX int not null,
	MaMon int not null,
	Soban int not null,
	Soluong int,
	Thanhtien numeric (15,0) not null,
	primary key (SoHDX,MaMon,Soban),
	foreign key (SoHDX) references DonBanHang,
	foreign key (MaMon) references MON,
	foreign key (Soban) references BAN
)
go

insert into NGUOIDATHANG VALUES ('000001',N'Đàm Như Vũ',N'223 Lý Đạo Thành, Sơn Trà, Đà Nẵng','0703586018')
insert into NGUOIDATHANG VALUES ('000002',N'Trần Thị Linh Chi',N'156 Tô Hiến Thành, Sơn Trà, Nghệ An','0905767283')
insert into NGUOIDATHANG VALUES ('000003',N'Vũ Nhật Hạ',N'123 Nguyễn Tất Thành, Tuy Hòa, Phú Yên','0124356468')
insert into NGUOIDATHANG VALUES ('000004',N'Đàm Như Vũ',N'223 Lý Đạo Thành, Sơn Trà, Đà Nẵng','0703586018')
insert into NGUOIDATHANG VALUES ('000005',N'Nguyễn Khánh',N'123 Ngô Tất Tố,Thanh Kê, Đà Nẵng','0703586348')
insert into NGUOIDATHANG VALUES ('000006',N'Trần Khánh Tùng',N'135 Ngô Tất Tố,Thanh Kê, Đà Nẵng','0752346814')
insert into NGUOIDATHANG VALUES ('000007',N'Lê Phan Nhữ Lợi',N'Bình Kiến,Thành phố, Tuy Hòa, Phú Yên','06472754826')
insert into NGUOIDATHANG VALUES ('000008',N'Nguyễn Khánh Linh',N'100 Ngô Quyền,Thanh Kê, Đà Nẵng','0703646348')
insert into NGUOIDATHANG VALUES ('000009',N'Võ Thị Kim Loan',N'97 Trần Văn DƯ,Thanh Kê, Đà Nẵng','0703537448')
insert into NGUOIDATHANG VALUES ('000010',N'Hoàng Triều',N'67 trần văn dư,Ngũ Hành Sơn, Đà Nẵng','0704276348')

insert into NHACUNGCAP VALUES ('100131',N'TNHH Sông Hồng',N'Tuy Hòa','095367876',N'CHI NHANH SONG HONG','103873692879')
insert into NHACUNGCAP VALUES ('100132',N'TNHH Sông Mê Kong',N'NHa Trang','02465768319',N'CHI NHANH SONG ME KONG','559073275927')
insert into NHACUNGCAP VALUES ('100133',N'TNHH Sông Cửu Long',N'Bình Định','0947562718',N'CHI NHANH SONG CUU LONG','65637284619')
insert into NHACUNGCAP VALUES ('100134',N'TNHH CA BA SA',N'Tuy Hòa','0563614563',N'CHI NHANH CA BA SA','56372646582917')
insert into NHACUNGCAP VALUES ('100135',N'TNHH CA PHE CHON',N'Tây Nguyên','0975616476',N'CHI NHANH CA PHE CHON','6452648186496')
insert into NHACUNGCAP VALUES ('100136',N'TNHH CA PHE SON NGUYEN',N'Tây Nguyên','0975616654',N'CHI NHANH CA PHE SON NGUYEN','6452643756496')
insert into NHACUNGCAP VALUES ('100137',N'TNHH CA PHE CHON',N' Gia Lai','0865853675',N'CHI NHANH CA PHE CHON GIA LAI','6542648186496')
insert into NHACUNGCAP VALUES ('100138',N'TNHH Sông Amazon',N'','0975616476',N'CHI NHANH CA PHE CHON','645264786826496')
insert into NHACUNGCAP VALUES ('100139',N'TNHH CA PHE GAU TRUC',N'Hàn Quốc','09776575436',N'CHI NHANH CA PHE GAU TRUC','6452657546496')
insert into NHACUNGCAP VALUES ('100140',N'TNHH CA PHE Sông Đà Rằng',N'Phú Yên','0764316476',N'CHI NHANH CA PHE Song Đà Rằng','6487536186496')


insert into DAT VALUES ('1', '000001','100131' , '2023-11-01', 500000)
insert into DAT VALUES ('2','000002', '100132','2023-11-02', 750000)
insert into DAT VALUES ('3', '000003','100133' ,'2023-11-03', 1000000)
insert into DAT VALUES ('4', '000004','100134', '2023-11-04', 300000)
insert into DAT VALUES ('5', '000005', '100135','2023-11-05', 90000)
insert into DAT VALUES ('6','000006','100136', '2023-11-01', 500000)
insert into DAT VALUES (7, '00007', '100137', '2023-11-07', 1500000)
insert into DAT VALUES (8, '00008','100138' ,'2023-11-08', 1800000)
insert into DAT VALUES (9,'00009','100139', '2023-11-09', 2100000)
insert into DAT VALUES (10, '00010','100140', '2023-11-10', 2400000);




INSERT INTO HANGHOA(Mahang, Tenhang, Donvi, Dongia, Giamgia) VALUES
(1, N'Tên hàng 1', N'Cái', 500000, N'10%'),
(2, N'Tên hàng 2', N'Chiếc', 750000, N'5%'),
(3, N'Tên hàng 3', N'Bộ', 1000000, N'15%'),
(4, N'Tên hàng 4', N'Gói', 300000, N'8%'),
(5, N'Tên hàng 5', N'Hộp', 900000, N'12%'),
(6, N'Tên hàng 6', N'Túi', 120000, N'20%'),
(7, N'Tên hàng 7', N'Chai', 80000, N'6%'),
(8, N'Tên hàng 8', N'Lọ', 60000, N'4%'),
(9, N'Tên hàng 9', N'Thùng', 45000, N'3%'),
(10, N'Tên hàng 10', N'Bình', 55000, N'7%');





INSERT INTO DAT_CHITIET (MaCT, Mahang, Soluong, Thanhtien) VALUES 
(1, 1, 100, 34521),
(2, 2, 100, 5726746),
(3, 3, 100, 24822509),
(4, 4, 100, 13568),
(5, 5, 100, 17894),
(6, 6, 50, 12500),
(7, 7, 75, 18750),
(8, 8, 30, 9000),
(9, 9, 60, 18000),
(10, 10, 25, 13750);

INSERT INTO BAN (SoBan, Tinhtrang) VALUES
(1, N'Trống'),
(2, N'Có người'),
(3, N'Trống'),
(4, N'Trống'),
(5, N'Có người'),
(6, N'Trống'),
(7, N'Trống'),
(8, N'Có người'),
(9, N'Có người'),
(10, N'Trống');


INSERT INTO DonBanHang (SoHDX, SoBan, NgayBan, Tongtien) VALUES
(1, 1, '2023-11-01', 500000),
(2, 2, '2023-11-02', 750000),
(3, 3, '2023-11-03', 1000000),
(4, 4, '2023-11-04', 300000),
(5, 5, '2023-11-05', 900000),
(6, 6, '2023-11-06', 1200000),
(7, 7, '2023-11-07', 1500000),
(8, 8, '2023-11-08', 1800000),
(9, 9, '2023-11-09', 2100000),
(10, 10, '2023-11-10', 2400000);



INSERT INTO MON (MaMon, TenMon, Dongia) VALUES
(1, N'Cà phê sữa', 50000),
(2, N'Cà phê muối', 75000),
(3, N'Sâm bí đao', 100000),
(4, N'Trà sữa truyền thống', 30000),
(5, N'Nước chanh giã tay', 90000),
(6, N'Trà sữa kem béo', 120000),
(7, N'Trà sen vàng', 80000),
(8, N'Trà thạch đào', 60000),
(9, N'Trà thạch vải', 45000),
(10, N'Chanh đá xay', 55000),
(11, N'Dâu đá xay', 70000),
(12, N'Bạc xỉu đá', 95000),
(13, N'Trà thanh đào', 110000),
(14, N'Matcha đá xay', 40000),
(15, N'Trà tắc quốc đá viên', 85000);





INSERT INTO Donbanhang_CHITIET (SoHDX, MaMon, Soban, Soluong, Thanhtien) VALUES
(1, 1, 1, 2, 100000),
(1, 2, 1, 1, 75000),
(2, 3, 2, 3, 300000),
(3, 4, 3, 2, 60000),
(4, 5, 4, 1, 90000),
(5, 6, 5, 4, 480000),
(6, 7, 6, 2, 160000),
(7, 8, 7, 1, 60000),
(8, 9, 8, 3, 135000),
(9, 10, 9, 5, 275000),
(10, 1, 1, 2, 120000);


-- Thêm dữ liệu vào bảng Account
INSERT INTO Account (TenDN, SoHDX, MaCT, Tenhienthi, Matkhau, Loai) VALUES
('user1', 1, 1, N'User 1', 123456, 'Admin'),
('user2', 2, 2, N'User 2', 654321, 'User'),
('user3', 3, 3, N'User 3', 987654, 'User'),
('user4', 4, 4, N'User 4', 456789, 'Admin'),
('user5', 5, 5, N'User 5', 789012, 'User'),
('user6', 6, 6, N'User 6', 234567, 'Admin'),
('user7', 7, 7, N'User 7', 876543, 'User'),
('user8', 8, 8, N'User 8', 345678, 'User'),
('user9', 9, 9, N'User 9', 567890, 'Admin'),
('user10', 10, 10, N'User 10', 901234, 'User');





