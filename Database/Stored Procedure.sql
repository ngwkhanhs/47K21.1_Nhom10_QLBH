use Quanlybanhangcoffeehouse
go

-- MENU
create proc ThemMenu @MaMon int, @TenMon nvarchar(50), @Dongia numeric(15,0)
as
begin
	insert into MON values (@MaMon, @TenMon, @Dongia)
end
go

-- sửa menu
alter proc SuaMenu @MaMon int, @TenMon nvarchar(50), @Dongia numeric(15,0)
as
begin
	update MON 
	set MaMon = @MaMon, TenMon = @TenMon, Dongia = @Dongia
	where MaMon = @MaMon
end
go

select *
from MON
go

-- xóa menu
alter proc XoaMenu @MaMon int, @TenMon nvarchar(50), @Dongia numeric(15,0)
as
begin
	delete MON 
	where MaMon = @MaMon
end
go


--tạo thủ tục
--thêm 
create proc ThemNDH @ManND int, @TenND nvarchar(50), @Diachi varchar(50), @SDTND numeric(15,0)
as
begin 
	insert into NGUOIDATHANG values ( @ManND, @TenND, @Diachi, @SDTND)
end
go 
 
 --Sửa 
 create proc SuaNDH @ManND int, @TenND nvarchar(50), @Diachi varchar(50), @SDTND numeric(15,0)
 as
 begin 
	update NGUOIDATHANG
	Set MaND=@ManND, TenND=@TenND, Diachi= @Diachi, SDTND = @SDTND
	where MaND=@ManND 
end
go 
 -- Xóa 
create proc XoaNDH SuaNDH @ManND int, @TenND nvarchar(50), @Diachi varchar(50), @SDTND numeric(15,0)
as
begin 
	delete NGUOIDATHANG
	where MaND=@ManND OR TenND=@TenND OR  Diachi= @Diachi OR  SDTND = @SDTND
end
go 

-----------------------------------------------------
--tạo thủ tục Nhà cung cấp 
--thêm NCC
create proc ThemNCC @MaNCC int, @TenNCC nvarchar(50),@CS nvarchar(50), @SDTNCC numeric(15,0), @TenTK nvarchar(50), @SoTK varchar(50)
as
begin 
	insert into NHACUNGCAP values ( @MaNCC, @TenNCC,@CS, @SDTNCC, @TenTK, @SoTK )
end
go 
 
 --Sửa NCC 
 create proc SuaNCC @MaNCC int, @TenNCC nvarchar(50),@CS nvarchar(50), @SDTNCC numeric(15,0), @TenTK nvarchar(50), @SoTK varchar(50)
 as
 begin 
	update NHACUNGCAP
	Set MaNCC=@MaNCC, TenNCC=@TenNCC, CS= @CS, SDTNCC= @SDTNCC, TenTK = @TenTK, SoTK=@SoTK
	where MaNCC=@MaNCC 
end
go 

 -- Xóa NCC 
create proc XoaNCC @MaNCC int, @TenNCC nvarchar(50),@CS nvarchar(50), @SDTNCC numeric(15,0), @TenTK nvarchar(50), @SoTK varchar(50)
as
begin 
	delete NHACUNGCAP
	where MaNCC=@MaNCC or TenNCC=@TenNCC or  CS= @CS or  SDTNCC= @SDTNCC or TenTK = @TenTK or  SoTK=@SoTK
end
go
 
-------------------------------------------------------------------
--tạo thủ tục Hanghoa 
--thêm HH
create proc ThemHH @Mahang int,@Tenhang nvarchar(50) ,@Donvi nvarchar (50), @Dongia numeric(15,0), @Giamgia varchar (10)
as
begin 
	insert into HANGHOA values ( @Mahang,@Tenhang,@Donvi, @Dongia, @Giamgia)
end
go

 --Sửa HH
 create proc SuaHH @Mahang int,@Tenhang nvarchar(50) ,@Donvi nvarchar (50), @Dongia numeric(15,0), @Giamgia varchar (10)
 as
 begin 
	update HANGHOA
	Set Mahang=@Mahang, Tenhang=@Tenhang, Donvi= @Donvi, Dongia = @Dongia, Giamgia= @Giamgia
	where Mahang=@Mahang
end
go 
 -- Xóa HH
create proc XoaHH @Mahang int,@Tenhang nvarchar(50) ,@Donvi nvarchar (50), @Dongia numeric(15,0), @Giamgia varchar (10)
as
begin 
	delete HANGHOA 
	where Mahang=@Mahang or Tenhang=@Tenhang or Donvi= @Donvi or Dongia = @Dongia or Giamgia= @Giamgia
end
go 
-------------------------------------------------------------------------------------------------------------
--tạo thủ tục DAT
--thêm DAT
create proc ThemDAT @MaCT int, @MaND int ,@MaNCC int,@NgayCT date,@Tongtien numeric (15,0)
as
begin 
	insert into DAT values ( @MaCT, @MaND ,@MaNCC,@NgayCT,@Tongtien)
end
go 

 --Sửa DAT
 create proc SuaDAT @MaCT int, @MaND int ,@MaNCC int,@NgayCT date,@Tongtien numeric (15,0)
 as
 begin 
	update DAT
	Set MaCT=@MaCT, MaND=@MaND, MaNCC= @MaNCC, NgayCT=@NgayCT, Tongtien= @Tongtien
	where MaCT= @MaCT
end
go 
 -- Xóa DAT
alter proc XoaDAT @MaCT int, @MaND int ,@MaNCC int,@NgayCT date,@Tongtien numeric (15,0)
as
begin 
	delete DAT
	where MaCT=@MaCT
end
go 

-----------------------------------------------------------------
--tạo thủ tục ACCOUNT
--thêm Account 
create proc ThemAC @TenDN nvarchar (50),@SoHDX int, @MaCT int ,@Tenhienthi nvarchar (50),@Matkhau int,@Loai varchar (20)
as
begin 
	insert into ACCOUNT values (@TenDN,@SoHDX, @MaCT,@Tenhienthi,@Matkhau,@Loai)
end
go 

 --Sửa AC
 create proc SuaAC @TenDN nvarchar (50),@SoHDX int, @MaCT int ,@Tenhienthi nvarchar (50),@Matkhau int,@Loai varchar (20)
 as
 begin 
	update Account
	Set TenDN=@TenDN,SoHDX=@SoHDX, MaCT=@MaCT, Tenhienthi=@Tenhienthi, Matkhau=@Matkhau, Loai= @Loai
	where TenDN=@TenDN
end
go 

select * from Account

 -- Xóa AC
alter proc XoaAC @TenDN nvarchar (50),@SoHDX int, @MaCT int ,@Tenhienthi nvarchar (50),@Matkhau int,@Loai varchar (20)
as
begin 
	delete Account
	where TenDN=@TenDN
end
go 

-- Tạo thủ tục đăng nhập
alter proc DangNhap @tenDN nvarchar(50), @matKhau int, @ret int out
as
begin
	declare @count int
	select @count = COUNT(*)
	from Account
	where TenDN = @tenDN and Matkhau = @matKhau

	if @count = 0
	begin
		set @ret = 0
		return @ret
	end

	set @ret = 1
	return @ret
end
go

-- tạo thủ tục tạo đơn
create PROCEDURE ThemDonBanHangChiTiet
	@ban INT,
	@tenmon NVARCHAR(100),
	@soluong INT,
	@thanhtien MONEY
AS
BEGIN
	-- Kiểm tra bàn sử dụng hay chưa
	DECLARE @kiemtraban NVARCHAR(50), @maxsohdx INT, @newsohdx INT, @len INT, @mamon VARCHAR(50)
	SET @maxsohdx = (SELECT MAX(SoHDX) FROM Donbanhang_CHITIET)
	SET @newsohdx = @maxsohdx + 1
	
	SET @mamon = (SELECT DISTINCT MaMon FROM MON WHERE TenMon = @tenmon)
	SELECT @kiemtraban = tinhtrang FROM BAN WHERE SoBan = @ban

	-- Thêm đơn bán hàng
	INSERT INTO DonBanHang (SoHDX, SoBan, NgayBan, Tongtien)
	VALUES (@newsohdx, @ban, GETDATE(), @soluong * @thanhtien)
	IF @@ROWCOUNT = 0
	BEGIN
		PRINT N'Không thêm được đơn bán'
		RETURN
	END

	-- Tạo đơn bán hàng chi tiết
	INSERT INTO Donbanhang_CHITIET (SoHDX, MaMon, Soban, Soluong, Thanhtien)
	VALUES (@newsohdx, @mamon, @ban, @soluong, @thanhtien)
	IF @@ROWCOUNT = 0
	BEGIN
		PRINT N'Không thêm được đơn bán chi tiết'
		RETURN
	END

	-- Update bàn
	UPDATE BAN
	SET Tinhtrang = N'Có người'
	WHERE SoBan = @ban
END